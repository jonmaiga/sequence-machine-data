import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A045100: Numbers whose base-4 representation contains exactly three 1's and no 2's.

The programs for A045100, there is no canonical definition to state claims against.
-/

/-! ## A045100.P5188448235269105198

`3*A045124(n+1)-A045088(n+1)`
-/

namespace A045100.P5188448235269105198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045124 (n + 1) - A045088 (n + 1)

end

end A045100.P5188448235269105198

/-! ## A045100.P2085322449000852000

`A023713(A023694(n+1)+1)`
-/

namespace A045100.P2085322449000852000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023694 (n + 1) + 1).toNat

end

end A045100.P2085322449000852000

/-! ## A045100.P4484019348965001832

`∩[A023713(n+1), A180963(n+1)]`
-/

namespace A045100.P4484019348965001832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045100.P4484019348965001832

/-! ## A045100.P6761089131055099134

`∩[A023712(n+1), A023713(n+1)]`
-/

namespace A045100.P6761089131055099134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045100.P6761089131055099134

/-! ## A045100.P7393942368779629344

`∩[A023712(n+1), A180963(n+1)]`
-/

namespace A045100.P7393942368779629344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045100.P7393942368779629344

/-! ## A045100.P9651566098522529982

`A057300(A045088(n+1))`
-/

namespace A045100.P9651566098522529982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045088 (n + 1)).toNat

end

end A045100.P9651566098522529982

/-! ## A045100.P4969023310271751404

`A163241(A045124(n+1))`
-/

namespace A045100.P4969023310271751404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045124 (n + 1)).toNat

end

end A045100.P4969023310271751404

/-! ## A045100.P3752959240447597223

`record[A163241(A023712(n+1))]`
-/

namespace A045100.P3752959240447597223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A023712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045100.P3752959240447597223

/-! ## A045100.P17254192340889324143

`eq[exp(A160382(n))+2, A160381(n)]`
-/

namespace A045100.P17254192340889324143
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160382 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045100.P17254192340889324143

/-! ## A045100.P128668372321296965

`filter[A023713(2*(n+1)), A079978(#)]`
-/

namespace A045100.P128668372321296965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A045100.P128668372321296965

/-! ## A045100.P14514169979406744619

`record[A035327(A035327(A045105(n+1)))]`
-/

namespace A045100.P14514169979406744619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 (A045105 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045100.P14514169979406744619

/-!
# A045101: Numbers whose base-4 representation contains exactly three 1's and one 2.

The programs for A045101, there is no canonical definition to state claims against.
-/

/-! ## A045101.P10208682855047953568

`∩[A023712(n+1), A023714(n+1)]`
-/

namespace A045101.P10208682855047953568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045101.P10208682855047953568

/-! ## A045101.P3053535896572570484

`∩[A023712(n+1), A026488(n+1)+1]`
-/

namespace A045101.P3053535896572570484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045101.P3053535896572570484

/-! ## A045101.P3256641280879621980

`record[A054576(A045102(n+1)-2)]`
-/

namespace A045101.P3256641280879621980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045102 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045101.P3256641280879621980

/-! ## A045101.P7240321919712116612

`record[A054576(xor(2, A045102(n+1)))]`
-/

namespace A045101.P7240321919712116612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.xor 2 (A045102 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045101.P7240321919712116612

/-! ## A045101.P1840820672696742375

`eq[A090368(A090771(n+1)), A160381(n)]`
-/

namespace A045101.P1840820672696742375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A090771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045101.P1840820672696742375

/-! ## A045101.P3338918045282997957

`eq[A020639(A139264(n+1)), A160381(n)]`
-/

namespace A045101.P3338918045282997957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139264 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045101.P3338918045282997957

/-!
# A045102: Numbers whose base-4 representation contains exactly three 1's and two 2's.

The programs for A045102, there is no canonical definition to state claims against.
-/

/-! ## A045102.P3025725939297280725

`∩[A023712(n+1), A023715(n+1)]`
-/

namespace A045102.P3025725939297280725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045102.P3025725939297280725

/-! ## A045102.P7165467939002339076

`eq[A007090(A090368(n+1)), A160381(n)]`
-/

namespace A045102.P7165467939002339076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A090368 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045102.P7165467939002339076

/-! ## A045102.P1562990859276133644

`∩[A023712(n+1), A026488(n+1)]`
-/

namespace A045102.P1562990859276133644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045102.P1562990859276133644

/-! ## A045102.P15756799209580481286

`record[A054576(A045103(n+1)-2)]`
-/

namespace A045102.P15756799209580481286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045103 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045102.P15756799209580481286

/-! ## A045102.P13775388952465263724

`record[A054576(xor(2, A045103(n+1)))]`
-/

namespace A045102.P13775388952465263724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.xor 2 (A045103 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045102.P13775388952465263724

/-!
# A045103: Numbers whose base-4 representation contains exactly three 1's and three 2's.

The programs for A045103, there is no canonical definition to state claims against.
-/

/-! ## A045103.P88129988085746781

`∩[A023712(n+1), A023716(n+1)]`
-/

namespace A045103.P88129988085746781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045103.P88129988085746781

/-! ## A045103.P16797979273550532198

`A303787(A045232(n+1))`
-/

namespace A045103.P16797979273550532198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045232 (n + 1)).toNat

end

end A045103.P16797979273550532198

/-! ## A045103.P8410868255540747423

`A372358(A045080(n+1))`
-/

namespace A045103.P8410868255540747423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372358 (A045080 (n + 1)).toNat

end

end A045103.P8410868255540747423

/-! ## A045103.P13234371776895118514

`record[A053645(A045108(n+1))]`
-/

namespace A045103.P13234371776895118514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A045108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045103.P13234371776895118514

/-! ## A045103.P14307822547438543647

`∩[A045016(n+1), A045148(n+1)]`
-/

namespace A045103.P14307822547438543647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045103.P14307822547438543647

/-!
# A045104: Numbers whose base-4 representation contains exactly three 1's and four 2's.

The programs for A045104, there is no canonical definition to state claims against.
-/

/-! ## A045104.P6508888017938982483

`A004468(A045152(n+1))`
-/

namespace A045104.P6508888017938982483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045152 (n + 1)).toNat

end

end A045104.P6508888017938982483

/-! ## A045104.P1703763021086618857

`A163916(A045128(n+1))`
-/

namespace A045104.P1703763021086618857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A045128 (n + 1)).toNat

end

end A045104.P1703763021086618857

/-! ## A045104.P4471140092472004935

`and(A004468(A045128(n+1)), A045109(n+1))`
-/

namespace A045104.P4471140092472004935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004468 (A045128 (n + 1)).toNat) (A045109 (n + 1))

end

end A045104.P4471140092472004935

/-! ## A045104.P4435170684587313863

`∩[A023689(n+1), A023717(A023694(n+1))]`
-/

namespace A045104.P4435170684587313863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023694 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045104.P4435170684587313863

/-! ## A045104.P4247488396227915704

`A163241(or(1, A045128(n+1)))`
-/

namespace A045104.P4247488396227915704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (Int.lor 1 (A045128 (n + 1))).toNat

end

end A045104.P4247488396227915704

/-!
# A045105: Numbers whose base-4 representation contains exactly four 1's and no 2's.

The programs for A045105, there is no canonical definition to state claims against.
-/

/-! ## A045105.P725965303488042724

`3*A045129(n+1)-A045089(n+1)`
-/

namespace A045105.P725965303488042724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045129 (n + 1) - A045089 (n + 1)

end

end A045105.P725965303488042724

/-! ## A045105.P1395145980249918770

`A023713(A023695(n+1)+1)`
-/

namespace A045105.P1395145980249918770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023695 (n + 1) + 1).toNat

end

end A045105.P1395145980249918770

/-! ## A045105.P11461428975386549350

`∩[A023713(n+1), A043340(n+1)]`
-/

namespace A045105.P11461428975386549350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045105.P11461428975386549350

/-! ## A045105.P12833969820299460495

`∩[A023713(n+1), A180963(n+1)+1]`
-/

namespace A045105.P12833969820299460495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045105.P12833969820299460495

/-! ## A045105.P14536144801601042208

`A057300(A045089(n+1))`
-/

namespace A045105.P14536144801601042208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045089 (n + 1)).toNat

end

end A045105.P14536144801601042208

/-! ## A045105.P17211366547155318063

`A163241(A045129(n+1))`
-/

namespace A045105.P17211366547155318063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045129 (n + 1)).toNat

end

end A045105.P17211366547155318063

/-! ## A045105.P6726637859109528892

`record[A163241(A043340(n+1))]`
-/

namespace A045105.P6726637859109528892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A043340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045105.P6726637859109528892

/-! ## A045105.P5201677308892676945

`∩[A026488(n+1), A043340(n+1)]`
-/

namespace A045105.P5201677308892676945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045105.P5201677308892676945

/-!
# A045106: Numbers whose base-4 representation contains exactly four 1's and one 2.

The programs for A045106, there is no canonical definition to state claims against.
-/

/-! ## A045106.P12402669702916591091

`∩[A043340(n+1), A180963(n+1)]`
-/

namespace A045106.P12402669702916591091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045106.P12402669702916591091

/-! ## A045106.P1606553588426159952

`filter[A043340(n+1), A079978(#)]`
-/

namespace A045106.P1606553588426159952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A045106.P1606553588426159952

/-! ## A045106.P10884400759272852565

`filter[A043340(n+1), A173857(#)]`
-/

namespace A045106.P10884400759272852565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A045106.P10884400759272852565

/-! ## A045106.P7800168907352025335

`filter[A043340(n+1), A329680(#)]`
-/

namespace A045106.P7800168907352025335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A045106.P7800168907352025335

/-! ## A045106.P7898156520107382789

`∩[A026488(n+1)-1, A043340(n+1)]`
-/

namespace A045106.P7898156520107382789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045106.P7898156520107382789

/-!
# A045107: Numbers whose base-4 representation contains exactly four 1's and two 2's.

The programs for A045107, there is no canonical definition to state claims against.
-/

/-! ## A045107.P15632323633860247313

`A043340(eq[2, A043340(n+1)%3]+1)`
-/

namespace A045107.P15632323633860247313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043340 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045107.P15632323633860247313

/-! ## A045107.P12208881601440231284

`A163241(A045131(n+1))+A130507((4*n)²)`
-/

namespace A045107.P12208881601440231284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045131 (n + 1)).toNat + A130507 ((4 * n) ^ 2)

end

end A045107.P12208881601440231284

/-! ## A045107.P10053093531563960670

`A146852(A208879(n))*A163241(A045131(n+1))`
-/

namespace A045107.P10053093531563960670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146852 (A208879 n).toNat * A163241 (A045131 (n + 1)).toNat

end

end A045107.P10053093531563960670

/-! ## A045107.P14836927302277233040

`A163241(A045131(n+1))*A208879(A208879(n)²)`
-/

namespace A045107.P14836927302277233040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045131 (n + 1)).toNat * A208879 (A208879 n ^ 2).toNat

end

end A045107.P14836927302277233040

/-! ## A045107.P9803652336682134794

`A163241(A045131(n+1)%A145871(n+1))`
-/

namespace A045107.P9803652336682134794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (Int.tmod (A045131 (n + 1)) (A145871 (n + 1))).toNat

end

end A045107.P9803652336682134794

/-!
# A045108: Numbers whose base-4 representation contains exactly four 1's and three 2's.

The programs for A045108, there is no canonical definition to state claims against.
-/

/-! ## A045108.P12134459920176086425

`A004468(A045156(n+1))`
-/

namespace A045108.P12134459920176086425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045156 (n + 1)).toNat

end

end A045108.P12134459920176086425

/-! ## A045108.P10669724302860586406

`A163916(A045132(n+1))`
-/

namespace A045108.P10669724302860586406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A045132 (n + 1)).toNat

end

end A045108.P10669724302860586406

/-! ## A045108.P11291347616092170262

`∩[A045017(n+1), A045148(n+1)]`
-/

namespace A045108.P11291347616092170262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045108.P11291347616092170262

/-! ## A045108.P6246059245685472496

`∩[A045040(n+1), A045129(n+1)]`
-/

namespace A045108.P6246059245685472496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045108.P6246059245685472496

/-! ## A045108.P3654284667204809597

`∩[A023689(n+1), A023717(A023701(n+1))]`
-/

namespace A045108.P3654284667204809597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023701 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045108.P3654284667204809597

/-!
# A045109: Numbers whose base-4 representation contains exactly four 1's and four 2's.

The programs for A045109, the canonical program `A045109.P98421992831852164` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045109 has offset 1).

The definition of A045109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045109.P98421992831852164

`A023717(∩[A023695(n+1), A023702(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045109

/-- `A023717(∩[A023695(n+1), A023702(n+1)])` -/
def P98421992831852164.Spec : Prop :=
  ∀ n, P98421992831852164.a n = A045109 (n + 1)

theorem P98421992831852164.correct : P98421992831852164.Spec := by
  intro n
  simp only [A045109, Nat.add_sub_cancel]

end A045109

/-! ## A045109.P13724314951224126013

`A045128(n+1)+A004468(A045128(n+1))+1`
-/

namespace A045109.P13724314951224126013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045128 (n + 1) + (A004468 (A045128 (n + 1)).toNat + 1)

end

end A045109.P13724314951224126013

namespace A045109

/-- `A045128(n+1)+A004468(A045128(n+1))+1` -/
def P13724314951224126013.Spec : Prop :=
  ∀ n, P13724314951224126013.a n = A045109 (n + 1)

end A045109

/-!
# A045110: Numbers whose base-4 representation contains no 1's and exactly one 3.

The programs for A045110, the canonical program `A045110.P18270338240771069738` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045110 has offset 1).

The definition of A045110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045110.P18270338240771069738

`3*A045138(n+1)-A045134(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045110

/-- `3*A045138(n+1)-A045134(n+1)` -/
def P18270338240771069738.Spec : Prop :=
  ∀ n, P18270338240771069738.a n = A045110 (n + 1)

theorem P18270338240771069738.correct : P18270338240771069738.Spec := by
  intro n
  simp only [A045110, Nat.add_sub_cancel]

end A045110

/-! ## A045110.P490151096925074118

`A023709(A023699(n+1)+1)`
-/

namespace A045110.P490151096925074118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023699 (n + 1) + 1).toNat

end

end A045110.P490151096925074118

namespace A045110

/-- `A023709(A023699(n+1)+1)` -/
def P490151096925074118.Spec : Prop :=
  ∀ n, P490151096925074118.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P12526602774522190976

`A006015(A045138(n+1))`
-/

namespace A045110.P12526602774522190976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045138 (n + 1)).toNat

end

end A045110.P12526602774522190976

namespace A045110

/-- `A006015(A045138(n+1))` -/
def P12526602774522190976.Spec : Prop :=
  ∀ n, P12526602774522190976.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P12626518074311486418

`A057300(A045134(n+1))`
-/

namespace A045110.P12626518074311486418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045134 (n + 1)).toNat

end

end A045110.P12626518074311486418

namespace A045110

/-- `A057300(A045134(n+1))` -/
def P12626518074311486418.Spec : Prop :=
  ∀ n, P12626518074311486418.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P16150392443603520012

`A006015(eq[2, A338854(n)])`
-/

namespace A045110.P16150392443603520012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045110.P16150392443603520012

namespace A045110

/-- `A006015(eq[2, A338854(n)])` -/
def P16150392443603520012.Spec : Prop :=
  ∀ n, P16150392443603520012.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P8880611784479081762

`∩[A023709(n+1), A023718(n+1)]`
-/

namespace A045110.P8880611784479081762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045110.P8880611784479081762

namespace A045110

/-- `∩[A023709(n+1), A023718(n+1)]` -/
def P8880611784479081762.Spec : Prop :=
  ∀ n, (P8880611784479081762.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P2262767884791633683

`A057300(eq[1, A338854(n)-2])`
-/

namespace A045110.P2262767884791633683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045110.P2262767884791633683

namespace A045110

/-- `A057300(eq[1, A338854(n)-2])` -/
def P2262767884791633683.Spec : Prop :=
  ∀ n, P2262767884791633683.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P5837321920629653504

`eq[1, A240883(A319652(n))]`
-/

namespace A045110.P5837321920629653504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P5837321920629653504

namespace A045110

/-- `eq[1, A240883(A319652(n))]` -/
def P5837321920629653504.Spec : Prop :=
  ∀ n, (P5837321920629653504.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P17669745572634483762

`eq[A139351(n), A374646(n)]`
-/

namespace A045110.P17669745572634483762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045110.P17669745572634483762

namespace A045110

/-- `eq[A139351(n), A374646(n)]` -/
def P17669745572634483762.Spec : Prop :=
  ∀ n, (P17669745572634483762.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P11800110260830003547

`eq[exp(A160381(n)), A160383(n)]`
-/

namespace A045110.P11800110260830003547
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045110.P11800110260830003547

namespace A045110

/-- `eq[exp(A160381(n)), A160383(n)]` -/
def P11800110260830003547.Spec : Prop :=
  ∀ n, (P11800110260830003547.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P10446101764263988397

`eq[1, A160381(n)+A139351(n)]`
-/

namespace A045110.P10446101764263988397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P10446101764263988397

namespace A045110

/-- `eq[1, A160381(n)+A139351(n)]` -/
def P10446101764263988397.Spec : Prop :=
  ∀ n, (P10446101764263988397.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P8539830742476297994

`eq[1, A139351(n)*A160383(n)]`
-/

namespace A045110.P8539830742476297994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P8539830742476297994

namespace A045110

/-- `eq[1, A139351(n)*A160383(n)]` -/
def P8539830742476297994.Spec : Prop :=
  ∀ n, (P8539830742476297994.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P13791348146766644148

`lt[A160381(n), A209229(A292373(n))]`
-/

namespace A045110.P13791348146766644148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045110.P13791348146766644148

namespace A045110

/-- `lt[A160381(n), A209229(A292373(n))]` -/
def P13791348146766644148.Spec : Prop :=
  ∀ n, (P13791348146766644148.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P3254973242274657145

`eq[1, A139351(n)+A139351(A292272(n))]`
-/

namespace A045110.P3254973242274657145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P3254973242274657145

namespace A045110

/-- `eq[1, A139351(n)+A139351(A292272(n))]` -/
def P3254973242274657145.Spec : Prop :=
  ∀ n, (P3254973242274657145.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P11561336178063185742

`eq[1, A139351(A048735(n))*A139351(n)]`
-/

namespace A045110.P11561336178063185742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048735 n).toNat * A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P11561336178063185742

namespace A045110

/-- `eq[1, A139351(A048735(n))*A139351(n)]` -/
def P11561336178063185742.Spec : Prop :=
  ∀ n, (P11561336178063185742.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P1353228195722142910

`eq[2, A338854(A004468(n))]`
-/

namespace A045110.P1353228195722142910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A004468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P1353228195722142910

namespace A045110

/-- `eq[2, A338854(A004468(n))]` -/
def P1353228195722142910.Spec : Prop :=
  ∀ n, (P1353228195722142910.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P9708657376593018031

`eq[3, A338854(A057300(n))]`
-/

namespace A045110.P9708657376593018031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A057300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045110.P9708657376593018031

namespace A045110

/-- `eq[3, A338854(A057300(n))]` -/
def P9708657376593018031.Spec : Prop :=
  ∀ n, (P9708657376593018031.a n : ℤ) = A045110 (n + 1)

end A045110

/-! ## A045110.P7160980160933091907

`A329180(A045134(n+1))%A062966(n)`
-/

namespace A045110.P7160980160933091907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329180 (A045134 (n + 1)).toNat) (A062966 n)

end

end A045110.P7160980160933091907

namespace A045110

/-- `A329180(A045134(n+1))%A062966(n)` -/
def P7160980160933091907.Spec : Prop :=
  ∀ n, P7160980160933091907.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P5889941143300935221

`A329180(A045134(n+1)%A167487(n))`
-/

namespace A045110.P5889941143300935221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (Int.tmod (A045134 (n + 1)) (A167487 n)).toNat

end

end A045110.P5889941143300935221

namespace A045110

/-- `A329180(A045134(n+1)%A167487(n))` -/
def P5889941143300935221.Spec : Prop :=
  ∀ n, P5889941143300935221.a n = A045110 (n + 1)

end A045110

/-! ## A045110.P17874584024907506343

`∑{d}[A329180(A045134(n+1)), A000010(#)]`
-/

namespace A045110.P17874584024907506343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A045134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A045110.P17874584024907506343

namespace A045110

/-- `∑{d}[A329180(A045134(n+1)), A000010(#)]` -/
def P17874584024907506343.Spec : Prop :=
  ∀ n, P17874584024907506343.a n = A045110 (n + 1)

end A045110

/-!
# A045111: Numbers whose base-4 representation contains no 1's and exactly two 3's.

The programs for A045111, the canonical program `A045111.P17883204334826938828` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045111 has offset 1).

The definition of A045111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045111.P17883204334826938828

`A023709(A023700(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045111

/-- `A023709(A023700(n+1)+1)` -/
def P17883204334826938828.Spec : Prop :=
  ∀ n, P17883204334826938828.a n = A045111 (n + 1)

theorem P17883204334826938828.correct : P17883204334826938828.Spec := by
  intro n
  simp only [A045111, Nat.add_sub_cancel]

end A045111

/-! ## A045111.P9231912946407514769

`A006015(A045143(n+1))`
-/

namespace A045111.P9231912946407514769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045143 (n + 1)).toNat

end

end A045111.P9231912946407514769

namespace A045111

/-- `A006015(A045143(n+1))` -/
def P9231912946407514769.Spec : Prop :=
  ∀ n, P9231912946407514769.a n = A045111 (n + 1)

end A045111

/-! ## A045111.P10903832214943157253

`A057300(A045135(n+1))`
-/

namespace A045111.P10903832214943157253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045135 (n + 1)).toNat

end

end A045111.P10903832214943157253

namespace A045111

/-- `A057300(A045135(n+1))` -/
def P10903832214943157253.Spec : Prop :=
  ∀ n, P10903832214943157253.a n = A045111 (n + 1)

end A045111

/-! ## A045111.P16812036549807438062

`∩[A023709(n+1), A023719(n+1)]`
-/

namespace A045111.P16812036549807438062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045111.P16812036549807438062

namespace A045111

/-- `∩[A023709(n+1), A023719(n+1)]` -/
def P16812036549807438062.Spec : Prop :=
  ∀ n, (P16812036549807438062.a n : ℤ) = A045111 (n + 1)

end A045111

/-! ## A045111.P4604813238914715172

`A006015(eq[4, A338854(n)])`
-/

namespace A045111.P4604813238914715172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045111.P4604813238914715172

namespace A045111

/-- `A006015(eq[4, A338854(n)])` -/
def P4604813238914715172.Spec : Prop :=
  ∀ n, P4604813238914715172.a n = A045111 (n + 1)

end A045111

/-! ## A045111.P2833570139026745014

`A008486(A045143(n+1))-A045135(n+1)`
-/

namespace A045111.P2833570139026745014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045143 (n + 1)).toNat - A045135 (n + 1)

end

end A045111.P2833570139026745014

namespace A045111

/-- `A008486(A045143(n+1))-A045135(n+1)` -/
def P2833570139026745014.Spec : Prop :=
  ∀ n, P2833570139026745014.a n = A045111 (n + 1)

end A045111

/-! ## A045111.P16965303584631761056

`A057300(eq[9, A338854(n)])`
-/

namespace A045111.P16965303584631761056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045111.P16965303584631761056

namespace A045111

/-- `A057300(eq[9, A338854(n)])` -/
def P16965303584631761056.Spec : Prop :=
  ∀ n, P16965303584631761056.a n = A045111 (n + 1)

end A045111

/-! ## A045111.P8848341031051686830

`eq[3, A240883(A319652(n))]`
-/

namespace A045111.P8848341031051686830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240883 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045111.P8848341031051686830

namespace A045111

/-- `eq[3, A240883(A319652(n))]` -/
def P8848341031051686830.Spec : Prop :=
  ∀ n, (P8848341031051686830.a n : ℤ) = A045111 (n + 1)

end A045111

/-! ## A045111.P9238920631013120059

`eq[exp(A160381(n))+1, A160383(n)]`
-/

namespace A045111.P9238920631013120059
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045111.P9238920631013120059

namespace A045111

/-- `eq[exp(A160381(n))+1, A160383(n)]` -/
def P9238920631013120059.Spec : Prop :=
  ∀ n, (P9238920631013120059.a n : ℤ) = A045111 (n + 1)

end A045111

/-! ## A045111.P14779776254026534945

`eq[2, A338854(A004468(n))-2]`
-/

namespace A045111.P14779776254026534945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A004468 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045111.P14779776254026534945

namespace A045111

/-- `eq[2, A338854(A004468(n))-2]` -/
def P14779776254026534945.Spec : Prop :=
  ∀ n, (P14779776254026534945.a n : ℤ) = A045111 (n + 1)

end A045111

/-! ## A045111.P13390238664954423335

`A249122(record[A249122(A045112(n+1))])`
-/

namespace A045111.P13390238664954423335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A045112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045111.P13390238664954423335

namespace A045111

/-- `A249122(record[A249122(A045112(n+1))])` -/
def P13390238664954423335.Spec : Prop :=
  ∀ n, P13390238664954423335.a n = A045111 (n + 1)

end A045111

/-!
# A045112: Numbers whose base-4 representation contains no 1's and exactly three 3's.

The programs for A045112, the canonical program `A045112.P14322503297143553076` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045112 has offset 1).

The definition of A045112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045112.P14322503297143553076

`A023709(A023701(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045112

/-- `A023709(A023701(n+1)+1)` -/
def P14322503297143553076.Spec : Prop :=
  ∀ n, P14322503297143553076.a n = A045112 (n + 1)

theorem P14322503297143553076.correct : P14322503297143553076.Spec := by
  intro n
  simp only [A045112, Nat.add_sub_cancel]

end A045112

/-! ## A045112.P16254774226763169782

`∩[A023709(n+1), A023720(n+1)]`
-/

namespace A045112.P16254774226763169782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045112.P16254774226763169782

namespace A045112

/-- `∩[A023709(n+1), A023720(n+1)]` -/
def P16254774226763169782.Spec : Prop :=
  ∀ n, (P16254774226763169782.a n : ℤ) = A045112 (n + 1)

end A045112

/-! ## A045112.P16301080295439167849

`A006015(A045148(n+1))`
-/

namespace A045112.P16301080295439167849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045148 (n + 1)).toNat

end

end A045112.P16301080295439167849

namespace A045112

/-- `A006015(A045148(n+1))` -/
def P16301080295439167849.Spec : Prop :=
  ∀ n, P16301080295439167849.a n = A045112 (n + 1)

end A045112

/-! ## A045112.P17864341878716650313

`A057300(A045136(n+1))`
-/

namespace A045112.P17864341878716650313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045136 (n + 1)).toNat

end

end A045112.P17864341878716650313

namespace A045112

/-- `A057300(A045136(n+1))` -/
def P17864341878716650313.Spec : Prop :=
  ∀ n, P17864341878716650313.a n = A045112 (n + 1)

end A045112

/-! ## A045112.P5802835964228363695

`record[A057300(A023720(n+1))]`
-/

namespace A045112.P5802835964228363695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A023720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045112.P5802835964228363695

namespace A045112

/-- `record[A057300(A023720(n+1))]` -/
def P5802835964228363695.Spec : Prop :=
  ∀ n, P5802835964228363695.a n = A045112 (n + 1)

end A045112

/-! ## A045112.P12451705905703016565

`A008486(A045148(n+1))-A045136(n+1)`
-/

namespace A045112.P12451705905703016565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045148 (n + 1)).toNat - A045136 (n + 1)

end

end A045112.P12451705905703016565

namespace A045112

/-- `A008486(A045148(n+1))-A045136(n+1)` -/
def P12451705905703016565.Spec : Prop :=
  ∀ n, P12451705905703016565.a n = A045112 (n + 1)

end A045112

/-! ## A045112.P12658664148809875619

`eq[exp(A160381(n))+2, A160383(n)]`
-/

namespace A045112.P12658664148809875619
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045112.P12658664148809875619

namespace A045112

/-- `eq[exp(A160381(n))+2, A160383(n)]` -/
def P12658664148809875619.Spec : Prop :=
  ∀ n, (P12658664148809875619.a n : ℤ) = A045112 (n + 1)

end A045112

/-!
# A045113: Numbers whose base-4 representation contains no 1's and exactly four 3's.

The programs for A045113, there is no canonical definition to state claims against.
-/

/-! ## A045113.P16625192361785244593

`3*A045153(n+1)-A045137(n+1)`
-/

namespace A045113.P16625192361785244593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045153 (n + 1) - A045137 (n + 1)

end

end A045113.P16625192361785244593

/-! ## A045113.P1299562989831930325

`A023709(A023702(n+1)+1)`
-/

namespace A045113.P1299562989831930325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023702 (n + 1) + 1).toNat

end

end A045113.P1299562989831930325

/-! ## A045113.P11624916639285589656

`∩[A023709(n+1), A043348(n+1)]`
-/

namespace A045113.P11624916639285589656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045113.P11624916639285589656

/-! ## A045113.P9210858557085388620

`A006015(A045153(n+1))`
-/

namespace A045113.P9210858557085388620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045153 (n + 1)).toNat

end

end A045113.P9210858557085388620

/-! ## A045113.P1946837289387593985

`A057300(A045137(n+1))`
-/

namespace A045113.P1946837289387593985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045137 (n + 1)).toNat

end

end A045113.P1946837289387593985

/-! ## A045113.P3192569592914654268

`record[A057300(A043348(n+1))]`
-/

namespace A045113.P3192569592914654268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A043348 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045113.P3192569592914654268

/-! ## A045113.P6090673594430864071

`A008486(A045153(n+1))-A045137(n+1)`
-/

namespace A045113.P6090673594430864071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045153 (n + 1)).toNat - A045137 (n + 1)

end

end A045113.P6090673594430864071

/-!
# A045114: Numbers whose base-4 representation contains exactly one 1 and no 3's.

The programs for A045114, the canonical program `A045114.P12965799165865166822` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045114 has offset 1).

The definition of A045114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045114.P12965799165865166822

`A023717(A023692(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045114

/-- `A023717(A023692(n+1))` -/
def P12965799165865166822.Spec : Prop :=
  ∀ n, P12965799165865166822.a n = A045114 (n + 1)

theorem P12965799165865166822.correct : P12965799165865166822.Spec := by
  intro n
  simp only [A045114, Nat.add_sub_cancel]

end A045114

/-! ## A045114.P6231043733860260743

`A023717(eq[1, A062756(n)])`
-/

namespace A045114.P6231043733860260743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045114.P6231043733860260743

namespace A045114

/-- `A023717(eq[1, A062756(n)])` -/
def P6231043733860260743.Spec : Prop :=
  ∀ n, P6231043733860260743.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P5950141858180185549

`A023717(eq[2, A120880(n)])`
-/

namespace A045114.P5950141858180185549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045114.P5950141858180185549

namespace A045114

/-- `A023717(eq[2, A120880(n)])` -/
def P5950141858180185549.Spec : Prop :=
  ∀ n, P5950141858180185549.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P13207155805709782593

`A023717(eq[2, A290091(n)])`
-/

namespace A045114.P13207155805709782593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045114.P13207155805709782593

namespace A045114

/-- `A023717(eq[2, A290091(n)])` -/
def P13207155805709782593.Spec : Prop :=
  ∀ n, P13207155805709782593.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P16755582332080842421

`A023717(eq[A000035(n), A205565(n)])`
-/

namespace A045114.P16755582332080842421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045114.P16755582332080842421

namespace A045114

/-- `A023717(eq[A000035(n), A205565(n)])` -/
def P16755582332080842421.Spec : Prop :=
  ∀ n, P16755582332080842421.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P1839809181039840147

`∩[A023710(n+1), A023717(n)]`
-/

namespace A045114.P1839809181039840147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045114.P1839809181039840147

namespace A045114

/-- `∩[A023710(n+1), A023717(n)]` -/
def P1839809181039840147.Spec : Prop :=
  ∀ n, (P1839809181039840147.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P6401721378387130252

`eq[1, val(A268444(n), 2)]`
-/

namespace A045114.P6401721378387130252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045114.P6401721378387130252

namespace A045114

/-- `eq[1, val(A268444(n), 2)]` -/
def P6401721378387130252.Spec : Prop :=
  ∀ n, (P6401721378387130252.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P16246006477209243320

`eq[1, A292370(A268444(n)+2)]`
-/

namespace A045114.P16246006477209243320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A268444 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P16246006477209243320

namespace A045114

/-- `eq[1, A292370(A268444(n)+2)]` -/
def P16246006477209243320.Spec : Prop :=
  ∀ n, (P16246006477209243320.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P10487809895282769003

`A004468(A045086(n+1))`
-/

namespace A045114.P10487809895282769003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045086 (n + 1)).toNat

end

end A045114.P10487809895282769003

namespace A045114

/-- `A004468(A045086(n+1))` -/
def P10487809895282769003.Spec : Prop :=
  ∀ n, P10487809895282769003.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P13530741395721366019

`eq[2, A001511(A268444(n))]`
-/

namespace A045114.P13530741395721366019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P13530741395721366019

namespace A045114

/-- `eq[2, A001511(A268444(n))]` -/
def P13530741395721366019.Spec : Prop :=
  ∀ n, (P13530741395721366019.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P13145453519112415980

`eq[exp(A160383(n)), A160381(n)]`
-/

namespace A045114.P13145453519112415980
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045114.P13145453519112415980

namespace A045114

/-- `eq[exp(A160383(n)), A160381(n)]` -/
def P13145453519112415980.Spec : Prop :=
  ∀ n, (P13145453519112415980.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P5757463901271921695

`eq[A160382(n)+1, A000120(n)]`
-/

namespace A045114.P5757463901271921695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045114.P5757463901271921695

namespace A045114

/-- `eq[A160382(n)+1, A000120(n)]` -/
def P5757463901271921695.Spec : Prop :=
  ∀ n, (P5757463901271921695.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P2521148217432844398

`eq[1, A160383(n)+A139351(n)]`
-/

namespace A045114.P2521148217432844398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P2521148217432844398

namespace A045114

/-- `eq[1, A160383(n)+A139351(n)]` -/
def P2521148217432844398.Spec : Prop :=
  ∀ n, (P2521148217432844398.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P15955283943068963408

`eq[1, A139351(n)*A160381(n)]`
-/

namespace A045114.P15955283943068963408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P15955283943068963408

namespace A045114

/-- `eq[1, A139351(n)*A160381(n)]` -/
def P15955283943068963408.Spec : Prop :=
  ∀ n, (P15955283943068963408.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P14956284275458826663

`A023717(eq[1, A139351(A023717(n))])`
-/

namespace A045114.P14956284275458826663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A023717 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045114.P14956284275458826663

namespace A045114

/-- `A023717(eq[1, A139351(A023717(n))])` -/
def P14956284275458826663.Spec : Prop :=
  ∀ n, P14956284275458826663.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P774713218339412561

`eq[A000120(A292372(n))+1, A000120(n)]`
-/

namespace A045114.P774713218339412561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045114.P774713218339412561

namespace A045114

/-- `eq[A000120(A292372(n))+1, A000120(n)]` -/
def P774713218339412561.Spec : Prop :=
  ∀ n, (P774713218339412561.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P6010321011801154292

`eq[1, A139351(A048735(n))+A139351(n)]`
-/

namespace A045114.P6010321011801154292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048735 n).toNat + A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P6010321011801154292

namespace A045114

/-- `eq[1, A139351(A048735(n))+A139351(n)]` -/
def P6010321011801154292.Spec : Prop :=
  ∀ n, (P6010321011801154292.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P10787836982886261291

`eq[1, A139351(n)*A139351(A292272(n))]`
-/

namespace A045114.P10787836982886261291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P10787836982886261291

namespace A045114

/-- `eq[1, A139351(n)*A139351(A292272(n))]` -/
def P10787836982886261291.Spec : Prop :=
  ∀ n, (P10787836982886261291.a n : ℤ) = A045114 (n + 1)

end A045114

/-! ## A045114.P3902500289537788795

`A163241(A045090(n+1))`
-/

namespace A045114.P3902500289537788795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045090 (n + 1)).toNat

end

end A045114.P3902500289537788795

namespace A045114

/-- `A163241(A045090(n+1))` -/
def P3902500289537788795.Spec : Prop :=
  ∀ n, P3902500289537788795.a n = A045114 (n + 1)

end A045114

/-! ## A045114.P9650077354123865440

`eq[1, A139351(A048728(n))+A139351(n)]`
-/

namespace A045114.P9650077354123865440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat + A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045114.P9650077354123865440

namespace A045114

/-- `eq[1, A139351(A048728(n))+A139351(n)]` -/
def P9650077354123865440.Spec : Prop :=
  ∀ n, (P9650077354123865440.a n : ℤ) = A045114 (n + 1)

end A045114

/-!
# A045115: Numbers whose base-4 representation contains exactly one 1 and one 3.

The programs for A045115, there is no canonical definition to state claims against.
-/

/-! ## A045115.P5576376223037798766

`∩[A023710(n+1), A039005(n+1)]`
-/

namespace A045115.P5576376223037798766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045115.P5576376223037798766

/-! ## A045115.P14012536656262191291

`∩[A023710(n+1), A039281(n+1)]`
-/

namespace A045115.P14012536656262191291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045115.P14012536656262191291

/-! ## A045115.P18046606969840970634

`∩[A023710(n+1), A023718(n+1)]`
-/

namespace A045115.P18046606969840970634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045115.P18046606969840970634

/-! ## A045115.P4803005863991199001

`∩[A023718(n+1), A039005(n+1)]`
-/

namespace A045115.P4803005863991199001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045115.P4803005863991199001

/-! ## A045115.P15296334112903587320

`∩[A023718(n+1), A039281(n+1)]`
-/

namespace A045115.P15296334112903587320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045115.P15296334112903587320

/-! ## A045115.P18200959407786140885

`eq[1, A160381(n)*A160383(n)]`
-/

namespace A045115.P18200959407786140885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P18200959407786140885

/-! ## A045115.P1593693412284178164

`eq[2, A139351(n)*A160381(n)]`
-/

namespace A045115.P1593693412284178164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P1593693412284178164

/-! ## A045115.P11194196561503038758

`eq[2, A139351(n)*A160383(n)]`
-/

namespace A045115.P11194196561503038758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P11194196561503038758

/-! ## A045115.P7293281053631158187

`eq[A139351(n)², A001511(A268444(n))]`
-/

namespace A045115.P7293281053631158187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045115.P7293281053631158187

/-! ## A045115.P17495589926331664344

`eq[2, A139351(A048735(n))*A139351(n)]`
-/

namespace A045115.P17495589926331664344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048735 n).toNat * A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P17495589926331664344

/-! ## A045115.P4777627088878731813

`eq[2, A139351(n)*A139351(A292272(n))]`
-/

namespace A045115.P4777627088878731813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A139351 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P4777627088878731813

/-! ## A045115.P7380211478439835381

`A254667(eq[5, A160383(n)+A139351(n)²])`
-/

namespace A045115.P7380211478439835381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + A139351 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045115.P7380211478439835381

/-! ## A045115.P8955919370417852866

`eq[2, A139351(A048728(n))*A139351(n)]`
-/

namespace A045115.P8955919370417852866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat * A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P8955919370417852866

/-! ## A045115.P18258081395058010863

`eq[1, A160381(A006015(n))*A160381(n)]`
-/

namespace A045115.P18258081395058010863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P18258081395058010863

/-! ## A045115.P3267082553607374320

`eq[1, A160382(A006015(n))*A160383(n)]`
-/

namespace A045115.P3267082553607374320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P3267082553607374320

/-! ## A045115.P1982130197922552388

`eq[1, A160383(A004468(n))*A160383(n)]`
-/

namespace A045115.P1982130197922552388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A004468 n).toNat * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P1982130197922552388

/-! ## A045115.P4859217003791396702

`eq[1, A160381(A048647(n))*A160381(n)]`
-/

namespace A045115.P4859217003791396702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A048647 n).toNat * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P4859217003791396702

/-! ## A045115.P2859802276670784515

`eq[1, A160383(A048647(n))*A160383(n)]`
-/

namespace A045115.P2859802276670784515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A048647 n).toNat * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045115.P2859802276670784515

/-! ## A045115.P10957374906338015902

`record[A100727(A045120(n+2))]`
-/

namespace A045115.P10957374906338015902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045120 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045115.P10957374906338015902

/-!
# A045116: Numbers whose base-4 representation contains exactly one 1 and two 3's.

The programs for A045116, there is no canonical definition to state claims against.
-/

/-! ## A045116.P9424321546210109196

`∩[A023710(n+1), A023719(n+1)]`
-/

namespace A045116.P9424321546210109196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045116.P9424321546210109196

/-! ## A045116.P1387295684913861101

`eq[3, A139351(n)*A160381(n)]`
-/

namespace A045116.P1387295684913861101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045116.P1387295684913861101

/-! ## A045116.P15792196408879204367

`eq[2, A160383(n)^A160381(n)]`
-/

namespace A045116.P15792196408879204367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160383 n : ℚ) ^ (A160381 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045116.P15792196408879204367

/-! ## A045116.P17439701685220689954

`eq[A139351(n)+1, A160383(n)²]`
-/

namespace A045116.P17439701685220689954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045116.P17439701685220689954

/-! ## A045116.P5366608938402218983

`eq[18, A338854(A057300(n))]`
-/

namespace A045116.P5366608938402218983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A057300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045116.P5366608938402218983

/-! ## A045116.P16924916175179916614

`eq[12, A338854(A004468(n))]`
-/

namespace A045116.P16924916175179916614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A004468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045116.P16924916175179916614

/-!
# A045117: Numbers whose base-4 representation contains exactly one 1 and three 3's.

The programs for A045117, there is no canonical definition to state claims against.
-/

/-! ## A045117.P5349955713832429637

`∩[A023710(n+1), A023720(n+1)]`
-/

namespace A045117.P5349955713832429637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045117.P5349955713832429637

/-! ## A045117.P3926042012435171782

`record[A100727(A045122(n+4))]`
-/

namespace A045117.P3926042012435171782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045122 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045117.P3926042012435171782

/-!
# A045118: Numbers whose base-4 representation contains exactly one 1 and four 3's.

The programs for A045118, there is no canonical definition to state claims against.
-/

/-! ## A045118.P9234423918042727957

`record[A100727(A045123(n+5))]`
-/

namespace A045118.P9234423918042727957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045123 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045118.P9234423918042727957

/-! ## A045118.P7119137702708541539

`A023691(A083964(n+1))`
-/

namespace A045118.P7119137702708541539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023691 (A083964 (n + 1)).toNat

end

end A045118.P7119137702708541539

/-!
# A045119: Numbers whose base-4 representation contains exactly two 1's and no 3's.

The programs for A045119, the canonical program `A045119.P11400290046664927110` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045119 has offset 1).

The definition of A045119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045119.P13327663925797058160

`A023717(A023693(n+1))`
-/

namespace A045119.P13327663925797058160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023693 (n + 1)).toNat

end

end A045119.P13327663925797058160

namespace A045119

/-- `A023717(A023693(n+1))` -/
def P13327663925797058160.Spec : Prop :=
  ∀ n, P13327663925797058160.a n = A045119 (n + 1)

end A045119

/-! ## A045119.P11400290046664927110

`A023717(eq[2, A062756(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045119

/-- `A023717(eq[2, A062756(n)])` -/
def P11400290046664927110.Spec : Prop :=
  ∀ n, P11400290046664927110.a n = A045119 (n + 1)

theorem P11400290046664927110.correct : P11400290046664927110.Spec := by
  intro n
  simp only [A045119, Nat.add_sub_cancel]

end A045119

/-! ## A045119.P3935064542395654278

`A023717(eq[2, A205565(n)])`
-/

namespace A045119.P3935064542395654278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045119.P3935064542395654278

namespace A045119

/-- `A023717(eq[2, A205565(n)])` -/
def P3935064542395654278.Spec : Prop :=
  ∀ n, P3935064542395654278.a n = A045119 (n + 1)

end A045119

/-! ## A045119.P12571074648944513039

`A023717(eq[4, A120880(n)])`
-/

namespace A045119.P12571074648944513039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045119.P12571074648944513039

namespace A045119

/-- `A023717(eq[4, A120880(n)])` -/
def P12571074648944513039.Spec : Prop :=
  ∀ n, P12571074648944513039.a n = A045119 (n + 1)

end A045119

/-! ## A045119.P9389723643554634531

`∩[A023711(n+1), A023717(n)]`
-/

namespace A045119.P9389723643554634531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045119.P9389723643554634531

namespace A045119

/-- `∩[A023711(n+1), A023717(n)]` -/
def P9389723643554634531.Spec : Prop :=
  ∀ n, (P9389723643554634531.a n : ℤ) = A045119 (n + 1)

end A045119

/-! ## A045119.P7650436492716067204

`A004468(A045087(n+1))`
-/

namespace A045119.P7650436492716067204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045087 (n + 1)).toNat

end

end A045119.P7650436492716067204

namespace A045119

/-- `A004468(A045087(n+1))` -/
def P7650436492716067204.Spec : Prop :=
  ∀ n, P7650436492716067204.a n = A045119 (n + 1)

end A045119

/-! ## A045119.P642779430449107103

`eq[exp(A160383(n))+1, A160381(n)]`
-/

namespace A045119.P642779430449107103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045119.P642779430449107103

namespace A045119

/-- `eq[exp(A160383(n))+1, A160381(n)]` -/
def P642779430449107103.Spec : Prop :=
  ∀ n, (P642779430449107103.a n : ℤ) = A045119 (n + 1)

end A045119

/-! ## A045119.P2879912155012852625

`A163241(A045095(n+1))`
-/

namespace A045119.P2879912155012852625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045095 (n + 1)).toNat

end

end A045119.P2879912155012852625

namespace A045119

/-- `A163241(A045095(n+1))` -/
def P2879912155012852625.Spec : Prop :=
  ∀ n, P2879912155012852625.a n = A045119 (n + 1)

end A045119

/-! ## A045119.P15714959815825182142

`eq[2, val(A073707(2*n), 2)]`
-/

namespace A045119.P15714959815825182142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073707 (2 * n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045119.P15714959815825182142

namespace A045119

/-- `eq[2, val(A073707(2*n), 2)]` -/
def P15714959815825182142.Spec : Prop :=
  ∀ n, (P15714959815825182142.a n : ℤ) = A045119 (n + 1)

end A045119

/-! ## A045119.P4031920732834407390

`eq[2, A338854(A057300(n))-2]`
-/

namespace A045119.P4031920732834407390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A057300 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045119.P4031920732834407390

namespace A045119

/-- `eq[2, A338854(A057300(n))-2]` -/
def P4031920732834407390.Spec : Prop :=
  ∀ n, (P4031920732834407390.a n : ℤ) = A045119 (n + 1)

end A045119

/-! ## A045119.P1933224802078808439

`record[A100727(A045120(n+1)-2)]`
-/

namespace A045119.P1933224802078808439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045120 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045119.P1933224802078808439

namespace A045119

/-- `record[A100727(A045120(n+1)-2)]` -/
def P1933224802078808439.Spec : Prop :=
  ∀ n, P1933224802078808439.a n = A045119 (n + 1)

end A045119

/-!
# A045120: Numbers whose base-4 representation contains exactly two 1's and one 3.

The programs for A045120, there is no canonical definition to state claims against.
-/

/-! ## A045120.P8442984512880093606

`∩[A023711(n+1), A023718(n+1)]`
-/

namespace A045120.P8442984512880093606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045120.P8442984512880093606

/-! ## A045120.P13439997715829619457

`eq[3, A139351(n)*A160383(n)]`
-/

namespace A045120.P13439997715829619457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045120.P13439997715829619457

/-! ## A045120.P2171829678598959449

`eq[2, A160381(n)^A160383(n)]`
-/

namespace A045120.P2171829678598959449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160381 n : ℚ) ^ (A160383 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045120.P2171829678598959449

/-! ## A045120.P14831721178212324719

`eq[A139351(n)+1, A160381(n)²]`
-/

namespace A045120.P14831721178212324719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045120.P14831721178212324719

/-! ## A045120.P8809139100901095749

`eq[3, A139351(A048728(n))*A139351(n)]`
-/

namespace A045120.P8809139100901095749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat * A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045120.P8809139100901095749

/-! ## A045120.P18204223657761929416

`record[A100727(A045125(n+2))]`
-/

namespace A045120.P18204223657761929416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045125 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045120.P18204223657761929416

/-! ## A045120.P4723788989549698761

`record[A057979(A057979(A045121(n+1)))]`
-/

namespace A045120.P4723788989549698761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 (A045121 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045120.P4723788989549698761

/-!
# A045121: Numbers whose base-4 representation contains exactly two 1's and two 3's.

The programs for A045121, there is no canonical definition to state claims against.
-/

/-! ## A045121.P10911133597023282567

`∩[A023711(n+1), A039005(n+1)]`
-/

namespace A045121.P10911133597023282567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045121.P10911133597023282567

/-! ## A045121.P6724601452524497971

`∩[A023711(n+1), A039281(n+1)]`
-/

namespace A045121.P6724601452524497971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045121.P6724601452524497971

/-! ## A045121.P5234461167310028380

`∩[A023711(n+1), A023719(n+1)]`
-/

namespace A045121.P5234461167310028380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045121.P5234461167310028380

/-! ## A045121.P3572378657784864039

`∩[A023719(n+1), A039005(n+1)]`
-/

namespace A045121.P3572378657784864039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045121.P3572378657784864039

/-! ## A045121.P15234185181276451308

`∩[A023719(n+1), A039281(n+1)]`
-/

namespace A045121.P15234185181276451308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045121.P15234185181276451308

/-! ## A045121.P7921262029694955087

`eq[8, A139351(n)*A160381(n)]`
-/

namespace A045121.P7921262029694955087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045121.P7921262029694955087

/-! ## A045121.P14008465833829532638

`eq[8, A139351(n)*A160383(n)]`
-/

namespace A045121.P14008465833829532638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045121.P14008465833829532638

/-! ## A045121.P9875211435360226334

`eq[A160381(n)+2, A160383(n)²]`
-/

namespace A045121.P9875211435360226334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045121.P9875211435360226334

/-! ## A045121.P5733183796078997019

`eq[8, A139351(A048728(n))*A139351(n)]`
-/

namespace A045121.P5733183796078997019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat * A139351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045121.P5733183796078997019

/-! ## A045121.P5862845101845685937

`eq[36, A338854(A004468(n))]`
-/

namespace A045121.P5862845101845685937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A004468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045121.P5862845101845685937

/-! ## A045121.P5594797736573553279

`record[A100727(A045122(n+1)-2)]`
-/

namespace A045121.P5594797736573553279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045122 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045121.P5594797736573553279

/-!
# A045122: Numbers whose base-4 representation contains exactly two 1's and three 3's.

The programs for A045122, there is no canonical definition to state claims against.
-/

/-! ## A045122.P1820774345380242743

`∩[A023711(n+1), A023720(n+1)]`
-/

namespace A045122.P1820774345380242743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045122.P1820774345380242743

/-! ## A045122.P16223769330924322823

`record[A100727(A045123(n+1)-2)]`
-/

namespace A045122.P16223769330924322823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045123 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045122.P16223769330924322823

/-! ## A045122.P15780345043746803896

`A163241(A045098(n+1)^A184257(n+1))`
-/

namespace A045122.P15780345043746803896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (SequenceMachineLib.roundAway ((A045098 (n + 1) : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A045122.P15780345043746803896

/-! ## A045122.P4803344276337143759

`A163241(C(A045098(n+1), A184257(n+1)))`
-/

namespace A045122.P4803344276337143759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (Nat.choose (A045098 (n + 1)).toNat (A184257 (n + 1)).toNat)

end

end A045122.P4803344276337143759

/-! ## A045122.P18135142586807781403

`∩[A045015(n+1), A045136(n+1)]`
-/

namespace A045122.P18135142586807781403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045122.P18135142586807781403

/-!
# A045123: Numbers whose base-4 representation contains exactly two 1's and four 3's.

The programs for A045123, there is no canonical definition to state claims against.
-/

/-! ## A045123.P517543170473653700

`A053645(A045128(n+1))`
-/

namespace A045123.P517543170473653700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A045128 (n + 1)).toNat

end

end A045123.P517543170473653700

/-! ## A045123.P494265025634208880

`A329101(A045147(n+1))`
-/

namespace A045123.P494265025634208880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A045147 (n + 1)).toNat

end

end A045123.P494265025634208880

/-! ## A045123.P17898882934564237406

`A062050(A045128(n+1)-1)`
-/

namespace A045123.P17898882934564237406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A045128 (n + 1) - 1).toNat

end

end A045123.P17898882934564237406

/-! ## A045123.P16362146223413205339

`A062050(2*A045147(n+1))`
-/

namespace A045123.P16362146223413205339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * A045147 (n + 1)).toNat

end

end A045123.P16362146223413205339

/-! ## A045123.P13237421470999500786

`A062050(xor(1, A045128(n+1)))`
-/

namespace A045123.P13237421470999500786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (Int.xor 1 (A045128 (n + 1))).toNat

end

end A045123.P13237421470999500786

/-!
# A045124: Numbers whose base-4 representation contains exactly three 1's and no 3's.

The programs for A045124, the canonical program `A045124.P1610314079926387521` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045124 has offset 1).

The definition of A045124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045124.P1610314079926387521

`A023717(A023694(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045124

/-- `A023717(A023694(n+1))` -/
def P1610314079926387521.Spec : Prop :=
  ∀ n, P1610314079926387521.a n = A045124 (n + 1)

theorem P1610314079926387521.correct : P1610314079926387521.Spec := by
  intro n
  simp only [A045124, Nat.add_sub_cancel]

end A045124

/-! ## A045124.P13219901280472677011

`A023717(eq[3, A062756(n)])`
-/

namespace A045124.P13219901280472677011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045124.P13219901280472677011

namespace A045124

/-- `A023717(eq[3, A062756(n)])` -/
def P13219901280472677011.Spec : Prop :=
  ∀ n, P13219901280472677011.a n = A045124 (n + 1)

end A045124

/-! ## A045124.P1171300530672963586

`A023717(eq[4, A205565(n)])`
-/

namespace A045124.P1171300530672963586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045124.P1171300530672963586

namespace A045124

/-- `A023717(eq[4, A205565(n)])` -/
def P1171300530672963586.Spec : Prop :=
  ∀ n, P1171300530672963586.a n = A045124 (n + 1)

end A045124

/-! ## A045124.P7906974506302072348

`A023717(eq[8, A120880(n)])`
-/

namespace A045124.P7906974506302072348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045124.P7906974506302072348

namespace A045124

/-- `A023717(eq[8, A120880(n)])` -/
def P7906974506302072348.Spec : Prop :=
  ∀ n, P7906974506302072348.a n = A045124 (n + 1)

end A045124

/-! ## A045124.P18249650284974144277

`∩[A023712(n+1), A023717(n)]`
-/

namespace A045124.P18249650284974144277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045124.P18249650284974144277

namespace A045124

/-- `∩[A023712(n+1), A023717(n)]` -/
def P18249650284974144277.Spec : Prop :=
  ∀ n, (P18249650284974144277.a n : ℤ) = A045124 (n + 1)

end A045124

/-! ## A045124.P15295234577874892789

`A004468(A045088(n+1))`
-/

namespace A045124.P15295234577874892789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045088 (n + 1)).toNat

end

end A045124.P15295234577874892789

namespace A045124

/-- `A004468(A045088(n+1))` -/
def P15295234577874892789.Spec : Prop :=
  ∀ n, P15295234577874892789.a n = A045124 (n + 1)

end A045124

/-! ## A045124.P2074740068498632168

`eq[exp(A160383(n))+2, A160381(n)]`
-/

namespace A045124.P2074740068498632168
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045124.P2074740068498632168

namespace A045124

/-- `eq[exp(A160383(n))+2, A160381(n)]` -/
def P2074740068498632168.Spec : Prop :=
  ∀ n, (P2074740068498632168.a n : ℤ) = A045124 (n + 1)

end A045124

/-! ## A045124.P4379546565319221887

`A163241(A045100(n+1))`
-/

namespace A045124.P4379546565319221887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045100 (n + 1)).toNat

end

end A045124.P4379546565319221887

namespace A045124

/-- `A163241(A045100(n+1))` -/
def P4379546565319221887.Spec : Prop :=
  ∀ n, P4379546565319221887.a n = A045124 (n + 1)

end A045124

/-! ## A045124.P9535697520448853885

`record[A100727(A045125(n+1)-2)]`
-/

namespace A045124.P9535697520448853885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045125 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045124.P9535697520448853885

namespace A045124

/-- `record[A100727(A045125(n+1)-2)]` -/
def P9535697520448853885.Spec : Prop :=
  ∀ n, P9535697520448853885.a n = A045124 (n + 1)

end A045124

/-!
# A045125: Numbers whose base-4 representation contains exactly three 1's and one 3.

The programs for A045125, there is no canonical definition to state claims against.
-/

/-! ## A045125.P14672220031412223004

`∩[A023712(n+1), A023718(n+1)]`
-/

namespace A045125.P14672220031412223004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045125.P14672220031412223004

/-! ## A045125.P4816572351763575615

`record[A100727(A045130(n+2))]`
-/

namespace A045125.P4816572351763575615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045130 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045125.P4816572351763575615

/-! ## A045125.P17354277007685663850

`record[A054576(A045130(n+2)-1)]`
-/

namespace A045125.P17354277007685663850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045130 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045125.P17354277007685663850

/-! ## A045125.P16633984097340752447

`record[A100727(A045126(n+1)-2)]`
-/

namespace A045125.P16633984097340752447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045126 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045125.P16633984097340752447

/-! ## A045125.P9051149595950863246

`record[A054576(A045126(n+1)-3)]`
-/

namespace A045125.P9051149595950863246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045126 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045125.P9051149595950863246

/-! ## A045125.P7144758710109810730

`record[A054576(xor(3, A045126(n+1)))]`
-/

namespace A045125.P7144758710109810730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.xor 3 (A045126 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045125.P7144758710109810730

/-!
# A045126: Numbers whose base-4 representation contains exactly three 1's and two 3's.

The programs for A045126, there is no canonical definition to state claims against.
-/

/-! ## A045126.P3161394415582476824

`∩[A023712(n+1), A023719(n+1)]`
-/

namespace A045126.P3161394415582476824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045126.P3161394415582476824

/-! ## A045126.P5829544924121771346

`∩[A045016(n+1), A045135(n+1)]`
-/

namespace A045126.P5829544924121771346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045126.P5829544924121771346

/-! ## A045126.P11783256526395986505

`∩[A045063(n+1), A045100(n+1)]`
-/

namespace A045126.P11783256526395986505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045126.P11783256526395986505

/-! ## A045126.P4768225925843375068

`∩[A045016(n+1), A074203(n+1)]`
-/

namespace A045126.P4768225925843375068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045126.P4768225925843375068

/-!
# A045127: Numbers whose base-4 representation contains exactly three 1's and three 3's.

The programs for A045127, there is no canonical definition to state claims against.
-/

/-! ## A045127.P14387685462143180501

`∩[A023712(n+1), A023720(n+1)]`
-/

namespace A045127.P14387685462143180501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045127.P14387685462143180501

/-! ## A045127.P10478146100732460399

`record[A057979(floor(A045128(n+1)/2))]`
-/

namespace A045127.P10478146100732460399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ⌊(A045128 (n + 1) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045127.P10478146100732460399

/-! ## A045127.P15367817293519535450

`A053645(A045132(n+1))`
-/

namespace A045127.P15367817293519535450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A045132 (n + 1)).toNat

end

end A045127.P15367817293519535450

/-! ## A045127.P6724624952745386007

`A329101(A045151(n+1))`
-/

namespace A045127.P6724624952745386007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A045151 (n + 1)).toNat

end

end A045127.P6724624952745386007

/-! ## A045127.P12090200989547902493

`A062050(A045132(n+1)-1)`
-/

namespace A045127.P12090200989547902493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A045132 (n + 1) - 1).toNat

end

end A045127.P12090200989547902493

/-!
# A045128: Numbers whose base-4 representation contains exactly three 1's and four 3's.

The programs for A045128, there is no canonical definition to state claims against.
-/

/-! ## A045128.P16872934843879633962

`A057300(A045152(n+1))`
-/

namespace A045128.P16872934843879633962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045152 (n + 1)).toNat

end

end A045128.P16872934843879633962

/-! ## A045128.P9492684524501593119

`A163916(A045104(n+1))`
-/

namespace A045128.P9492684524501593119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A045104 (n + 1)).toNat

end

end A045128.P9492684524501593119

/-! ## A045128.P12490871280239020751

`A057300(floor(A045133(n+1)/2))`
-/

namespace A045128.P12490871280239020751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 ⌊(A045133 (n + 1) : ℚ) / 2⌋.toNat

end

end A045128.P12490871280239020751

/-! ## A045128.P10209216639825073898

`A057300((A045133(n+1)-1)/2)`
-/

namespace A045128.P10209216639825073898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.roundAway ((A045133 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A045128.P10209216639825073898

/-! ## A045128.P10508938968229413019

`∩[A045065(n+1), A045100(n+1)]`
-/

namespace A045128.P10508938968229413019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045128.P10508938968229413019

/-!
# A045129: Numbers whose base-4 representation contains exactly four 1's and no 3's.

The programs for A045129, there is no canonical definition to state claims against.
-/

/-! ## A045129.P3959020050021592966

`(A045105(n+1)+A045089(n+1))/3`
-/

namespace A045129.P3959020050021592966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045105 (n + 1) + A045089 (n + 1) : ℚ) / 3

end

end A045129.P3959020050021592966

/-! ## A045129.P323669943059368817

`A023717(A023695(n+1))`
-/

namespace A045129.P323669943059368817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023695 (n + 1)).toNat

end

end A045129.P323669943059368817

/-! ## A045129.P12047211759993021835

`A023717(eq[2, A106154(n)])`
-/

namespace A045129.P12047211759993021835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045129.P12047211759993021835

/-! ## A045129.P12066942364542098526

`A023717(eq[4, A062756(n)])`
-/

namespace A045129.P12066942364542098526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045129.P12066942364542098526

/-! ## A045129.P10960507102511760068

`A023717(eq[2, 6-log2(A120880(n))])`
-/

namespace A045129.P10960507102511760068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 - Real.logb 2 (A120880 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A045129.P10960507102511760068

/-! ## A045129.P10523434734468416527

`∩[A043340(n+1), A023717(n)]`
-/

namespace A045129.P10523434734468416527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045129.P10523434734468416527

/-! ## A045129.P11726891931354129077

`A004468(A045089(n+1))`
-/

namespace A045129.P11726891931354129077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045089 (n + 1)).toNat

end

end A045129.P11726891931354129077

/-! ## A045129.P11267492893077390346

`and(A004468(A045105(n+1)), A045105(n+1))`
-/

namespace A045129.P11267492893077390346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004468 (A045105 (n + 1)).toNat) (A045105 (n + 1))

end

end A045129.P11267492893077390346

/-! ## A045129.P8004354954918463534

`A163241(A045105(n+1))`
-/

namespace A045129.P8004354954918463534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045105 (n + 1)).toNat

end

end A045129.P8004354954918463534

/-! ## A045129.P11900506424785574410

`A002264(A045105(n+1)+A045089(n+1))`
-/

namespace A045129.P11900506424785574410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045105 (n + 1) + A045089 (n + 1)).toNat

end

end A045129.P11900506424785574410

/-!
# A045130: Numbers whose base-4 representation contains exactly four 1's and one 3.

The programs for A045130, there is no canonical definition to state claims against.
-/

/-! ## A045130.P3958086178292793921

`record[-A130507(A045131(n+1))]`
-/

namespace A045130.P3958086178292793921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A130507 (A045131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045130.P3958086178292793921

/-! ## A045130.P16697593297841257957

`record[A100727(A045131(n+1)-2)]`
-/

namespace A045130.P16697593297841257957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045131 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045130.P16697593297841257957

/-! ## A045130.P11351745802723201391

`record[A130507(A045131(n+1)-5)]`
-/

namespace A045130.P11351745802723201391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A045131 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045130.P11351745802723201391

/-! ## A045130.P790818582351159244

`A163241(A045106(n+1))^A146852(A146852(n+1))`
-/

namespace A045130.P790818582351159244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163241 (A045106 (n + 1)).toNat : ℚ) ^ (A146852 (A146852 (n + 1)).toNat : ℤ)

end

end A045130.P790818582351159244

/-! ## A045130.P1608721057911739219

`A146852(A208879(n+4))*A163241(A045106(n+1))`
-/

namespace A045130.P1608721057911739219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146852 (A208879 (n + 4)).toNat * A163241 (A045106 (n + 1)).toNat

end

end A045130.P1608721057911739219

/-!
# A045131: Numbers whose base-4 representation contains exactly four 1's and two 3's.

The programs for A045131, there is no canonical definition to state claims against.
-/

/-! ## A045131.P15291347764444014195

`A163241(A045107(n+1))%A045036(A146852(n+1))`
-/

namespace A045131.P15291347764444014195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163241 (A045107 (n + 1)).toNat) (A045036 (A146852 (n + 1)).toNat)

end

end A045131.P15291347764444014195

/-! ## A045131.P5883386618898536879

`A163241(A045107(n+1)%A145871(n+1))`
-/

namespace A045131.P5883386618898536879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (Int.tmod (A045107 (n + 1)) (A145871 (n + 1))).toNat

end

end A045131.P5883386618898536879

/-! ## A045131.P305374579851567857

`A329101(A045155(n+1))`
-/

namespace A045131.P305374579851567857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A045155 (n + 1)).toNat

end

end A045131.P305374579851567857

/-! ## A045131.P15780791172943836255

`A062050(2*A045155(n+1))`
-/

namespace A045131.P15780791172943836255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (2 * A045155 (n + 1)).toNat

end

end A045131.P15780791172943836255

/-! ## A045131.P8317016242078180955

`∩[A045017(n+1), A045135(n+1)]`
-/

namespace A045131.P8317016242078180955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045131.P8317016242078180955

/-!
# A045132: Numbers whose base-4 representation contains exactly four 1's and three 3's.

The programs for A045132, there is no canonical definition to state claims against.
-/

/-! ## A045132.P12210727849273963605

`A057300(A045156(n+1))`
-/

namespace A045132.P12210727849273963605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045156 (n + 1)).toNat

end

end A045132.P12210727849273963605

/-! ## A045132.P15188199312829177094

`A163916(A045108(n+1))`
-/

namespace A045132.P15188199312829177094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A045108 (n + 1)).toNat

end

end A045132.P15188199312829177094

/-! ## A045132.P11434941771036587001

`∩[A045017(n+1), A045136(n+1)]`
-/

namespace A045132.P11434941771036587001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045132.P11434941771036587001

/-! ## A045132.P14791310497537819476

`∩[A045064(n+1), A045105(n+1)]`
-/

namespace A045132.P14791310497537819476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045132.P14791310497537819476

/-! ## A045132.P10532903495704995293

`A163916(∩[A045017(n+1), A045148(n+1)])`
-/

namespace A045132.P10532903495704995293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045148 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045132.P10532903495704995293

/-!
# A045133: Numbers whose base-4 representation contains exactly four 1's and four 3's.

The programs for A045133, there is no canonical definition to state claims against.
-/

/-! ## A045133.P462486334072934078

`A006257(A045157(n+1))`
-/

namespace A045133.P462486334072934078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A045157 (n + 1)).toNat

end

end A045133.P462486334072934078

/-! ## A045133.P8499621045337528483

`∩[A045065(n+1), A045105(n+1)]`
-/

namespace A045133.P8499621045337528483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045133.P8499621045337528483

/-! ## A045133.P1775787485211281630

`A059009(A045152(n+1))`
-/

namespace A045133.P1775787485211281630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A045152 (n + 1)).toNat

end

end A045133.P1775787485211281630

/-! ## A045133.P3240605284705519073

`2*A006015(A045104(n+1))+1`
-/

namespace A045133.P3240605284705519073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006015 (A045104 (n + 1)).toNat + 1

end

end A045133.P3240605284705519073

/-! ## A045133.P6147975032379407213

`2*A057300(A045128(n+1))+1`
-/

namespace A045133.P6147975032379407213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057300 (A045128 (n + 1)).toNat + 1

end

end A045133.P6147975032379407213

/-!
# A045134: Numbers whose base-4 representation contains no 2's and exactly one 3.

The programs for A045134, the canonical program `A045134.P3283556967636376471` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045134 has offset 1).

The definition of A045134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045134.P3283556967636376471

`A023713(A023699(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045134

/-- `A023713(A023699(n+1)+1)` -/
def P3283556967636376471.Spec : Prop :=
  ∀ n, P3283556967636376471.a n = A045134 (n + 1)

theorem P3283556967636376471.correct : P3283556967636376471.Spec := by
  intro n
  simp only [A045134, Nat.add_sub_cancel]

end A045134

/-! ## A045134.P3014054541971435055

`lt[A292372(n), A209229(A292373(n))]`
-/

namespace A045134.P3014054541971435055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292373 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045134.P3014054541971435055

namespace A045134

/-- `lt[A292372(n), A209229(A292373(n))]` -/
def P3014054541971435055.Spec : Prop :=
  ∀ n, (P3014054541971435055.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P17129064392267125276

`∩[A023713(n+1), A023718(n+1)]`
-/

namespace A045134.P17129064392267125276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045134.P17129064392267125276

namespace A045134

/-- `∩[A023713(n+1), A023718(n+1)]` -/
def P17129064392267125276.Spec : Prop :=
  ∀ n, (P17129064392267125276.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P3692274069908253080

`A057300(A045110(n+1))`
-/

namespace A045134.P3692274069908253080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045110 (n + 1)).toNat

end

end A045134.P3692274069908253080

namespace A045134

/-- `A057300(A045110(n+1))` -/
def P3692274069908253080.Spec : Prop :=
  ∀ n, P3692274069908253080.a n = A045134 (n + 1)

end A045134

/-! ## A045134.P2181473191518023038

`A163241(A045138(n+1))`
-/

namespace A045134.P2181473191518023038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045138 (n + 1)).toNat

end

end A045134.P2181473191518023038

namespace A045134

/-- `A163241(A045138(n+1))` -/
def P2181473191518023038.Spec : Prop :=
  ∀ n, P2181473191518023038.a n = A045134 (n + 1)

end A045134

/-! ## A045134.P9283931158484075685

`eq[3, A338854(n)]`
-/

namespace A045134.P9283931158484075685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045134.P9283931158484075685

namespace A045134

/-- `eq[3, A338854(n)]` -/
def P9283931158484075685.Spec : Prop :=
  ∀ n, (P9283931158484075685.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P17586360729379318683

`eq[2, A090996(A319720(n))]`
-/

namespace A045134.P17586360729379318683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045134.P17586360729379318683

namespace A045134

/-- `eq[2, A090996(A319720(n))]` -/
def P17586360729379318683.Spec : Prop :=
  ∀ n, (P17586360729379318683.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P14354458625193240986

`eq[exp(A160382(n)), A160383(n)]`
-/

namespace A045134.P14354458625193240986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160382 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045134.P14354458625193240986

namespace A045134

/-- `eq[exp(A160382(n)), A160383(n)]` -/
def P14354458625193240986.Spec : Prop :=
  ∀ n, (P14354458625193240986.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P7326898671473874598

`eq[1, A160382(n)+A139352(n)]`
-/

namespace A045134.P7326898671473874598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045134.P7326898671473874598

namespace A045134

/-- `eq[1, A160382(n)+A139352(n)]` -/
def P7326898671473874598.Spec : Prop :=
  ∀ n, (P7326898671473874598.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P9967610946577589590

`eq[1, A139352(n)*A160383(n)]`
-/

namespace A045134.P9967610946577589590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045134.P9967610946577589590

namespace A045134

/-- `eq[1, A139352(n)*A160383(n)]` -/
def P9967610946577589590.Spec : Prop :=
  ∀ n, (P9967610946577589590.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P16492268584231837889

`lt[A338854(n), (A283316(n+1)+1)²]`
-/

namespace A045134.P16492268584231837889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A283316 (n + 1) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045134.P16492268584231837889

namespace A045134

/-- `lt[A338854(n), (A283316(n+1)+1)²]` -/
def P16492268584231837889.Spec : Prop :=
  ∀ n, (P16492268584231837889.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P6150249103099426810

`lt[A160382(n), A209229(A059906(n))]`
-/

namespace A045134.P6150249103099426810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A059906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045134.P6150249103099426810

namespace A045134

/-- `lt[A160382(n), A209229(A059906(n))]` -/
def P6150249103099426810.Spec : Prop :=
  ∀ n, (P6150249103099426810.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P16298033622933473703

`lt[A292372(n), A209229(A059906(n))]`
-/

namespace A045134.P16298033622933473703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A059906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045134.P16298033622933473703

namespace A045134

/-- `lt[A292372(n), A209229(A059906(n))]` -/
def P16298033622933473703.Spec : Prop :=
  ∀ n, (P16298033622933473703.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P9045465753129071986

`lt[A059253(A338854(n)), A283316(n+1)]`
-/

namespace A045134.P9045465753129071986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A338854 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045134.P9045465753129071986

namespace A045134

/-- `lt[A059253(A338854(n)), A283316(n+1)]` -/
def P9045465753129071986.Spec : Prop :=
  ∀ n, (P9045465753129071986.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P12949387859231997436

`eq[1, A139352(n)*A139352(A213370(n))]`
-/

namespace A045134.P12949387859231997436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A139352 (A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045134.P12949387859231997436

namespace A045134

/-- `eq[1, A139352(n)*A139352(A213370(n))]` -/
def P12949387859231997436.Spec : Prop :=
  ∀ n, (P12949387859231997436.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P12107505330597699735

`A063694(A045110(n+1))+A023717(A023699(n+1))`
-/

namespace A045134.P12107505330597699735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A045110 (n + 1)).toNat + A023717 (A023699 (n + 1)).toNat

end

end A045134.P12107505330597699735

namespace A045134

/-- `A063694(A045110(n+1))+A023717(A023699(n+1))` -/
def P12107505330597699735.Spec : Prop :=
  ∀ n, P12107505330597699735.a n = A045134 (n + 1)

end A045134

/-! ## A045134.P2708220479710912438

`eq[A139352(n), A269529(n)]`
-/

namespace A045134.P2708220479710912438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045134.P2708220479710912438

namespace A045134

/-- `eq[A139352(n), A269529(n)]` -/
def P2708220479710912438.Spec : Prop :=
  ∀ n, (P2708220479710912438.a n : ℤ) = A045134 (n + 1)

end A045134

/-! ## A045134.P2813043961209824607

`eq[1, A338863(A037460(n))-2]`
-/

namespace A045134.P2813043961209824607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A037460 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045134.P2813043961209824607

namespace A045134

/-- `eq[1, A338863(A037460(n))-2]` -/
def P2813043961209824607.Spec : Prop :=
  ∀ n, (P2813043961209824607.a n : ℤ) = A045134 (n + 1)

end A045134

/-!
# A045135: Numbers whose base-4 representation contains no 2's and exactly two 3's.

The programs for A045135, the canonical program `A045135.P12059944341482856690` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045135 has offset 1).

The definition of A045135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045135.P12059944341482856690

`3*A045143(n+1)-A045111(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045135

/-- `3*A045143(n+1)-A045111(n+1)` -/
def P12059944341482856690.Spec : Prop :=
  ∀ n, P12059944341482856690.a n = A045135 (n + 1)

theorem P12059944341482856690.correct : P12059944341482856690.Spec := by
  intro n
  simp only [A045135, Nat.add_sub_cancel]

end A045135

/-! ## A045135.P7715788246601900695

`A023713(A023700(n+1)+1)`
-/

namespace A045135.P7715788246601900695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023700 (n + 1) + 1).toNat

end

end A045135.P7715788246601900695

namespace A045135

/-- `A023713(A023700(n+1)+1)` -/
def P7715788246601900695.Spec : Prop :=
  ∀ n, P7715788246601900695.a n = A045135 (n + 1)

end A045135

/-! ## A045135.P450416345928976690

`∩[A023713(n+1), A023719(n+1)]`
-/

namespace A045135.P450416345928976690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045135.P450416345928976690

namespace A045135

/-- `∩[A023713(n+1), A023719(n+1)]` -/
def P450416345928976690.Spec : Prop :=
  ∀ n, (P450416345928976690.a n : ℤ) = A045135 (n + 1)

end A045135

/-! ## A045135.P14550001003988427815

`A057300(A045111(n+1))`
-/

namespace A045135.P14550001003988427815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045111 (n + 1)).toNat

end

end A045135.P14550001003988427815

namespace A045135

/-- `A057300(A045111(n+1))` -/
def P14550001003988427815.Spec : Prop :=
  ∀ n, P14550001003988427815.a n = A045135 (n + 1)

end A045135

/-! ## A045135.P7600251461400451413

`A163241(A045143(n+1))`
-/

namespace A045135.P7600251461400451413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045143 (n + 1)).toNat

end

end A045135.P7600251461400451413

namespace A045135

/-- `A163241(A045143(n+1))` -/
def P7600251461400451413.Spec : Prop :=
  ∀ n, P7600251461400451413.a n = A045135 (n + 1)

end A045135

/-! ## A045135.P6632094015057755469

`A008486(A045143(n+1))-A045111(n+1)`
-/

namespace A045135.P6632094015057755469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045143 (n + 1)).toNat - A045111 (n + 1)

end

end A045135.P6632094015057755469

namespace A045135

/-- `A008486(A045143(n+1))-A045111(n+1)` -/
def P6632094015057755469.Spec : Prop :=
  ∀ n, P6632094015057755469.a n = A045135 (n + 1)

end A045135

/-! ## A045135.P15242726736633597123

`eq[9, A338854(n)]`
-/

namespace A045135.P15242726736633597123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045135.P15242726736633597123

namespace A045135

/-- `eq[9, A338854(n)]` -/
def P15242726736633597123.Spec : Prop :=
  ∀ n, (P15242726736633597123.a n : ℤ) = A045135 (n + 1)

end A045135

/-! ## A045135.P13154146188351889512

`eq[4, A090996(A319720(n))]`
-/

namespace A045135.P13154146188351889512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045135.P13154146188351889512

namespace A045135

/-- `eq[4, A090996(A319720(n))]` -/
def P13154146188351889512.Spec : Prop :=
  ∀ n, (P13154146188351889512.a n : ℤ) = A045135 (n + 1)

end A045135

/-! ## A045135.P6685802440197931592

`eq[A139352(n)+2, A160383(n)²]`
-/

namespace A045135.P6685802440197931592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045135.P6685802440197931592

namespace A045135

/-- `eq[A139352(n)+2, A160383(n)²]` -/
def P6685802440197931592.Spec : Prop :=
  ∀ n, (P6685802440197931592.a n : ℤ) = A045135 (n + 1)

end A045135

/-! ## A045135.P15405331816613570197

`eq[exp(A160382(n))+1, A160383(n)]`
-/

namespace A045135.P15405331816613570197
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160382 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045135.P15405331816613570197

namespace A045135

/-- `eq[exp(A160382(n))+1, A160383(n)]` -/
def P15405331816613570197.Spec : Prop :=
  ∀ n, (P15405331816613570197.a n : ℤ) = A045135 (n + 1)

end A045135

/-!
# A045136: Numbers whose base-4 representation contains no 2's and exactly three 3's.

The programs for A045136, the canonical program `A045136.P16542609465213325021` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045136 has offset 1).

The definition of A045136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045136.P16542609465213325021

`A023713(A023701(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045136

/-- `A023713(A023701(n+1)+1)` -/
def P16542609465213325021.Spec : Prop :=
  ∀ n, P16542609465213325021.a n = A045136 (n + 1)

theorem P16542609465213325021.correct : P16542609465213325021.Spec := by
  intro n
  simp only [A045136, Nat.add_sub_cancel]

end A045136

/-! ## A045136.P6435167489075305223

`∩[A023713(n+1), A023720(n+1)]`
-/

namespace A045136.P6435167489075305223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045136.P6435167489075305223

namespace A045136

/-- `∩[A023713(n+1), A023720(n+1)]` -/
def P6435167489075305223.Spec : Prop :=
  ∀ n, (P6435167489075305223.a n : ℤ) = A045136 (n + 1)

end A045136

/-! ## A045136.P8699028305741278921

`A057300(A045112(n+1))`
-/

namespace A045136.P8699028305741278921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045112 (n + 1)).toNat

end

end A045136.P8699028305741278921

namespace A045136

/-- `A057300(A045112(n+1))` -/
def P8699028305741278921.Spec : Prop :=
  ∀ n, P8699028305741278921.a n = A045136 (n + 1)

end A045136

/-! ## A045136.P5102388604993024459

`A163241(A045148(n+1))`
-/

namespace A045136.P5102388604993024459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045148 (n + 1)).toNat

end

end A045136.P5102388604993024459

namespace A045136

/-- `A163241(A045148(n+1))` -/
def P5102388604993024459.Spec : Prop :=
  ∀ n, P5102388604993024459.a n = A045136 (n + 1)

end A045136

/-! ## A045136.P12909290497184855072

`A008486(A045148(n+1))-A045112(n+1)`
-/

namespace A045136.P12909290497184855072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045148 (n + 1)).toNat - A045112 (n + 1)

end

end A045136.P12909290497184855072

namespace A045136

/-- `A008486(A045148(n+1))-A045112(n+1)` -/
def P12909290497184855072.Spec : Prop :=
  ∀ n, P12909290497184855072.a n = A045136 (n + 1)

end A045136

/-! ## A045136.P14716186587258964424

`eq[3, A338854(n)/9]`
-/

namespace A045136.P14716186587258964424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338854 n : ℚ) / 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045136.P14716186587258964424

namespace A045136

/-- `eq[3, A338854(n)/9]` -/
def P14716186587258964424.Spec : Prop :=
  ∀ n, (P14716186587258964424.a n : ℤ) = A045136 (n + 1)

end A045136

/-! ## A045136.P18194871083946717501

`eq[1, A023961(A338854(n))]`
-/

namespace A045136.P18194871083946717501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045136.P18194871083946717501

namespace A045136

/-- `eq[1, A023961(A338854(n))]` -/
def P18194871083946717501.Spec : Prop :=
  ∀ n, (P18194871083946717501.a n : ℤ) = A045136 (n + 1)

end A045136

/-! ## A045136.P1787751105001829313

`record[A100727(A045137(n+1)-2)]`
-/

namespace A045136.P1787751105001829313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045137 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045136.P1787751105001829313

namespace A045136

/-- `record[A100727(A045137(n+1)-2)]` -/
def P1787751105001829313.Spec : Prop :=
  ∀ n, P1787751105001829313.a n = A045136 (n + 1)

end A045136

/-!
# A045137: Numbers whose base-4 representation contains no 2's and exactly four 3's.

The programs for A045137, there is no canonical definition to state claims against.
-/

/-! ## A045137.P8499329576955959674

`3*A045153(n+1)-A045113(n+1)`
-/

namespace A045137.P8499329576955959674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045153 (n + 1) - A045113 (n + 1)

end

end A045137.P8499329576955959674

/-! ## A045137.P7294953655406345556

`A023713(A023702(n+1)+1)`
-/

namespace A045137.P7294953655406345556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023702 (n + 1) + 1).toNat

end

end A045137.P7294953655406345556

/-! ## A045137.P12513322018998247774

`∩[A023713(n+1), A043348(n+1)]`
-/

namespace A045137.P12513322018998247774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045137.P12513322018998247774

/-! ## A045137.P17493880127262885423

`3*A023717(A023702(n+1))-A045113(n+1)`
-/

namespace A045137.P17493880127262885423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023717 (A023702 (n + 1)).toNat - A045113 (n + 1)

end

end A045137.P17493880127262885423

/-! ## A045137.P18100266708897178231

`A057300(A045113(n+1))`
-/

namespace A045137.P18100266708897178231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045113 (n + 1)).toNat

end

end A045137.P18100266708897178231

/-! ## A045137.P8106971531235925010

`A163241(A045153(n+1))`
-/

namespace A045137.P8106971531235925010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045153 (n + 1)).toNat

end

end A045137.P8106971531235925010

/-! ## A045137.P16894176343615766641

`A008486(A045153(n+1))-A045113(n+1)`
-/

namespace A045137.P16894176343615766641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045153 (n + 1)).toNat - A045113 (n + 1)

end

end A045137.P16894176343615766641

/-!
# A045138: Numbers whose base-4 representation contains exactly one 2 and no 3's.

The programs for A045138, the canonical program `A045138.P13109970554052411139` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045138 has offset 1).

The definition of A045138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045138.P13109970554052411139

`A023717(A023699(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045138

/-- `A023717(A023699(n+1))` -/
def P13109970554052411139.Spec : Prop :=
  ∀ n, P13109970554052411139.a n = A045138 (n + 1)

theorem P13109970554052411139.correct : P13109970554052411139.Spec := by
  intro n
  simp only [A045138, Nat.add_sub_cancel]

end A045138

/-! ## A045138.P14135696678297747743

`A023717(eq[1, A081603(n)])`
-/

namespace A045138.P14135696678297747743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045138.P14135696678297747743

namespace A045138

/-- `A023717(eq[1, A081603(n)])` -/
def P14135696678297747743.Spec : Prop :=
  ∀ n, P14135696678297747743.a n = A045138 (n + 1)

end A045138

/-! ## A045138.P7770686145877379563

`A023717(eq[2, A117592(n)])`
-/

namespace A045138.P7770686145877379563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045138.P7770686145877379563

namespace A045138

/-- `A023717(eq[2, A117592(n)])` -/
def P7770686145877379563.Spec : Prop :=
  ∀ n, P7770686145877379563.a n = A045138 (n + 1)

end A045138

/-! ## A045138.P16631755122550140770

`A023717(eq[2, A290092(n)])`
-/

namespace A045138.P16631755122550140770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045138.P16631755122550140770

namespace A045138

/-- `A023717(eq[2, A290092(n)])` -/
def P16631755122550140770.Spec : Prop :=
  ∀ n, P16631755122550140770.a n = A045138 (n + 1)

end A045138

/-! ## A045138.P9250846261730391531

`A023717(eq[2, abs(A117942(n))])`
-/

namespace A045138.P9250846261730391531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045138.P9250846261730391531

namespace A045138

/-- `A023717(eq[2, abs(A117942(n))])` -/
def P9250846261730391531.Spec : Prop :=
  ∀ n, P9250846261730391531.a n = A045138 (n + 1)

end A045138

/-! ## A045138.P2162301171787067910

`lt[A292373(n), A209229(A292372(n))]`
-/

namespace A045138.P2162301171787067910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045138.P2162301171787067910

namespace A045138

/-- `lt[A292373(n), A209229(A292372(n))]` -/
def P2162301171787067910.Spec : Prop :=
  ∀ n, (P2162301171787067910.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P5439240338310626088

`eq[2*A001316(A292371(n)), A001316(n)]`
-/

namespace A045138.P5439240338310626088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045138.P5439240338310626088

namespace A045138

/-- `eq[2*A001316(A292371(n)), A001316(n)]` -/
def P5439240338310626088.Spec : Prop :=
  ∀ n, (P5439240338310626088.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P6570439826456625008

`∩[A023714(n+1), A023717(n)]`
-/

namespace A045138.P6570439826456625008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045138.P6570439826456625008

namespace A045138

/-- `∩[A023714(n+1), A023717(n)]` -/
def P6570439826456625008.Spec : Prop :=
  ∀ n, (P6570439826456625008.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P7018646416135117707

`eq[2, A338854(n)]`
-/

namespace A045138.P7018646416135117707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045138.P7018646416135117707

namespace A045138

/-- `eq[2, A338854(n)]` -/
def P7018646416135117707.Spec : Prop :=
  ∀ n, (P7018646416135117707.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P6792126946721682896

`A004468(A045110(n+1))`
-/

namespace A045138.P6792126946721682896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045110 (n + 1)).toNat

end

end A045138.P6792126946721682896

namespace A045138

/-- `A004468(A045110(n+1))` -/
def P6792126946721682896.Spec : Prop :=
  ∀ n, P6792126946721682896.a n = A045138 (n + 1)

end A045138

/-! ## A045138.P11529944617075121803

`eq[1, A292372(A319652(n))]`
-/

namespace A045138.P11529944617075121803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045138.P11529944617075121803

namespace A045138

/-- `eq[1, A292372(A319652(n))]` -/
def P11529944617075121803.Spec : Prop :=
  ∀ n, (P11529944617075121803.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P8679388086974970098

`eq[exp(A160383(n)), A160382(n)]`
-/

namespace A045138.P8679388086974970098
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045138.P8679388086974970098

namespace A045138

/-- `eq[exp(A160383(n)), A160382(n)]` -/
def P8679388086974970098.Spec : Prop :=
  ∀ n, (P8679388086974970098.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P11094673938924329160

`eq[A160381(n)+1, A000120(n)]`
-/

namespace A045138.P11094673938924329160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045138.P11094673938924329160

namespace A045138

/-- `eq[A160381(n)+1, A000120(n)]` -/
def P11094673938924329160.Spec : Prop :=
  ∀ n, (P11094673938924329160.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P486371038869303832

`eq[1, A160383(n)+A139352(n)]`
-/

namespace A045138.P486371038869303832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045138.P486371038869303832

namespace A045138

/-- `eq[1, A160383(n)+A139352(n)]` -/
def P486371038869303832.Spec : Prop :=
  ∀ n, (P486371038869303832.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P3442531982673509358

`eq[1, A139352(n)*A160382(n)]`
-/

namespace A045138.P3442531982673509358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045138.P3442531982673509358

namespace A045138

/-- `eq[1, A139352(n)*A160382(n)]` -/
def P3442531982673509358.Spec : Prop :=
  ∀ n, (P3442531982673509358.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P7878878227962211905

`eq[A001019(A292373(n)), A160382(n)]`
-/

namespace A045138.P7878878227962211905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A292373 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045138.P7878878227962211905

namespace A045138

/-- `eq[A001019(A292373(n)), A160382(n)]` -/
def P7878878227962211905.Spec : Prop :=
  ∀ n, (P7878878227962211905.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P6381655292533053734

`lt[A160383(n), A209229(A059906(n))]`
-/

namespace A045138.P6381655292533053734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A059906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045138.P6381655292533053734

namespace A045138

/-- `lt[A160383(n), A209229(A059906(n))]` -/
def P6381655292533053734.Spec : Prop :=
  ∀ n, (P6381655292533053734.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P4912722079566715723

`lt[A292373(n), A209229(A059906(n))]`
-/

namespace A045138.P4912722079566715723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A059906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045138.P4912722079566715723

namespace A045138

/-- `lt[A292373(n), A209229(A059906(n))]` -/
def P4912722079566715723.Spec : Prop :=
  ∀ n, (P4912722079566715723.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P1190660257577010321

`lt[A266510(A338854(n)), A160382(n)]`
-/

namespace A045138.P1190660257577010321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (A338854 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045138.P1190660257577010321

namespace A045138

/-- `lt[A266510(A338854(n)), A160382(n)]` -/
def P1190660257577010321.Spec : Prop :=
  ∀ n, (P1190660257577010321.a n : ℤ) = A045138 (n + 1)

end A045138

/-! ## A045138.P10922914909990317643

`eq[A000120(A292371(n))+1, A000120(n)]`
-/

namespace A045138.P10922914909990317643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045138.P10922914909990317643

namespace A045138

/-- `eq[A000120(A292371(n))+1, A000120(n)]` -/
def P10922914909990317643.Spec : Prop :=
  ∀ n, (P10922914909990317643.a n : ℤ) = A045138 (n + 1)

end A045138

/-!
# A045139: Numbers whose base-4 representation contains exactly one 2 and one 3.

The programs for A045139, the canonical program `A045139.P3460865892790876897` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045139 has offset 1).

The definition of A045139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045139.P10971278260798497496

`∩[A023714(n+1), A039006(n+1)]`
-/

namespace A045139.P10971278260798497496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045139.P10971278260798497496

namespace A045139

/-- `∩[A023714(n+1), A039006(n+1)]` -/
def P10971278260798497496.Spec : Prop :=
  ∀ n, (P10971278260798497496.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P2592373711876810852

`∩[A023714(n+1), A039282(n+1)]`
-/

namespace A045139.P2592373711876810852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045139.P2592373711876810852

namespace A045139

/-- `∩[A023714(n+1), A039282(n+1)]` -/
def P2592373711876810852.Spec : Prop :=
  ∀ n, (P2592373711876810852.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P3460865892790876897

`∩[A023714(n+1), A023718(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045139

/-- `∩[A023714(n+1), A023718(n+1)]` -/
def P3460865892790876897.Spec : Prop :=
  ∀ n, (P3460865892790876897.a n : ℤ) = A045139 (n + 1)

theorem P3460865892790876897.correct : P3460865892790876897.Spec := by
  intro n
  simp only [A045139, Nat.add_sub_cancel]

end A045139

/-! ## A045139.P4731911822799876848

`∩[A023718(n+1), A039006(n+1)]`
-/

namespace A045139.P4731911822799876848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045139.P4731911822799876848

namespace A045139

/-- `∩[A023718(n+1), A039006(n+1)]` -/
def P4731911822799876848.Spec : Prop :=
  ∀ n, (P4731911822799876848.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P16882713193272297409

`∩[A023718(n+1), A039282(n+1)]`
-/

namespace A045139.P16882713193272297409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045139.P16882713193272297409

namespace A045139

/-- `∩[A023718(n+1), A039282(n+1)]` -/
def P16882713193272297409.Spec : Prop :=
  ∀ n, (P16882713193272297409.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P6519173286033806238

`eq[2, A139352(n)*A160382(n)]`
-/

namespace A045139.P6519173286033806238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P6519173286033806238

namespace A045139

/-- `eq[2, A139352(n)*A160382(n)]` -/
def P6519173286033806238.Spec : Prop :=
  ∀ n, (P6519173286033806238.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P1466790941273252587

`eq[2, A139352(n)*A139352(A213370(n))]`
-/

namespace A045139.P1466790941273252587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A139352 (A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P1466790941273252587

namespace A045139

/-- `eq[2, A139352(n)*A139352(A213370(n))]` -/
def P1466790941273252587.Spec : Prop :=
  ∀ n, (P1466790941273252587.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P496097019715311058

`eq[6, A338854(n)]`
-/

namespace A045139.P496097019715311058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P496097019715311058

namespace A045139

/-- `eq[6, A338854(n)]` -/
def P496097019715311058.Spec : Prop :=
  ∀ n, (P496097019715311058.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P13196046395521099127

`eq[2, A292372(A319652(n))]`
-/

namespace A045139.P13196046395521099127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P13196046395521099127

namespace A045139

/-- `eq[2, A292372(A319652(n))]` -/
def P13196046395521099127.Spec : Prop :=
  ∀ n, (P13196046395521099127.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P2730661797426662349

`eq[1, A160382(n)*A160383(n)]`
-/

namespace A045139.P2730661797426662349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P2730661797426662349

namespace A045139

/-- `eq[1, A160382(n)*A160383(n)]` -/
def P2730661797426662349.Spec : Prop :=
  ∀ n, (P2730661797426662349.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P4025262058302157879

`eq[2, A139352(n)*A160383(n)]`
-/

namespace A045139.P4025262058302157879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P4025262058302157879

namespace A045139

/-- `eq[2, A139352(n)*A160383(n)]` -/
def P4025262058302157879.Spec : Prop :=
  ∀ n, (P4025262058302157879.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P8074696059694680186

`eq[1, A000120(A292372(n))*A160383(n)]`
-/

namespace A045139.P8074696059694680186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P8074696059694680186

namespace A045139

/-- `eq[1, A000120(A292372(n))*A160383(n)]` -/
def P8074696059694680186.Spec : Prop :=
  ∀ n, (P8074696059694680186.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P9009558927067639107

`eq[2, A139352(n)*A139352(A229763(n))]`
-/

namespace A045139.P9009558927067639107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A139352 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P9009558927067639107

namespace A045139

/-- `eq[2, A139352(n)*A139352(A229763(n))]` -/
def P9009558927067639107.Spec : Prop :=
  ∀ n, (P9009558927067639107.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P10713248405102253207

`lt[A059253(A338854(n)-1), A283316(n+1)]`
-/

namespace A045139.P10713248405102253207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A338854 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045139.P10713248405102253207

namespace A045139

/-- `lt[A059253(A338854(n)-1), A283316(n+1)]` -/
def P10713248405102253207.Spec : Prop :=
  ∀ n, (P10713248405102253207.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P17986178878681247643

`eq[A139352(n), A286596(A268444(n))]`
-/

namespace A045139.P17986178878681247643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045139.P17986178878681247643

namespace A045139

/-- `eq[A139352(n), A286596(A268444(n))]` -/
def P17986178878681247643.Spec : Prop :=
  ∀ n, (P17986178878681247643.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P784733227926880375

`eq[1, A160381(A006015(n))*A160382(n)]`
-/

namespace A045139.P784733227926880375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P784733227926880375

namespace A045139

/-- `eq[1, A160381(A006015(n))*A160382(n)]` -/
def P784733227926880375.Spec : Prop :=
  ∀ n, (P784733227926880375.a n : ℤ) = A045139 (n + 1)

end A045139

/-! ## A045139.P11446144025380790333

`eq[1, A160383(A006015(n))*A160383(n)]`
-/

namespace A045139.P11446144025380790333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A006015 n).toNat * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045139.P11446144025380790333

namespace A045139

/-- `eq[1, A160383(A006015(n))*A160383(n)]` -/
def P11446144025380790333.Spec : Prop :=
  ∀ n, (P11446144025380790333.a n : ℤ) = A045139 (n + 1)

end A045139

/-!
# A045140: Numbers whose base-4 representation contains exactly one 2 and two 3's.

The programs for A045140, the canonical program `A045140.P4056378356856557150` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045140 has offset 1).

The definition of A045140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045140.P4056378356856557150

`∩[A023714(n+1), A023719(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045140

/-- `∩[A023714(n+1), A023719(n+1)]` -/
def P4056378356856557150.Spec : Prop :=
  ∀ n, (P4056378356856557150.a n : ℤ) = A045140 (n + 1)

theorem P4056378356856557150.correct : P4056378356856557150.Spec := by
  intro n
  simp only [A045140, Nat.add_sub_cancel]

end A045140

/-! ## A045140.P17080322324057426261

`eq[3, A338854(n)/6]`
-/

namespace A045140.P17080322324057426261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338854 n : ℚ) / 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045140.P17080322324057426261

namespace A045140

/-- `eq[3, A338854(n)/6]` -/
def P17080322324057426261.Spec : Prop :=
  ∀ n, (P17080322324057426261.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P5593076246420468982

`eq[2, A023961(A338854(n))]`
-/

namespace A045140.P5593076246420468982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045140.P5593076246420468982

namespace A045140

/-- `eq[2, A023961(A338854(n))]` -/
def P5593076246420468982.Spec : Prop :=
  ∀ n, (P5593076246420468982.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P7707639395450227191

`eq[4, A292372(A319652(n))]`
-/

namespace A045140.P7707639395450227191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045140.P7707639395450227191

namespace A045140

/-- `eq[4, A292372(A319652(n))]` -/
def P7707639395450227191.Spec : Prop :=
  ∀ n, (P7707639395450227191.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P8875189745664855982

`eq[A040072(n), A338854(n)]`
-/

namespace A045140.P8875189745664855982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040072 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045140.P8875189745664855982

namespace A045140

/-- `eq[A040072(n), A338854(n)]` -/
def P8875189745664855982.Spec : Prop :=
  ∀ n, (P8875189745664855982.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P10255668764131706722

`eq[A114956(n)+2, A338854(n)]`
-/

namespace A045140.P10255668764131706722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114956 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045140.P10255668764131706722

namespace A045140

/-- `eq[A114956(n)+2, A338854(n)]` -/
def P10255668764131706722.Spec : Prop :=
  ∀ n, (P10255668764131706722.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P3277581522112605747

`eq[2, A160383(n)^A160382(n)]`
-/

namespace A045140.P3277581522112605747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160383 n : ℚ) ^ (A160382 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045140.P3277581522112605747

namespace A045140

/-- `eq[2, A160383(n)^A160382(n)]` -/
def P3277581522112605747.Spec : Prop :=
  ∀ n, (P3277581522112605747.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P15281394750874481887

`eq[A139352(n)+1, A160383(n)²]`
-/

namespace A045140.P15281394750874481887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045140.P15281394750874481887

namespace A045140

/-- `eq[A139352(n)+1, A160383(n)²]` -/
def P15281394750874481887.Spec : Prop :=
  ∀ n, (P15281394750874481887.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P4092465525652205536

`eq[A286596(A268444(n))+1, A139352(n)]`
-/

namespace A045140.P4092465525652205536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A268444 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045140.P4092465525652205536

namespace A045140

/-- `eq[A286596(A268444(n))+1, A139352(n)]` -/
def P4092465525652205536.Spec : Prop :=
  ∀ n, (P4092465525652205536.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P957016140857486311

`eq[A160383(n)², A139351(2*n+1)]`
-/

namespace A045140.P957016140857486311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045140.P957016140857486311

namespace A045140

/-- `eq[A160383(n)², A139351(2*n+1)]` -/
def P957016140857486311.Spec : Prop :=
  ∀ n, (P957016140857486311.a n : ℤ) = A045140 (n + 1)

end A045140

/-! ## A045140.P17954582728416080829

`record[A100727(A045141(n+1)-2)]`
-/

namespace A045140.P17954582728416080829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045141 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045140.P17954582728416080829

namespace A045140

/-- `record[A100727(A045141(n+1)-2)]` -/
def P17954582728416080829.Spec : Prop :=
  ∀ n, P17954582728416080829.a n = A045140 (n + 1)

end A045140

/-!
# A045141: Numbers whose base-4 representation contains exactly one 2 and three 3's.

The programs for A045141, there is no canonical definition to state claims against.
-/

/-! ## A045141.P3734180812995570505

`∩[A023714(n+1), A023720(n+1)]`
-/

namespace A045141.P3734180812995570505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045141.P3734180812995570505

/-! ## A045141.P5933219458562905418

`eq[2, A241194(A338854(n))]`
-/

namespace A045141.P5933219458562905418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241194 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045141.P5933219458562905418

/-! ## A045141.P13687640147500187832

`eq[A160383(n), A309952(A338854(n))]`
-/

namespace A045141.P13687640147500187832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045141.P13687640147500187832

/-! ## A045141.P13964156485467132342

`A045064(A187829(2*n+1)+2)`
-/

namespace A045141.P13964156485467132342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045064 (A187829 (2 * n + 1) + 2).toNat

end

end A045141.P13964156485467132342

/-!
# A045142: Numbers whose base-4 representation contains exactly one 2 and four 3's.

The programs for A045142, there is no canonical definition to state claims against.
-/

/-! ## A045142.P17967023175259185647

`A045065(Δ[A043316(n+1)²])`
-/

namespace A045142.P17967023175259185647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043316 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (f1 (n + 1) - f1 n).toNat

end

end A045142.P17967023175259185647

/-! ## A045142.P3907019346797082194

`A045065(Δ[A044913(n+1)²])`
-/

namespace A045142.P3907019346797082194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044913 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (f1 (n + 1) - f1 n).toNat

end

end A045142.P3907019346797082194

/-! ## A045142.P14542703170884566798

`A045065(Δ[A061147(n+1)²])`
-/

namespace A045142.P14542703170884566798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (f1 (n + 1) - f1 n).toNat

end

end A045142.P14542703170884566798

/-! ## A045142.P4302851514017128575

`filter[A031469(2*n+1), A232750(#)]`
-/

namespace A045142.P4302851514017128575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031469 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A045142.P4302851514017128575

/-! ## A045142.P13776963080011947118

`filter[A045065(2*n+1), A232750(#)]`
-/

namespace A045142.P13776963080011947118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A045142.P13776963080011947118

/-!
# A045143: Numbers whose base-4 representation contains exactly two 2's and no 3's.

The programs for A045143, the canonical program `A045143.P2709884776078427861` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045143 has offset 1).

The definition of A045143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045143.P2709884776078427861

`A023717(A023700(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045143

/-- `A023717(A023700(n+1))` -/
def P2709884776078427861.Spec : Prop :=
  ∀ n, P2709884776078427861.a n = A045143 (n + 1)

theorem P2709884776078427861.correct : P2709884776078427861.Spec := by
  intro n
  simp only [A045143, Nat.add_sub_cancel]

end A045143

/-! ## A045143.P17851679349488671857

`A023717(eq[2, A081603(n)])`
-/

namespace A045143.P17851679349488671857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045143.P17851679349488671857

namespace A045143

/-- `A023717(eq[2, A081603(n)])` -/
def P17851679349488671857.Spec : Prop :=
  ∀ n, P17851679349488671857.a n = A045143 (n + 1)

end A045143

/-! ## A045143.P16786243365337150669

`A023717(eq[4, A117592(n)])`
-/

namespace A045143.P16786243365337150669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045143.P16786243365337150669

namespace A045143

/-- `A023717(eq[4, A117592(n)])` -/
def P16786243365337150669.Spec : Prop :=
  ∀ n, P16786243365337150669.a n = A045143 (n + 1)

end A045143

/-! ## A045143.P3358574420862510389

`A023717(eq[4, abs(A117942(n))])`
-/

namespace A045143.P3358574420862510389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117942 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045143.P3358574420862510389

namespace A045143

/-- `A023717(eq[4, abs(A117942(n))])` -/
def P3358574420862510389.Spec : Prop :=
  ∀ n, P3358574420862510389.a n = A045143 (n + 1)

end A045143

/-! ## A045143.P5138478604268362364

`∩[A023715(n+1), A023717(n)]`
-/

namespace A045143.P5138478604268362364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045143.P5138478604268362364

namespace A045143

/-- `∩[A023715(n+1), A023717(n)]` -/
def P5138478604268362364.Spec : Prop :=
  ∀ n, (P5138478604268362364.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P15760370104585200754

`A004468(A045111(n+1))`
-/

namespace A045143.P15760370104585200754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045111 (n + 1)).toNat

end

end A045143.P15760370104585200754

namespace A045143

/-- `A004468(A045111(n+1))` -/
def P15760370104585200754.Spec : Prop :=
  ∀ n, P15760370104585200754.a n = A045143 (n + 1)

end A045143

/-! ## A045143.P17774598724772122792

`eq[4, A338854(n)]`
-/

namespace A045143.P17774598724772122792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045143.P17774598724772122792

namespace A045143

/-- `eq[4, A338854(n)]` -/
def P17774598724772122792.Spec : Prop :=
  ∀ n, (P17774598724772122792.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P3948765054718496243

`eq[1, A292372(A319652(n))-2]`
-/

namespace A045143.P3948765054718496243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A319652 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045143.P3948765054718496243

namespace A045143

/-- `eq[1, A292372(A319652(n))-2]` -/
def P3948765054718496243.Spec : Prop :=
  ∀ n, (P3948765054718496243.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P13963815754155496261

`lt[A338863(A338854(n)+2), 2]`
-/

namespace A045143.P13963815754155496261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A338854 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A045143.P13963815754155496261

namespace A045143

/-- `lt[A338863(A338854(n)+2), 2]` -/
def P13963815754155496261.Spec : Prop :=
  ∀ n, (P13963815754155496261.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P18054602068561659221

`eq[A139352(n)+2, A160382(n)²]`
-/

namespace A045143.P18054602068561659221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045143.P18054602068561659221

namespace A045143

/-- `eq[A139352(n)+2, A160382(n)²]` -/
def P18054602068561659221.Spec : Prop :=
  ∀ n, (P18054602068561659221.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P18218141562121484562

`eq[exp(A160383(n))+1, A160382(n)]`
-/

namespace A045143.P18218141562121484562
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045143.P18218141562121484562

namespace A045143

/-- `eq[exp(A160383(n))+1, A160382(n)]` -/
def P18218141562121484562.Spec : Prop :=
  ∀ n, (P18218141562121484562.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P6405489213776887195

`eq[A001019(A292373(n))+1, A160382(n)]`
-/

namespace A045143.P6405489213776887195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A292373 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045143.P6405489213776887195

namespace A045143

/-- `eq[A001019(A292373(n))+1, A160382(n)]` -/
def P6405489213776887195.Spec : Prop :=
  ∀ n, (P6405489213776887195.a n : ℤ) = A045143 (n + 1)

end A045143

/-! ## A045143.P15064702845064782352

`A163241(A045135(n+1))`
-/

namespace A045143.P15064702845064782352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045135 (n + 1)).toNat

end

end A045143.P15064702845064782352

namespace A045143

/-- `A163241(A045135(n+1))` -/
def P15064702845064782352.Spec : Prop :=
  ∀ n, P15064702845064782352.a n = A045143 (n + 1)

end A045143

/-! ## A045143.P3827351193360894653

`eq[2, A338863(A037460(n))-2]`
-/

namespace A045143.P3827351193360894653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A037460 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045143.P3827351193360894653

namespace A045143

/-- `eq[2, A338863(A037460(n))-2]` -/
def P3827351193360894653.Spec : Prop :=
  ∀ n, (P3827351193360894653.a n : ℤ) = A045143 (n + 1)

end A045143

/-!
# A045144: Numbers whose base-4 representation contains exactly two 2's and one 3.

The programs for A045144, the canonical program `A045144.P13758676442053423134` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045144 has offset 1).

The definition of A045144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045144.P13758676442053423134

`∩[A023715(n+1), A023718(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045144

/-- `∩[A023715(n+1), A023718(n+1)]` -/
def P13758676442053423134.Spec : Prop :=
  ∀ n, (P13758676442053423134.a n : ℤ) = A045144 (n + 1)

theorem P13758676442053423134.correct : P13758676442053423134.Spec := by
  intro n
  simp only [A045144, Nat.add_sub_cancel]

end A045144

/-! ## A045144.P5499286507176446038

`eq[12, A338854(n)]`
-/

namespace A045144.P5499286507176446038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045144.P5499286507176446038

namespace A045144

/-- `eq[12, A338854(n)]` -/
def P5499286507176446038.Spec : Prop :=
  ∀ n, (P5499286507176446038.a n : ℤ) = A045144 (n + 1)

end A045144

/-! ## A045144.P9703903057935319640

`eq[6, A292372(A319652(n))]`
-/

namespace A045144.P9703903057935319640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045144.P9703903057935319640

namespace A045144

/-- `eq[6, A292372(A319652(n))]` -/
def P9703903057935319640.Spec : Prop :=
  ∀ n, (P9703903057935319640.a n : ℤ) = A045144 (n + 1)

end A045144

/-! ## A045144.P1445672713037420015

`eq[2, C(A160382(n), A160383(n))]`
-/

namespace A045144.P1445672713037420015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A160382 n).toNat (A160383 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045144.P1445672713037420015

namespace A045144

/-- `eq[2, C(A160382(n), A160383(n))]` -/
def P1445672713037420015.Spec : Prop :=
  ∀ n, (P1445672713037420015.a n : ℤ) = A045144 (n + 1)

end A045144

/-! ## A045144.P11283987496894366019

`eq[A139352(n)+1, A160382(n)²]`
-/

namespace A045144.P11283987496894366019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045144.P11283987496894366019

namespace A045144

/-- `eq[A139352(n)+1, A160382(n)²]` -/
def P11283987496894366019.Spec : Prop :=
  ∀ n, (P11283987496894366019.a n : ℤ) = A045144 (n + 1)

end A045144

/-! ## A045144.P6341308027544744980

`eq[3, A139352(n)*A139352(A213370(n))]`
-/

namespace A045144.P6341308027544744980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A139352 (A213370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045144.P6341308027544744980

namespace A045144

/-- `eq[3, A139352(n)*A139352(A213370(n))]` -/
def P6341308027544744980.Spec : Prop :=
  ∀ n, (P6341308027544744980.a n : ℤ) = A045144 (n + 1)

end A045144

/-! ## A045144.P14862329610538842808

`eq[12, A338863(A037460(n))]`
-/

namespace A045144.P14862329610538842808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338863 (A037460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045144.P14862329610538842808

namespace A045144

/-- `eq[12, A338863(A037460(n))]` -/
def P14862329610538842808.Spec : Prop :=
  ∀ n, (P14862329610538842808.a n : ℤ) = A045144 (n + 1)

end A045144

/-!
# A045145: Numbers whose base-4 representation contains exactly two 2's and two 3's.

The programs for A045145, the canonical program `A045145.P17634236122104813282` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045145 has offset 1).

The definition of A045145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045145.P7564623628833635177

`∩[A023715(n+1), A039006(n+1)]`
-/

namespace A045145.P7564623628833635177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045145.P7564623628833635177

namespace A045145

/-- `∩[A023715(n+1), A039006(n+1)]` -/
def P7564623628833635177.Spec : Prop :=
  ∀ n, (P7564623628833635177.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P13208242719064062099

`∩[A023715(n+1), A039282(n+1)]`
-/

namespace A045145.P13208242719064062099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045145.P13208242719064062099

namespace A045145

/-- `∩[A023715(n+1), A039282(n+1)]` -/
def P13208242719064062099.Spec : Prop :=
  ∀ n, (P13208242719064062099.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P17634236122104813282

`∩[A023715(n+1), A023719(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045145

/-- `∩[A023715(n+1), A023719(n+1)]` -/
def P17634236122104813282.Spec : Prop :=
  ∀ n, (P17634236122104813282.a n : ℤ) = A045145 (n + 1)

theorem P17634236122104813282.correct : P17634236122104813282.Spec := by
  intro n
  simp only [A045145, Nat.add_sub_cancel]

end A045145

/-! ## A045145.P14660061304572043475

`∩[A023719(n+1), A039006(n+1)]`
-/

namespace A045145.P14660061304572043475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045145.P14660061304572043475

namespace A045145

/-- `∩[A023719(n+1), A039006(n+1)]` -/
def P14660061304572043475.Spec : Prop :=
  ∀ n, (P14660061304572043475.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P6381407914586188248

`∩[A023719(n+1), A039282(n+1)]`
-/

namespace A045145.P6381407914586188248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045145.P6381407914586188248

namespace A045145

/-- `∩[A023719(n+1), A039282(n+1)]` -/
def P6381407914586188248.Spec : Prop :=
  ∀ n, (P6381407914586188248.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P13850416650437434340

`eq[36, A338854(n)]`
-/

namespace A045145.P13850416650437434340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045145.P13850416650437434340

namespace A045145

/-- `eq[36, A338854(n)]` -/
def P13850416650437434340.Spec : Prop :=
  ∀ n, (P13850416650437434340.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P12605005834023851970

`eq[12, A292372(A319652(n))]`
-/

namespace A045145.P12605005834023851970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045145.P12605005834023851970

namespace A045145

/-- `eq[12, A292372(A319652(n))]` -/
def P12605005834023851970.Spec : Prop :=
  ∀ n, (P12605005834023851970.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P6755552425792329906

`eq[8, A139352(n)*A160382(n)]`
-/

namespace A045145.P6755552425792329906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045145.P6755552425792329906

namespace A045145

/-- `eq[8, A139352(n)*A160382(n)]` -/
def P6755552425792329906.Spec : Prop :=
  ∀ n, (P6755552425792329906.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P1022809645812842406

`eq[8, A139352(n)*A160383(n)]`
-/

namespace A045145.P1022809645812842406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045145.P1022809645812842406

namespace A045145

/-- `eq[8, A139352(n)*A160383(n)]` -/
def P1022809645812842406.Spec : Prop :=
  ∀ n, (P1022809645812842406.a n : ℤ) = A045145 (n + 1)

end A045145

/-! ## A045145.P4435731624147054985

`record[A100727(A045146(n+1)-2)]`
-/

namespace A045145.P4435731624147054985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045146 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045145.P4435731624147054985

namespace A045145

/-- `record[A100727(A045146(n+1)-2)]` -/
def P4435731624147054985.Spec : Prop :=
  ∀ n, P4435731624147054985.a n = A045145 (n + 1)

end A045145

/-!
# A045146: Numbers whose base-4 representation contains exactly two 2's and three 3's.

The programs for A045146, there is no canonical definition to state claims against.
-/

/-! ## A045146.P762105672001422050

`∩[A023715(n+1), A023720(n+1)]`
-/

namespace A045146.P762105672001422050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045146.P762105672001422050

/-! ## A045146.P16064792927477321610

`eq[36, A000010(A338854(n))]`
-/

namespace A045146.P16064792927477321610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045146.P16064792927477321610

/-! ## A045146.P2605989235670450908

`A053645(A045151(n+41))`
-/

namespace A045146.P2605989235670450908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A045151 (n + 41)).toNat

end

end A045146.P2605989235670450908

/-! ## A045146.P6869141324565632616

`eq[13, A143182(A319720(n))]`
-/

namespace A045146.P6869141324565632616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045146.P6869141324565632616

/-! ## A045146.P17829922730686248096

`filter[A045112(2*(n+1)), A094912(#)]`
-/

namespace A045146.P17829922730686248096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045112 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A094912 (f1 j).toNat = 1) n)

end

end A045146.P17829922730686248096

/-!
# A045147: Numbers whose base-4 representation contains exactly two 2's and four 3's.

The programs for A045147, there is no canonical definition to state claims against.
-/

/-! ## A045147.P2863675281083852162

`filter[A045065(2*n+1), A094912(#)]`
-/

namespace A045147.P2863675281083852162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A094912 (f1 j).toNat = 1) n)

end

end A045147.P2863675281083852162

/-! ## A045147.P17609077760348807632

`A004524(A045128(n+1))`
-/

namespace A045147.P17609077760348807632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A045128 (n + 1)).toNat

end

end A045147.P17609077760348807632

/-! ## A045147.P12268156488767385824

`A329180(A045123(n+1))`
-/

namespace A045147.P12268156488767385824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A045123 (n + 1)).toNat

end

end A045147.P12268156488767385824

/-! ## A045147.P14421266773621576459

`A046667(A045128(n+1)+1)`
-/

namespace A045147.P14421266773621576459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A045128 (n + 1) + 1).toNat

end

end A045147.P14421266773621576459

/-! ## A045147.P1323964454800936691

`A140106(A045128(n+1)+1)`
-/

namespace A045147.P1323964454800936691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A045128 (n + 1) + 1).toNat

end

end A045147.P1323964454800936691

/-!
# A045148: Numbers whose base-4 representation contains exactly three 2's and no 3's.

The programs for A045148, the canonical program `A045148.P17079126829677960024` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045148 has offset 1).

The definition of A045148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045148.P17079126829677960024

`A023717(A023701(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045148

/-- `A023717(A023701(n+1))` -/
def P17079126829677960024.Spec : Prop :=
  ∀ n, P17079126829677960024.a n = A045148 (n + 1)

theorem P17079126829677960024.correct : P17079126829677960024.Spec := by
  intro n
  simp only [A045148, Nat.add_sub_cancel]

end A045148

/-! ## A045148.P4230672352317820876

`A023717(eq[3, A081603(n)])`
-/

namespace A045148.P4230672352317820876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045148.P4230672352317820876

namespace A045148

/-- `A023717(eq[3, A081603(n)])` -/
def P4230672352317820876.Spec : Prop :=
  ∀ n, P4230672352317820876.a n = A045148 (n + 1)

end A045148

/-! ## A045148.P13156920686573561273

`A023717(eq[8, A117592(n)])`
-/

namespace A045148.P13156920686573561273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045148.P13156920686573561273

namespace A045148

/-- `A023717(eq[8, A117592(n)])` -/
def P13156920686573561273.Spec : Prop :=
  ∀ n, P13156920686573561273.a n = A045148 (n + 1)

end A045148

/-! ## A045148.P17685157003966717678

`∩[A023716(n+1), A023717(n)]`
-/

namespace A045148.P17685157003966717678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045148.P17685157003966717678

namespace A045148

/-- `∩[A023716(n+1), A023717(n)]` -/
def P17685157003966717678.Spec : Prop :=
  ∀ n, (P17685157003966717678.a n : ℤ) = A045148 (n + 1)

end A045148

/-! ## A045148.P11954190171812242867

`A004468(A045112(n+1))`
-/

namespace A045148.P11954190171812242867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045112 (n + 1)).toNat

end

end A045148.P11954190171812242867

namespace A045148

/-- `A004468(A045112(n+1))` -/
def P11954190171812242867.Spec : Prop :=
  ∀ n, P11954190171812242867.a n = A045148 (n + 1)

end A045148

/-! ## A045148.P232042517126807007

`eq[8, A338854(n)]`
-/

namespace A045148.P232042517126807007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045148.P232042517126807007

namespace A045148

/-- `eq[8, A338854(n)]` -/
def P232042517126807007.Spec : Prop :=
  ∀ n, (P232042517126807007.a n : ℤ) = A045148 (n + 1)

end A045148

/-! ## A045148.P440586610008012558

`lt[A338854(n), A139352(n)²]`
-/

namespace A045148.P440586610008012558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045148.P440586610008012558

namespace A045148

/-- `lt[A338854(n), A139352(n)²]` -/
def P440586610008012558.Spec : Prop :=
  ∀ n, (P440586610008012558.a n : ℤ) = A045148 (n + 1)

end A045148

/-! ## A045148.P3592752259405535378

`lt[A338854(n), A160382(n)²]`
-/

namespace A045148.P3592752259405535378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045148.P3592752259405535378

namespace A045148

/-- `lt[A338854(n), A160382(n)²]` -/
def P3592752259405535378.Spec : Prop :=
  ∀ n, (P3592752259405535378.a n : ℤ) = A045148 (n + 1)

end A045148

/-! ## A045148.P12679087050598180253

`eq[exp(A160383(n))+2, A160382(n)]`
-/

namespace A045148.P12679087050598180253
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045148.P12679087050598180253

namespace A045148

/-- `eq[exp(A160383(n))+2, A160382(n)]` -/
def P12679087050598180253.Spec : Prop :=
  ∀ n, (P12679087050598180253.a n : ℤ) = A045148 (n + 1)

end A045148

/-! ## A045148.P18239333939996474047

`eq[A001019(A292373(n))+2, A160382(n)]`
-/

namespace A045148.P18239333939996474047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A292373 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045148.P18239333939996474047

namespace A045148

/-- `eq[A001019(A292373(n))+2, A160382(n)]` -/
def P18239333939996474047.Spec : Prop :=
  ∀ n, (P18239333939996474047.a n : ℤ) = A045148 (n + 1)

end A045148

/-! ## A045148.P16651193329737691341

`A163241(A045136(n+1))`
-/

namespace A045148.P16651193329737691341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045136 (n + 1)).toNat

end

end A045148.P16651193329737691341

namespace A045148

/-- `A163241(A045136(n+1))` -/
def P16651193329737691341.Spec : Prop :=
  ∀ n, P16651193329737691341.a n = A045148 (n + 1)

end A045148

/-! ## A045148.P16745909047757904208

`A002264(A045136(n+1)+A045112(n+1))`
-/

namespace A045148.P16745909047757904208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045136 (n + 1) + A045112 (n + 1)).toNat

end

end A045148.P16745909047757904208

namespace A045148

/-- `A002264(A045136(n+1)+A045112(n+1))` -/
def P16745909047757904208.Spec : Prop :=
  ∀ n, P16745909047757904208.a n = A045148 (n + 1)

end A045148

/-!
# A045149: Numbers whose base-4 representation contains exactly three 2's and one 3.

The programs for A045149, there is no canonical definition to state claims against.
-/

/-! ## A045149.P10111427463135796261

`∩[A023716(n+1), A023718(n+1)]`
-/

namespace A045149.P10111427463135796261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045149.P10111427463135796261

/-! ## A045149.P4388554442803894219

`eq[24, A338854(n)]`
-/

namespace A045149.P4388554442803894219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045149.P4388554442803894219

/-! ## A045149.P13694038846988705285

`record[-A130507(A045150(n+1))]`
-/

namespace A045149.P13694038846988705285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A130507 (A045150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045149.P13694038846988705285

/-! ## A045149.P3417865831673295409

`record[A130507(A045154(n+2))-1]`
-/

namespace A045149.P3417865831673295409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A045154 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045149.P3417865831673295409

/-! ## A045149.P16988336622979380053

`record[A054576(A045150(n+1)-3)]`
-/

namespace A045149.P16988336622979380053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045150 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045149.P16988336622979380053

/-! ## A045149.P16069397552605647116

`record[A054576(xor(3, A045150(n+1)))]`
-/

namespace A045149.P16069397552605647116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.xor 3 (A045150 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045149.P16069397552605647116

/-! ## A045149.P3722842165160439581

`record[A008683(9*(n+1))-A130507(A045150(n+1))]`
-/

namespace A045149.P3722842165160439581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (9 * (n + 1)) - A130507 (A045150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045149.P3722842165160439581

/-!
# A045150: Numbers whose base-4 representation contains exactly three 2's and two 3's.

The programs for A045150, there is no canonical definition to state claims against.
-/

/-! ## A045150.P13114343504417674476

`∩[A023716(n+1), A023719(n+1)]`
-/

namespace A045150.P13114343504417674476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045150.P13114343504417674476

/-! ## A045150.P10482116036547657605

`eq[6, A063974(A338854(n))]`
-/

namespace A045150.P10482116036547657605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (A338854 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045150.P10482116036547657605

/-! ## A045150.P11799743401174573847

`record[-A130507(A045151(n+1))]`
-/

namespace A045150.P11799743401174573847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A130507 (A045151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045150.P11799743401174573847

/-! ## A045150.P2552808198448999140

`eq[21, A306595(n)]`
-/

namespace A045150.P2552808198448999140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045150.P2552808198448999140

/-! ## A045150.P382104137051121128

`∩[A045040(n+1), A045111(n+1)]`
-/

namespace A045150.P382104137051121128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045150.P382104137051121128

/-!
# A045151: Numbers whose base-4 representation contains exactly three 2's and three 3's.

The programs for A045151, there is no canonical definition to state claims against.
-/

/-! ## A045151.P17250149553249642036

`∩[A023716(n+1), A023720(n+1)]`
-/

namespace A045151.P17250149553249642036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045151.P17250149553249642036

/-! ## A045151.P4596226652108742059

`A004524(A045132(n+1))`
-/

namespace A045151.P4596226652108742059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A045132 (n + 1)).toNat

end

end A045151.P4596226652108742059

/-! ## A045151.P15498259113431000246

`A329180(A045127(n+1))`
-/

namespace A045151.P15498259113431000246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A045127 (n + 1)).toNat

end

end A045151.P15498259113431000246

/-! ## A045151.P11319471271558480717

`A046667(A045132(n+1)+1)`
-/

namespace A045151.P11319471271558480717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A045132 (n + 1) + 1).toNat

end

end A045151.P11319471271558480717

/-! ## A045151.P12149610454354813278

`A065423(A045132(n+1)+1)`
-/

namespace A045151.P12149610454354813278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A045132 (n + 1) + 1).toNat

end

end A045151.P12149610454354813278

/-!
# A045152: Numbers whose base-4 representation contains exactly three 2's and four 3's.

The programs for A045152, there is no canonical definition to state claims against.
-/

/-! ## A045152.P921835764031542412

`A006015(A045104(n+1))`
-/

namespace A045152.P921835764031542412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045104 (n + 1)).toNat

end

end A045152.P921835764031542412

/-! ## A045152.P15476482572745177097

`A057300(A045128(n+1))`
-/

namespace A045152.P15476482572745177097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045128 (n + 1)).toNat

end

end A045152.P15476482572745177097

/-! ## A045152.P2222554653563543396

`A066182(A045133(n+1))/2`
-/

namespace A045152.P2222554653563543396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066182 (A045133 (n + 1)).toNat : ℚ) / 2

end

end A045152.P2222554653563543396

/-! ## A045152.P1344670577369337278

`∩[A045065(n+1), A045088(n+1)]`
-/

namespace A045152.P1344670577369337278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045152.P1344670577369337278

/-! ## A045152.P5098428413574290451

`A008486(A045104(n+1))-A045128(n+1)`
-/

namespace A045152.P5098428413574290451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045104 (n + 1)).toNat - A045128 (n + 1)

end

end A045152.P5098428413574290451

/-!
# A045153: Numbers whose base-4 representation contains exactly four 2's and no 3's.

The programs for A045153, there is no canonical definition to state claims against.
-/

/-! ## A045153.P12458774878098792693

`(A045137(n+1)+A045113(n+1))/3`
-/

namespace A045153.P12458774878098792693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045137 (n + 1) + A045113 (n + 1) : ℚ) / 3

end

end A045153.P12458774878098792693

/-! ## A045153.P15175148590528673970

`A023717(A023702(n+1))`
-/

namespace A045153.P15175148590528673970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023702 (n + 1)).toNat

end

end A045153.P15175148590528673970

/-! ## A045153.P10642300771271901432

`A023717(eq[4, A081603(n)])`
-/

namespace A045153.P10642300771271901432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045153.P10642300771271901432

/-! ## A045153.P12072759942689504561

`A004468(A045113(n+1))`
-/

namespace A045153.P12072759942689504561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045113 (n + 1)).toNat

end

end A045153.P12072759942689504561

/-! ## A045153.P14560467722667343605

`and(A004468(A045137(n+1)), A045137(n+1))`
-/

namespace A045153.P14560467722667343605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004468 (A045137 (n + 1)).toNat) (A045137 (n + 1))

end

end A045153.P14560467722667343605

/-! ## A045153.P9272115758605676016

`eq[4, sqrt(A338854(n))]`
-/

namespace A045153.P9272115758605676016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A338854 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A045153.P9272115758605676016

/-! ## A045153.P4514369345637543213

`A163241(A045137(n+1))`
-/

namespace A045153.P4514369345637543213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045137 (n + 1)).toNat

end

end A045153.P4514369345637543213

/-! ## A045153.P10844387132313015047

`A002264(A045137(n+1)+A045113(n+1))`
-/

namespace A045153.P10844387132313015047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045137 (n + 1) + A045113 (n + 1)).toNat

end

end A045153.P10844387132313015047

/-! ## A045153.P16337011018275366420

`A123087(A045137(n+1)+A045113(n+1))`
-/

namespace A045153.P16337011018275366420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A045137 (n + 1) + A045113 (n + 1)).toNat

end

end A045153.P16337011018275366420

/-!
# A045154: Numbers whose base-4 representation contains exactly four 2's and one 3.

The programs for A045154, the canonical program `A045154.P2972587594266397419` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045154 has offset 1).

The definition of A045154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045154.P2972587594266397419

`eq[48, A338854(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045154

/-- `eq[48, A338854(n)]` -/
def P2972587594266397419.Spec : Prop :=
  ∀ n, (P2972587594266397419.a n : ℤ) = A045154 (n + 1)

theorem P2972587594266397419.correct : P2972587594266397419.Spec := by
  intro n
  simp only [A045154, Nat.add_sub_cancel]

end A045154

/-! ## A045154.P6957151916655861447

`record[-A130507(A045155(n+1))]`
-/

namespace A045154.P6957151916655861447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A130507 (A045155 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045154.P6957151916655861447

namespace A045154

/-- `record[-A130507(A045155(n+1))]` -/
def P6957151916655861447.Spec : Prop :=
  ∀ n, P6957151916655861447.a n = A045154 (n + 1)

end A045154

/-! ## A045154.P6310217058009853567

`record[A130507(A045155(n+1)-1)-1]`
-/

namespace A045154.P6310217058009853567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A045155 (n + 1) - 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045154.P6310217058009853567

namespace A045154

/-- `record[A130507(A045155(n+1)-1)-1]` -/
def P6310217058009853567.Spec : Prop :=
  ∀ n, P6310217058009853567.a n = A045154 (n + 1)

end A045154

/-!
# A045155: Numbers whose base-4 representation contains exactly four 2's and two 3's.

The programs for A045155, there is no canonical definition to state claims against.
-/

/-! ## A045155.P2324833955510214376

`A329180(A045131(n+1))`
-/

namespace A045155.P2324833955510214376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A045131 (n + 1)).toNat

end

end A045155.P2324833955510214376

/-! ## A045155.P16825996955140251699

`∩[A045041(n+1), A045111(n+1)]`
-/

namespace A045155.P16825996955140251699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045155.P16825996955140251699

/-! ## A045155.P9270687909464343577

`∩[A045063(n+1), A045089(n+1)]`
-/

namespace A045155.P9270687909464343577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045155.P9270687909464343577

/-! ## A045155.P4860571603945032848

`∩[A045063(2*n+1), A045088(n+2)-1]`
-/

namespace A045155.P4860571603945032848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045063 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045088 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045155.P4860571603945032848

/-! ## A045155.P15075599771993016250

`A057300(A045131(n+1)^A347526(n+1))`
-/

namespace A045155.P15075599771993016250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (SequenceMachineLib.roundAway ((A045131 (n + 1) : ℚ) ^ (A347526 (n + 1) : ℤ))).toNat

end

end A045155.P15075599771993016250

/-!
# A045156: Numbers whose base-4 representation contains exactly four 2's and three 3's.

The programs for A045156, there is no canonical definition to state claims against.
-/

/-! ## A045156.P10498530348390310924

`A006015(A045108(n+1))`
-/

namespace A045156.P10498530348390310924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045108 (n + 1)).toNat

end

end A045156.P10498530348390310924

/-! ## A045156.P10654035898716064130

`A057300(A045132(n+1))`
-/

namespace A045156.P10654035898716064130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045132 (n + 1)).toNat

end

end A045156.P10654035898716064130

/-! ## A045156.P15267221476037827270

`∩[A045041(n+1), A045112(n+1)]`
-/

namespace A045156.P15267221476037827270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045156.P15267221476037827270

/-! ## A045156.P17043085237132392773

`∩[A045064(n+1), A045089(n+1)]`
-/

namespace A045156.P17043085237132392773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045156.P17043085237132392773

/-! ## A045156.P3485715537017901165

`A255589(2*A045132(n+1))`
-/

namespace A045156.P3485715537017901165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (2 * A045132 (n + 1)).toNat

end

end A045156.P3485715537017901165

/-!
# A045157: Numbers whose base-4 representation contains exactly four 2's and four 3's.

The programs for A045157, there is no canonical definition to state claims against.
-/

/-! ## A045157.P7241041707535333128

`A163356(A045109(n+1))`
-/

namespace A045157.P7241041707535333128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A045109 (n + 1)).toNat

end

end A045157.P7241041707535333128

/-! ## A045157.P3334245797383892486

`∩[A045065(n+1), A045089(n+1)]`
-/

namespace A045157.P3334245797383892486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045157.P3334245797383892486

/-!
# A045158: Numbers whose base-5 representation contains no 0's and exactly one 1.

The programs for A045158, the canonical program `A045158.P3664676629981563040` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045158 has offset 1).

The definition of A045158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045158.P3664676629981563040

`∩[A023721(n+1), A023726(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045158

/-- `∩[A023721(n+1), A023726(n+1)]` -/
def P3664676629981563040.Spec : Prop :=
  ∀ n, (P3664676629981563040.a n : ℤ) = A045158 (n + 1)

theorem P3664676629981563040.correct : P3664676629981563040.Spec := by
  intro n
  simp only [A045158, Nat.add_sub_cancel]

end A045158

/-!
# A045159: Numbers whose base-5 representation contains no 0's and exactly two 1's.

The programs for A045159, there is no canonical definition to state claims against.
-/

/-! ## A045159.P11816950176271992875

`∩[A023721(n+1), A023727(n+1)]`
-/

namespace A045159.P11816950176271992875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045159.P11816950176271992875

/-! ## A045159.P5600366583918424019

`filter[A023727(n+1), A225181(#)]`
-/

namespace A045159.P5600366583918424019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A045159.P5600366583918424019

/-! ## A045159.P6699158267335064684

`∩[A023727(n+1), A206718(n+1)]`
-/

namespace A045159.P6699158267335064684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045159.P6699158267335064684

/-! ## A045159.P13477713011598907029

`A023727(n+3)%A023731(A048694(n))`
-/

namespace A045159.P13477713011598907029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023727 (n + 3)) (A023731 (A048694 n).toNat)

end

end A045159.P13477713011598907029

/-! ## A045159.P4074273560393303050

`∩[A023727(n+1), A229300(n+1)]`
-/

namespace A045159.P4074273560393303050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045159.P4074273560393303050

/-!
# A045160: Numbers whose base-5 representation contains no 0's and exactly three 1's.

The programs for A045160, there is no canonical definition to state claims against.
-/

/-! ## A045160.P189800637339228857

`∩[A023721(n+1), A023728(n+1)]`
-/

namespace A045160.P189800637339228857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045160.P189800637339228857

/-! ## A045160.P3361166222102850197

`A023728(n+4)%A353399(4*n+10)`
-/

namespace A045160.P3361166222102850197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023728 (n + 4)) (A353399 (4 * n + 10))

end

end A045160.P3361166222102850197

/-! ## A045160.P17255081719085534209

`A023728(n+4)%A046691(A254716(n+2))`
-/

namespace A045160.P17255081719085534209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023728 (n + 4)) (A046691 (A254716 (n + 2)).toNat)

end

end A045160.P17255081719085534209

/-!
# A045161: Numbers whose base-5 representation contains exactly one 0 and no 1's.

The programs for A045161, there is no canonical definition to state claims against.
-/

/-! ## A045161.P13619532809958457987

`A023725(A023706(n+1)+1)`
-/

namespace A045161.P13619532809958457987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023706 (n + 1) + 1).toNat

end

end A045161.P13619532809958457987

/-! ## A045161.P15366044541869647067

`∩[A023722(n+1), A023725(n+1)]`
-/

namespace A045161.P15366044541869647067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045161.P15366044541869647067

/-!
# A045162: Numbers whose base-5 representation contains exactly one 0 and one 1.

The programs for A045162, there is no canonical definition to state claims against.
-/

/-! ## A045162.P3945004454104659290

`∩[A023726(n+1), A039007(n+1)]`
-/

namespace A045162.P3945004454104659290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P3945004454104659290

/-! ## A045162.P1966539645836347453

`∩[A023726(n+1), A039283(n+1)]`
-/

namespace A045162.P1966539645836347453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P1966539645836347453

/-! ## A045162.P7711377453863490341

`∩[A023722(n+1), A023726(n+1)]`
-/

namespace A045162.P7711377453863490341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P7711377453863490341

/-! ## A045162.P11373299370557456561

`∩[A023722(n+1), A039007(n+1)]`
-/

namespace A045162.P11373299370557456561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P11373299370557456561

/-! ## A045162.P9289207355032325235

`∩[A023722(n+1), A039283(n+1)]`
-/

namespace A045162.P9289207355032325235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P9289207355032325235

/-! ## A045162.P2185950963247221363

`∩[A023726(n+1), A043349(n+1)]`
-/

namespace A045162.P2185950963247221363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P2185950963247221363

/-! ## A045162.P18343615688662062989

`∩[A039007(n+1), A043349(n+1)]`
-/

namespace A045162.P18343615688662062989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P18343615688662062989

/-! ## A045162.P16118642969223283275

`∩[A039283(n+1), A043349(n+1)]`
-/

namespace A045162.P16118642969223283275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045162.P16118642969223283275

/-!
# A045163: Numbers whose base-5 representation contains exactly one 0 and two 1's.

The programs for A045163, there is no canonical definition to state claims against.
-/

/-! ## A045163.P1345465160472396204

`∩[A023727(n+1), A043349(n+1)]`
-/

namespace A045163.P1345465160472396204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045163.P1345465160472396204

/-! ## A045163.P1077419073718473377

`∩[A023722(n+1), A023727(n+1)]`
-/

namespace A045163.P1077419073718473377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045163.P1077419073718473377

/-!
# A045164: Numbers whose base-5 representation contains exactly one 0 and three 1's.

The programs for A045164, there is no canonical definition to state claims against.
-/

/-! ## A045164.P3423518643011450522

`∩[A023722(n+1), A023728(n+1)]`
-/

namespace A045164.P3423518643011450522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045164.P3423518643011450522

/-! ## A045164.P3005964153538673791

`∩[A023728(n+1), A043349(n+1)]`
-/

namespace A045164.P3005964153538673791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045164.P3005964153538673791

/-!
# A045165: Numbers whose base-5 representation contains exactly two 0's and no 1's.

The programs for A045165, there is no canonical definition to state claims against.
-/

/-! ## A045165.P3872795732433989985

`A023725(A023707(n+1)+1)`
-/

namespace A045165.P3872795732433989985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023707 (n + 1) + 1).toNat

end

end A045165.P3872795732433989985

/-! ## A045165.P14054902614413117071

`∩[A023723(n+1), A023725(n+1)]`
-/

namespace A045165.P14054902614413117071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045165.P14054902614413117071

/-!
# A045166: Numbers whose base-5 representation contains exactly two 0's and one 1.

The programs for A045166, the canonical program `A045166.P14364888551667959188` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045166 has offset 1).

The definition of A045166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045166.P14364888551667959188

`∩[A023723(n+1), A023726(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045166

/-- `∩[A023723(n+1), A023726(n+1)]` -/
def P14364888551667959188.Spec : Prop :=
  ∀ n, (P14364888551667959188.a n : ℤ) = A045166 (n + 1)

theorem P14364888551667959188.correct : P14364888551667959188.Spec := by
  intro n
  simp only [A045166, Nat.add_sub_cancel]

end A045166

/-! ## A045166.P16234074893542046785

`∩[A023723(n+1), A137469(n+1)]`
-/

namespace A045166.P16234074893542046785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045166.P16234074893542046785

namespace A045166

/-- `∩[A023723(n+1), A137469(n+1)]` -/
def P16234074893542046785.Spec : Prop :=
  ∀ n, (P16234074893542046785.a n : ℤ) = A045166 (n + 1)

end A045166

/-!
# A045167: Numbers whose base-5 representation contains exactly two 0's and two 1's.

The programs for A045167, there is no canonical definition to state claims against.
-/

/-! ## A045167.P11893009564318576440

`∩[A023723(n+1), A039283(n+1)]`
-/

namespace A045167.P11893009564318576440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045167.P11893009564318576440

/-! ## A045167.P9073710979200748155

`∩[A023723(n+1), A039007(n+1)]`
-/

namespace A045167.P9073710979200748155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045167.P9073710979200748155

/-! ## A045167.P16028749190288786093

`∩[A023723(n+1), A023727(n+1)]`
-/

namespace A045167.P16028749190288786093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045167.P16028749190288786093

/-! ## A045167.P14828124611740436223

`∩[A023727(n+1), A039007(n+1)]`
-/

namespace A045167.P14828124611740436223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045167.P14828124611740436223

/-! ## A045167.P3934760691924424633

`∩[A023727(n+1), A039283(n+1)]`
-/

namespace A045167.P3934760691924424633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045167.P3934760691924424633

/-!
# A045168: Numbers whose base-5 representation contains exactly two 0's and three 1's.

The programs for A045168, there is no canonical definition to state claims against.
-/

/-! ## A045168.P6769921392516407114

`∩[A023723(n+1), A023728(n+1)]`
-/

namespace A045168.P6769921392516407114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045168.P6769921392516407114

/-! ## A045168.P8899610847351890184

`A059807(A045183(n+1))`
-/

namespace A045168.P8899610847351890184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059807 (A045183 (n + 1)).toNat

end

end A045168.P8899610847351890184

/-!
# A045169: Numbers whose base-5 representation contains exactly three 0's and no 1's.

The programs for A045169, there is no canonical definition to state claims against.
-/

/-! ## A045169.P14326542946318276288

`A023725(A023708(n+1)+1)`
-/

namespace A045169.P14326542946318276288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (A023708 (n + 1) + 1).toNat

end

end A045169.P14326542946318276288

/-! ## A045169.P426934516383524695

`∩[A023724(n+1), A023725(n+1)]`
-/

namespace A045169.P426934516383524695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045169.P426934516383524695

/-!
# A045170: Numbers whose base-5 representation contains exactly three 0's and one 1.

The programs for A045170, there is no canonical definition to state claims against.
-/

/-! ## A045170.P3081651044222631302

`∩[A023724(n+1), A023726(n+1)]`
-/

namespace A045170.P3081651044222631302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045170.P3081651044222631302

/-!
# A045171: Numbers whose base-5 representation contains exactly three 0's and two 1's.

The programs for A045171, there is no canonical definition to state claims against.
-/

/-! ## A045171.P1276663675196830424

`∩[A023724(n+1), A023727(n+1)]`
-/

namespace A045171.P1276663675196830424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045171.P1276663675196830424

/-!
# A045172: Numbers whose base-5 representation contains exactly three 0's and three 1's.

The programs for A045172, there is no canonical definition to state claims against.
-/

/-! ## A045172.P17292396397191089171

`∩[A023724(n+1), A023728(n+1)]`
-/

namespace A045172.P17292396397191089171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045172.P17292396397191089171

/-! ## A045172.P9298082624937170423

`A001281(A045187(n+1))`
-/

namespace A045172.P9298082624937170423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A045187 (n + 1)).toNat

end

end A045172.P9298082624937170423

/-! ## A045172.P11868398734186955613

`A004515(A045202(n+1))`
-/

namespace A045172.P11868398734186955613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 (A045202 (n + 1)).toNat

end

end A045172.P11868398734186955613

/-! ## A045172.P1452568484156192844

`A004524(A045187(n+1)+1)`
-/

namespace A045172.P1452568484156192844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A045187 (n + 1) + 1).toNat

end

end A045172.P1452568484156192844

/-! ## A045172.P2634798060959955275

`A004526(A045187(n+1)+1)`
-/

namespace A045172.P2634798060959955275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045187 (n + 1) + 1).toNat

end

end A045172.P2634798060959955275

/-!
# A045173: Numbers whose base-5 representation contains no 0's and exactly one 2.

The programs for A045173, the canonical program `A045173.P11398546931757965663` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045173 has offset 1).

The definition of A045173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045173.P11398546931757965663

`∩[A023721(n+1), A023730(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045173

/-- `∩[A023721(n+1), A023730(n+1)]` -/
def P11398546931757965663.Spec : Prop :=
  ∀ n, (P11398546931757965663.a n : ℤ) = A045173 (n + 1)

theorem P11398546931757965663.correct : P11398546931757965663.Spec := by
  intro n
  simp only [A045173, Nat.add_sub_cancel]

end A045173

/-!
# A045174: Numbers whose base-5 representation contains no 0's and exactly two 2's.

The programs for A045174, the canonical program `A045174.P2012388389799234288` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045174 has offset 1).

The definition of A045174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045174.P2012388389799234288

`∩[A023721(n+1), A023731(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045174

/-- `∩[A023721(n+1), A023731(n+1)]` -/
def P2012388389799234288.Spec : Prop :=
  ∀ n, (P2012388389799234288.a n : ℤ) = A045174 (n + 1)

theorem P2012388389799234288.correct : P2012388389799234288.Spec := by
  intro n
  simp only [A045174, Nat.add_sub_cancel]

end A045174

/-!
# A045175: Numbers whose base-5 representation contains no 0's and exactly three 2's.

The programs for A045175, there is no canonical definition to state claims against.
-/

/-! ## A045175.P3290687064844453987

`∩[A023721(n+1), A023732(n+1)]`
-/

namespace A045175.P3290687064844453987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045175.P3290687064844453987

/-!
# A045176: Numbers whose base-5 representation contains exactly one 0 and no 2's.

The programs for A045176, there is no canonical definition to state claims against.
-/

/-! ## A045176.P7046243096412939372

`A023729(A023706(n+1)+1)`
-/

namespace A045176.P7046243096412939372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023706 (n + 1) + 1).toNat

end

end A045176.P7046243096412939372

/-! ## A045176.P8027394859801102427

`∩[A023722(n+1), A023729(n+1)]`
-/

namespace A045176.P8027394859801102427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045176.P8027394859801102427

/-! ## A045176.P12487749814059501252

`A023722(lt[A222753(n), A360241(n)])`
-/

namespace A045176.P12487749814059501252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222753 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A045176.P12487749814059501252

/-!
# A045177: Numbers whose base-5 representation contains exactly one 0 and one 2.

The programs for A045177, there is no canonical definition to state claims against.
-/

/-! ## A045177.P12823453400702492845

`∩[A023730(n+1), A039008(n+1)]`
-/

namespace A045177.P12823453400702492845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P12823453400702492845

/-! ## A045177.P14711212183143981465

`∩[A023730(n+1), A039284(n+1)]`
-/

namespace A045177.P14711212183143981465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P14711212183143981465

/-! ## A045177.P15783162188840034640

`∩[A023722(n+1), A023730(n+1)]`
-/

namespace A045177.P15783162188840034640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P15783162188840034640

/-! ## A045177.P14429275511350425455

`∩[A023722(n+1), A039008(n+1)]`
-/

namespace A045177.P14429275511350425455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P14429275511350425455

/-! ## A045177.P8429177321985486213

`∩[A023722(n+1), A039284(n+1)]`
-/

namespace A045177.P8429177321985486213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P8429177321985486213

/-! ## A045177.P9836198229215401392

`∩[A023730(n+1), A043349(n+1)]`
-/

namespace A045177.P9836198229215401392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P9836198229215401392

/-! ## A045177.P9717659042987894808

`∩[A039008(n+1), A043349(n+1)]`
-/

namespace A045177.P9717659042987894808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P9717659042987894808

/-! ## A045177.P5333651902615270709

`∩[A039284(n+1), A043349(n+1)]`
-/

namespace A045177.P5333651902615270709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045177.P5333651902615270709

/-!
# A045178: Numbers whose base-5 representation contains exactly one 0 and two 2's.

The programs for A045178, there is no canonical definition to state claims against.
-/

/-! ## A045178.P9407042180872839759

`∩[A023722(n+1), A023731(n+1)]`
-/

namespace A045178.P9407042180872839759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045178.P9407042180872839759

/-! ## A045178.P4140838346872964329

`∩[A023731(n+1), A043349(n+1)]`
-/

namespace A045178.P4140838346872964329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045178.P4140838346872964329

/-!
# A045179: Numbers whose base-5 representation contains exactly one 0 and three 2's.

The programs for A045179, there is no canonical definition to state claims against.
-/

/-! ## A045179.P10698771041907171440

`∩[A023722(n+1), A023732(n+1)]`
-/

namespace A045179.P10698771041907171440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045179.P10698771041907171440

/-!
# A045180: Numbers whose base-5 representation contains exactly two 0's and no 2's.

The programs for A045180, there is no canonical definition to state claims against.
-/

/-! ## A045180.P7313652208867384980

`A023729(A023707(n+1)+1)`
-/

namespace A045180.P7313652208867384980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023707 (n + 1) + 1).toNat

end

end A045180.P7313652208867384980

/-! ## A045180.P13475293259833372616

`∩[A023723(n+1), A023729(n+1)]`
-/

namespace A045180.P13475293259833372616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045180.P13475293259833372616

/-! ## A045180.P4134190185812730017

`A023723(comp[a(n-1)-n]+1)` with `a(0)=5, a(1)=1`
-/

namespace A045180.P4134190185812730017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A045180.P4134190185812730017

/-!
# A045181: Numbers whose base-5 representation contains exactly two 0's and one 2.

The programs for A045181, the canonical program `A045181.P3716698425638522431` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045181 has offset 1).

The definition of A045181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045181.P3716698425638522431

`∩[A023723(n+1), A023730(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045181

/-- `∩[A023723(n+1), A023730(n+1)]` -/
def P3716698425638522431.Spec : Prop :=
  ∀ n, (P3716698425638522431.a n : ℤ) = A045181 (n + 1)

theorem P3716698425638522431.correct : P3716698425638522431.Spec := by
  intro n
  simp only [A045181, Nat.add_sub_cancel]

end A045181

/-!
# A045182: Numbers whose base-5 representation contains exactly two 0's and two 2's.

The programs for A045182, the canonical program `A045182.P1485399016686548528` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045182 has offset 1).

The definition of A045182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045182.P1704516828198778651

`∩[A023723(n+1), A039284(n+1)]`
-/

namespace A045182.P1704516828198778651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P1704516828198778651

namespace A045182

/-- `∩[A023723(n+1), A039284(n+1)]` -/
def P1704516828198778651.Spec : Prop :=
  ∀ n, (P1704516828198778651.a n : ℤ) = A045182 (n + 1)

end A045182

/-! ## A045182.P6781066595208422121

`∩[A023723(n+1), A039008(n+1)]`
-/

namespace A045182.P6781066595208422121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P6781066595208422121

namespace A045182

/-- `∩[A023723(n+1), A039008(n+1)]` -/
def P6781066595208422121.Spec : Prop :=
  ∀ n, (P6781066595208422121.a n : ℤ) = A045182 (n + 1)

end A045182

/-! ## A045182.P1485399016686548528

`∩[A023723(n+1), A023731(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045182

/-- `∩[A023723(n+1), A023731(n+1)]` -/
def P1485399016686548528.Spec : Prop :=
  ∀ n, (P1485399016686548528.a n : ℤ) = A045182 (n + 1)

theorem P1485399016686548528.correct : P1485399016686548528.Spec := by
  intro n
  simp only [A045182, Nat.add_sub_cancel]

end A045182

/-! ## A045182.P7292773416447801640

`∩[A023731(n+1), A039008(n+1)]`
-/

namespace A045182.P7292773416447801640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P7292773416447801640

namespace A045182

/-- `∩[A023731(n+1), A039008(n+1)]` -/
def P7292773416447801640.Spec : Prop :=
  ∀ n, (P7292773416447801640.a n : ℤ) = A045182 (n + 1)

end A045182

/-! ## A045182.P14041535243116594515

`∩[A023731(n+1), A039284(n+1)]`
-/

namespace A045182.P14041535243116594515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045182.P14041535243116594515

namespace A045182

/-- `∩[A023731(n+1), A039284(n+1)]` -/
def P14041535243116594515.Spec : Prop :=
  ∀ n, (P14041535243116594515.a n : ℤ) = A045182 (n + 1)

end A045182

/-!
# A045183: Numbers whose base-5 representation contains exactly two 0's and three 2's.

The programs for A045183, there is no canonical definition to state claims against.
-/

/-! ## A045183.P7186176803670105952

`∩[A023723(n+1), A023732(n+1)]`
-/

namespace A045183.P7186176803670105952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045183.P7186176803670105952

/-! ## A045183.P12028002728152632249

`record[A078898(A045213(n+1))]`
-/

namespace A045183.P12028002728152632249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A045213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045183.P12028002728152632249

/-!
# A045184: Numbers whose base-5 representation contains exactly three 0's and no 2's.

The programs for A045184, there is no canonical definition to state claims against.
-/

/-! ## A045184.P11025798923981043419

`A023729(A023708(n+1)+1)`
-/

namespace A045184.P11025798923981043419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (A023708 (n + 1) + 1).toNat

end

end A045184.P11025798923981043419

/-! ## A045184.P12747174554204681009

`∩[A023724(n+1), A023729(n+1)]`
-/

namespace A045184.P12747174554204681009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045184.P12747174554204681009

/-! ## A045184.P17565609635034765766

`A023724(comp[A247911(n+1)-A073624(n+1)]+1)`
-/

namespace A045184.P17565609635034765766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (n + 1) - A073624 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A045184.P17565609635034765766

/-!
# A045185: Numbers whose base-5 representation contains exactly three 0's and one 2.

The programs for A045185, there is no canonical definition to state claims against.
-/

/-! ## A045185.P12011665125617023040

`∩[A023724(n+1), A023730(n+1)]`
-/

namespace A045185.P12011665125617023040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045185.P12011665125617023040

/-! ## A045185.P811913498177462472

`A031473(3*n+2)+A010815(A042462(n))`
-/

namespace A045185.P811913498177462472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031473 (3 * n + 2) + A010815 (A042462 n).toNat

end

end A045185.P811913498177462472

/-!
# A045186: Numbers whose base-5 representation contains exactly three 0's and two 2's.

The programs for A045186, there is no canonical definition to state claims against.
-/

/-! ## A045186.P3632911848630519268

`∩[A023724(n+1), A023731(n+1)]`
-/

namespace A045186.P3632911848630519268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045186.P3632911848630519268

/-! ## A045186.P14492643040551361608

`record[A032742(A045216(n+1))]`
-/

namespace A045186.P14492643040551361608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045186.P14492643040551361608

/-! ## A045186.P3831434617573137076

`record[A001057(A045216(n+1)-1)]`
-/

namespace A045186.P3831434617573137076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A045216 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045186.P3831434617573137076

/-! ## A045186.P7979994958728069306

`A004525(∩[A045199(n+1), A045249(n+1)])`
-/

namespace A045186.P7979994958728069306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045249 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045186.P7979994958728069306

/-! ## A045186.P13949312223236563181

`record[A001057(A045216(n+1))*A153881(n+2)]`
-/

namespace A045186.P13949312223236563181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A045216 (n + 1)).toNat * A153881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045186.P13949312223236563181

/-!
# A045187: Numbers whose base-5 representation contains exactly three 0's and three 2's.

The programs for A045187, there is no canonical definition to state claims against.
-/

/-! ## A045187.P2265779179457635307

`∩[A023724(n+5), A023732(n+1)]`
-/

namespace A045187.P2265779179457635307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045187.P2265779179457635307

/-! ## A045187.P13900148437550558584

`A004277(A045172(n+1))`
-/

namespace A045187.P13900148437550558584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045172 (n + 1)).toNat

end

end A045187.P13900148437550558584

/-! ## A045187.P5540408551167941198

`A003156(A045172(n+1)+1)`
-/

namespace A045187.P5540408551167941198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003156 (A045172 (n + 1) + 1).toNat

end

end A045187.P5540408551167941198

/-! ## A045187.P3487472945181625135

`A004275(A045172(n+1)+1)`
-/

namespace A045187.P3487472945181625135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A045172 (n + 1) + 1).toNat

end

end A045187.P3487472945181625135

/-! ## A045187.P8327430316862280031

`A042963(A045172(n+1)+1)`
-/

namespace A045187.P8327430316862280031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (A045172 (n + 1) + 1).toNat

end

end A045187.P8327430316862280031

/-!
# A045188: Numbers whose base-5 representation contains no 0's and exactly one 3.

The programs for A045188, the canonical program `A045188.P6201253518571770422` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045188 has offset 1).

The definition of A045188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045188.P6201253518571770422

`∩[A023721(n+1), A023734(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045188

/-- `∩[A023721(n+1), A023734(n+1)]` -/
def P6201253518571770422.Spec : Prop :=
  ∀ n, (P6201253518571770422.a n : ℤ) = A045188 (n + 1)

theorem P6201253518571770422.correct : P6201253518571770422.Spec := by
  intro n
  simp only [A045188, Nat.add_sub_cancel]

end A045188

/-! ## A045188.P17168437482595936453

`eq[3, A331471(A309956(n))]`
-/

namespace A045188.P17168437482595936453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331471 (A309956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045188.P17168437482595936453

namespace A045188

/-- `eq[3, A331471(A309956(n))]` -/
def P17168437482595936453.Spec : Prop :=
  ∀ n, (P17168437482595936453.a n : ℤ) = A045188 (n + 1)

end A045188

/-!
# A045189: Numbers whose base-5 representation contains no 0's and exactly two 3's.

The programs for A045189, the canonical program `A045189.P7914584813931535098` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045189 has offset 1).

The definition of A045189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045189.P7914584813931535098

`∩[A023721(n+1), A023735(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045189

/-- `∩[A023721(n+1), A023735(n+1)]` -/
def P7914584813931535098.Spec : Prop :=
  ∀ n, (P7914584813931535098.a n : ℤ) = A045189 (n + 1)

theorem P7914584813931535098.correct : P7914584813931535098.Spec := by
  intro n
  simp only [A045189, Nat.add_sub_cancel]

end A045189

/-! ## A045189.P2893164673427501925

`eq[6, A002102(A309956(n))]`
-/

namespace A045189.P2893164673427501925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 (A309956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045189.P2893164673427501925

namespace A045189

/-- `eq[6, A002102(A309956(n))]` -/
def P2893164673427501925.Spec : Prop :=
  ∀ n, (P2893164673427501925.a n : ℤ) = A045189 (n + 1)

end A045189

/-! ## A045189.P13132471887944313291

`∩[lt[4, A309956(n)], A023735(n+1)]`
-/

namespace A045189.P13132471887944313291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309956 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A045189.P13132471887944313291

namespace A045189

/-- `∩[lt[4, A309956(n)], A023735(n+1)]` -/
def P13132471887944313291.Spec : Prop :=
  ∀ n, (P13132471887944313291.a n : ℤ) = A045189 (n + 1)

end A045189

/-! ## A045189.P2126957759768998908

`∩[A023735(n+1), A136497(n+1)]`
-/

namespace A045189.P2126957759768998908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045189.P2126957759768998908

namespace A045189

/-- `∩[A023735(n+1), A136497(n+1)]` -/
def P2126957759768998908.Spec : Prop :=
  ∀ n, (P2126957759768998908.a n : ℤ) = A045189 (n + 1)

end A045189

/-! ## A045189.P7438905376591341227

`∩[A023735(n+1), A277061(n+1)]`
-/

namespace A045189.P7438905376591341227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045189.P7438905376591341227

namespace A045189

/-- `∩[A023735(n+1), A277061(n+1)]` -/
def P7438905376591341227.Spec : Prop :=
  ∀ n, (P7438905376591341227.a n : ℤ) = A045189 (n + 1)

end A045189

/-!
# A045190: Numbers whose base-5 representation contains no 0's and exactly three 3's.

The programs for A045190, there is no canonical definition to state claims against.
-/

/-! ## A045190.P2846211894711976606

`∩[A023721(n+1), A023736(n+1)]`
-/

namespace A045190.P2846211894711976606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045190.P2846211894711976606

/-! ## A045190.P14155896545313887773

`A023736(A026371(n+1)%A171928(n+1))`
-/

namespace A045190.P14155896545313887773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (Int.tmod (A026371 (n + 1)) (A171928 (n + 1))).toNat

end

end A045190.P14155896545313887773

/-! ## A045190.P6195684792176637325

`A023736(and(A026371(n+1), A171928(n+1)))`
-/

namespace A045190.P6195684792176637325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (Int.land (A026371 (n + 1)) (A171928 (n + 1))).toNat

end

end A045190.P6195684792176637325

/-! ## A045190.P16559385379188916760

`A045304(and(A026371(n+1), A171928(n+1)))`
-/

namespace A045190.P16559385379188916760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045304 (Int.land (A026371 (n + 1)) (A171928 (n + 1))).toNat

end

end A045190.P16559385379188916760

/-!
# A045191: Numbers whose base-5 representation contains exactly one 0 and no 3's.

The programs for A045191, the canonical program `A045191.P12950099252231406999` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045191 has offset 1).

The definition of A045191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3640 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045191.P12950099252231406999

`A023733(A023706(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045191

/-- `A023733(A023706(n+1)+1)` -/
def P12950099252231406999.Spec : Prop :=
  ∀ n, P12950099252231406999.a n = A045191 (n + 1)

theorem P12950099252231406999.correct : P12950099252231406999.Spec := by
  intro n
  simp only [A045191, Nat.add_sub_cancel]

end A045191

/-! ## A045191.P11254739983951193785

`∩[A023722(n+1), A023733(n+1)]`
-/

namespace A045191.P11254739983951193785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045191.P11254739983951193785

namespace A045191

/-- `∩[A023722(n+1), A023733(n+1)]` -/
def P11254739983951193785.Spec : Prop :=
  ∀ n, (P11254739983951193785.a n : ℤ) = A045191 (n + 1)

end A045191

/-! ## A045191.P14722347569000647814

`∩[A023729(2*n+1)-A023725(n+1), A023722(n+1)]`
-/

namespace A045191.P14722347569000647814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (2 * n + 1) - A023725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045191.P14722347569000647814

namespace A045191

/-- `∩[A023729(2*n+1)-A023725(n+1), A023722(n+1)]` -/
def P14722347569000647814.Spec : Prop :=
  ∀ n, (P14722347569000647814.a n : ℤ) = A045191 (n + 1)

end A045191

/-! ## A045191.P16413413204794956125

`A023722(A042968(n+1))%A023545(A104176(n))`
-/

namespace A045191.P16413413204794956125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023722 (A042968 (n + 1)).toNat) (A023545 (A104176 n).toNat)

end

end A045191.P16413413204794956125

namespace A045191

/-- `A023722(A042968(n+1))%A023545(A104176(n))` -/
def P16413413204794956125.Spec : Prop :=
  ∀ n, P16413413204794956125.a n = A045191 (n + 1)

end A045191

/-!
# A045192: Numbers whose base-5 representation contains exactly one 0 and one 3.

The programs for A045192, the canonical program `A045192.P4043128430338068210` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045192 has offset 1).

The definition of A045192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045192.P11764877789033422516

`∩[A023722(n+1), A039009(n+1)]`
-/

namespace A045192.P11764877789033422516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P11764877789033422516

namespace A045192

/-- `∩[A023722(n+1), A039009(n+1)]` -/
def P11764877789033422516.Spec : Prop :=
  ∀ n, (P11764877789033422516.a n : ℤ) = A045192 (n + 1)

end A045192

/-! ## A045192.P4090088219825579979

`∩[A023722(n+1), A039285(n+1)]`
-/

namespace A045192.P4090088219825579979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P4090088219825579979

namespace A045192

/-- `∩[A023722(n+1), A039285(n+1)]` -/
def P4090088219825579979.Spec : Prop :=
  ∀ n, (P4090088219825579979.a n : ℤ) = A045192 (n + 1)

end A045192

/-! ## A045192.P11034025240663204938

`∩[A039009(n+1), A043349(n+1)]`
-/

namespace A045192.P11034025240663204938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P11034025240663204938

namespace A045192

/-- `∩[A039009(n+1), A043349(n+1)]` -/
def P11034025240663204938.Spec : Prop :=
  ∀ n, (P11034025240663204938.a n : ℤ) = A045192 (n + 1)

end A045192

/-! ## A045192.P12330600952346555124

`∩[A039285(n+1), A043349(n+1)]`
-/

namespace A045192.P12330600952346555124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P12330600952346555124

namespace A045192

/-- `∩[A039285(n+1), A043349(n+1)]` -/
def P12330600952346555124.Spec : Prop :=
  ∀ n, (P12330600952346555124.a n : ℤ) = A045192 (n + 1)

end A045192

/-! ## A045192.P4033660846676657154

`∩[A023722(n+1), A023734(n+1)]`
-/

namespace A045192.P4033660846676657154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P4033660846676657154

namespace A045192

/-- `∩[A023722(n+1), A023734(n+1)]` -/
def P4033660846676657154.Spec : Prop :=
  ∀ n, (P4033660846676657154.a n : ℤ) = A045192 (n + 1)

end A045192

/-! ## A045192.P4043128430338068210

`∩[A023734(n+1), A039009(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A045192

/-- `∩[A023734(n+1), A039009(n+1)]` -/
def P4043128430338068210.Spec : Prop :=
  ∀ n, (P4043128430338068210.a n : ℤ) = A045192 (n + 1)

theorem P4043128430338068210.correct : P4043128430338068210.Spec := by
  intro n
  simp only [A045192, Nat.add_sub_cancel]

end A045192

/-! ## A045192.P9642848901767401092

`∩[A023734(n+1), A039285(n+1)]`
-/

namespace A045192.P9642848901767401092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P9642848901767401092

namespace A045192

/-- `∩[A023734(n+1), A039285(n+1)]` -/
def P9642848901767401092.Spec : Prop :=
  ∀ n, (P9642848901767401092.a n : ℤ) = A045192 (n + 1)

end A045192

/-! ## A045192.P9033621645728540081

`∩[A023734(n+1), A043349(n+1)]`
-/

namespace A045192.P9033621645728540081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045192.P9033621645728540081

namespace A045192

/-- `∩[A023734(n+1), A043349(n+1)]` -/
def P9033621645728540081.Spec : Prop :=
  ∀ n, (P9033621645728540081.a n : ℤ) = A045192 (n + 1)

end A045192

/-!
# A045193: Numbers whose base-5 representation contains exactly one 0 and two 3's.

The programs for A045193, there is no canonical definition to state claims against.
-/

/-! ## A045193.P2999391583957150805

`∩[A023722(n+1), A023735(n+1)]`
-/

namespace A045193.P2999391583957150805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045193.P2999391583957150805

/-! ## A045193.P15286841364777801892

`∩[A023735(n+1), A043349(n+1)]`
-/

namespace A045193.P15286841364777801892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045193.P15286841364777801892

/-! ## A045193.P4671340083685493379

`A045300(3*n+4)+A007814(A260464(n))`
-/

namespace A045193.P4671340083685493379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045300 (3 * n + 4) + A007814 (A260464 n).toNat

end

end A045193.P4671340083685493379

/-! ## A045193.P8071800579499195895

`A045300(3*n+4)%A045260(A000142(n))`
-/

namespace A045193.P8071800579499195895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045300 (3 * n + 4)) (A045260 (A000142 n).toNat)

end

end A045193.P8071800579499195895

/-!
# A045194: Numbers whose base-5 representation contains exactly one 0 and three 3's.

The programs for A045194, there is no canonical definition to state claims against.
-/

/-! ## A045194.P10829997516511878193

`∩[A023722(n+1), A023736(n+1)]`
-/

namespace A045194.P10829997516511878193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045194.P10829997516511878193

/-! ## A045194.P3402413523116813115

`A045304(record[A007953(3*n+4)])`
-/

namespace A045194.P3402413523116813115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045304 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045194.P3402413523116813115

/-! ## A045194.P7867845946707980748

`A045304(3*n+4)^A008459(A271703(n))`
-/

namespace A045194.P7867845946707980748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045304 (3 * n + 4) : ℚ) ^ (A008459 (A271703 n).toNat : ℤ)

end

end A045194.P7867845946707980748

/-! ## A045194.P10058575839890741618

`A045304(3*n+4)^A000246(A337615(n))`
-/

namespace A045194.P10058575839890741618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045304 (3 * n + 4) : ℚ) ^ (A000246 (A337615 n).toNat : ℤ)

end

end A045194.P10058575839890741618

/-! ## A045194.P18212209511618250271

`A045304(3*n+4)%A045265(A045277(n+1))`
-/

namespace A045194.P18212209511618250271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045304 (3 * n + 4)) (A045265 (A045277 (n + 1)).toNat)

end

end A045194.P18212209511618250271

/-!
# A045195: Numbers whose base-5 representation contains exactly two 0's and no 3's.

The programs for A045195, the canonical program `A045195.P10661611237994601210` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045195 has offset 1).

The definition of A045195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045195.P10661611237994601210

`A023733(A023707(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045195

/-- `A023733(A023707(n+1)+1)` -/
def P10661611237994601210.Spec : Prop :=
  ∀ n, P10661611237994601210.a n = A045195 (n + 1)

theorem P10661611237994601210.correct : P10661611237994601210.Spec := by
  intro n
  simp only [A045195, Nat.add_sub_cancel]

end A045195

/-! ## A045195.P15369519571226504470

`∩[A023723(n+1), A023733(n+1)]`
-/

namespace A045195.P15369519571226504470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045195.P15369519571226504470

namespace A045195

/-- `∩[A023723(n+1), A023733(n+1)]` -/
def P15369519571226504470.Spec : Prop :=
  ∀ n, (P15369519571226504470.a n : ℤ) = A045195 (n + 1)

end A045195

/-! ## A045195.P6323966941220527729

`A023723(∑[A040001(A192979(n))])`
-/

namespace A045195.P6323966941220527729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A192979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045195.P6323966941220527729

namespace A045195

/-- `A023723(∑[A040001(A192979(n))])` -/
def P6323966941220527729.Spec : Prop :=
  ∀ n, P6323966941220527729.a n = A045195 (n + 1)

end A045195

/-! ## A045195.P15575554900573659868

`A023723(A004773(n+1)%A023683(3*n+1))`
-/

namespace A045195.P15575554900573659868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (Int.tmod (A004773 (n + 1)) (A023683 (3 * n + 1))).toNat

end

end A045195.P15575554900573659868

namespace A045195

/-- `A023723(A004773(n+1)%A023683(3*n+1))` -/
def P15575554900573659868.Spec : Prop :=
  ∀ n, P15575554900573659868.a n = A045195 (n + 1)

end A045195

/-!
# A045196: Numbers whose base-5 representation contains exactly two 0's and one 3.

The programs for A045196, the canonical program `A045196.P16747927741256463631` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045196 has offset 1).

The definition of A045196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045196.P16747927741256463631

`∩[A023723(n+1), A023734(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A045196

/-- `∩[A023723(n+1), A023734(n+1)]` -/
def P16747927741256463631.Spec : Prop :=
  ∀ n, (P16747927741256463631.a n : ℤ) = A045196 (n + 1)

theorem P16747927741256463631.correct : P16747927741256463631.Spec := by
  intro n
  simp only [A045196, Nat.add_sub_cancel]

end A045196

/-! ## A045196.P3012075871612518059

`A031472(3*n+3)^∑{e}[A249573(n), #]`
-/

namespace A045196.P3012075871612518059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031472 (3 * n + 3) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A045196.P3012075871612518059

namespace A045196

/-- `A031472(3*n+3)^∑{e}[A249573(n), #]` -/
def P3012075871612518059.Spec : Prop :=
  ∀ n, P3012075871612518059.a n = A045196 (n + 1)

end A045196

/-! ## A045196.P8370777208739362663

`A031472(3*(n+1))^∑{e}[A084955(n+1), #]`
-/

namespace A045196.P8370777208739362663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031472 (3 * (n + 1)) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A045196.P8370777208739362663

namespace A045196

/-- `A031472(3*(n+1))^∑{e}[A084955(n+1), #]` -/
def P8370777208739362663.Spec : Prop :=
  ∀ n, P8370777208739362663.a n = A045196 (n + 1)

end A045196

/-!
# A045197: Numbers whose base-5 representation contains exactly two 0's and two 3's.

The programs for A045197, the canonical program `A045197.P10372690677097138885` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045197 has offset 1).

The definition of A045197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045197.P12458219681972432987

`∩[A023723(n+1), A039285(n+1)]`
-/

namespace A045197.P12458219681972432987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045197.P12458219681972432987

namespace A045197

/-- `∩[A023723(n+1), A039285(n+1)]` -/
def P12458219681972432987.Spec : Prop :=
  ∀ n, (P12458219681972432987.a n : ℤ) = A045197 (n + 1)

end A045197

/-! ## A045197.P10912866693962997459

`∩[A023723(n+1), A023735(n+1)]`
-/

namespace A045197.P10912866693962997459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045197.P10912866693962997459

namespace A045197

/-- `∩[A023723(n+1), A023735(n+1)]` -/
def P10912866693962997459.Spec : Prop :=
  ∀ n, (P10912866693962997459.a n : ℤ) = A045197 (n + 1)

end A045197

/-! ## A045197.P10372690677097138885

`∩[A023735(n+1), A039285(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A045197

/-- `∩[A023735(n+1), A039285(n+1)]` -/
def P10372690677097138885.Spec : Prop :=
  ∀ n, (P10372690677097138885.a n : ℤ) = A045197 (n + 1)

theorem P10372690677097138885.correct : P10372690677097138885.Spec := by
  intro n
  simp only [A045197, Nat.add_sub_cancel]

end A045197

/-! ## A045197.P13695147488994531025

`∩[A023723(n+1), A039009(n+1)]`
-/

namespace A045197.P13695147488994531025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045197.P13695147488994531025

namespace A045197

/-- `∩[A023723(n+1), A039009(n+1)]` -/
def P13695147488994531025.Spec : Prop :=
  ∀ n, (P13695147488994531025.a n : ℤ) = A045197 (n + 1)

end A045197

/-!
# A045198: Numbers whose base-5 representation contains exactly two 0's and three 3's.

The programs for A045198, there is no canonical definition to state claims against.
-/

/-! ## A045198.P15490071653834988722

`∩[A023723(n+1), A023736(n+1)]`
-/

namespace A045198.P15490071653834988722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045198.P15490071653834988722

/-! ## A045198.P13073022813830903412

`A004525(A045213(n+1)+A045183(n+1))`
-/

namespace A045198.P13073022813830903412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A045213 (n + 1) + A045183 (n + 1)).toNat

end

end A045198.P13073022813830903412

/-! ## A045198.P12193106204588112290

`A004526(A045213(n+1)+A045183(n+1))`
-/

namespace A045198.P12193106204588112290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A045213 (n + 1) + A045183 (n + 1)).toNat

end

end A045198.P12193106204588112290

/-! ## A045198.P11560133598217393100

`A032742(A045213(n+1)+A045183(n+1))`
-/

namespace A045198.P11560133598217393100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045213 (n + 1) + A045183 (n + 1)).toNat

end

end A045198.P11560133598217393100

/-! ## A045198.P628726178093895566

`A065033(A045213(n+1)+A045183(n+1))`
-/

namespace A045198.P628726178093895566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A045213 (n + 1) + A045183 (n + 1)).toNat

end

end A045198.P628726178093895566

/-!
# A045199: Numbers whose base-5 representation contains exactly three 0's and no 3's.

The programs for A045199, the canonical program `A045199.P14905624048483423082` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045199 has offset 1).

The definition of A045199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045199.P14905624048483423082

`A023733(A023708(n+1)+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045199

/-- `A023733(A023708(n+1)+1)` -/
def P14905624048483423082.Spec : Prop :=
  ∀ n, P14905624048483423082.a n = A045199 (n + 1)

theorem P14905624048483423082.correct : P14905624048483423082.Spec := by
  intro n
  simp only [A045199, Nat.add_sub_cancel]

end A045199

/-! ## A045199.P17416034275463530813

`∩[A023724(n+1), A023733(n+1)]`
-/

namespace A045199.P17416034275463530813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045199.P17416034275463530813

namespace A045199

/-- `∩[A023724(n+1), A023733(n+1)]` -/
def P17416034275463530813.Spec : Prop :=
  ∀ n, (P17416034275463530813.a n : ℤ) = A045199 (n + 1)

end A045199

/-! ## A045199.P6251732711112579565

`A023724(∑[A266012(A000124(n))])`
-/

namespace A045199.P6251732711112579565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266012 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A045199.P6251732711112579565

namespace A045199

/-- `A023724(∑[A266012(A000124(n))])` -/
def P6251732711112579565.Spec : Prop :=
  ∀ n, P6251732711112579565.a n = A045199 (n + 1)

end A045199

/-! ## A045199.P12298826469489086260

`A023724(A004773(n+1)%A023683(3*n+1))`
-/

namespace A045199.P12298826469489086260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023724 (Int.tmod (A004773 (n + 1)) (A023683 (3 * n + 1))).toNat

end

end A045199.P12298826469489086260

namespace A045199

/-- `A023724(A004773(n+1)%A023683(3*n+1))` -/
def P12298826469489086260.Spec : Prop :=
  ∀ n, P12298826469489086260.a n = A045199 (n + 1)

end A045199

