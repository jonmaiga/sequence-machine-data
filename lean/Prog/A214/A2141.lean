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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A214100: Number of 0..2 colorings on an nX8 array circular in the 8 direction with new values 0..2 introduced in row major order.

The programs for A214100, there is no canonical definition to state claims against.
-/

/-! ## A214100.P835380253769473627

`A214101(A055999(n+4))`
-/

namespace A214100.P835380253769473627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A055999 (n + 4)).toNat

end

end A214100.P835380253769473627

/-! ## A214100.P6270860424779764354

`A214101(eq[4, A219347(n)])`
-/

namespace A214100.P6270860424779764354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214100.P6270860424779764354

/-! ## A214100.P5760505712539374843

`A214101(eq[6, A193592(n)])`
-/

namespace A214100.P5760505712539374843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214100.P5760505712539374843

/-! ## A214100.P9580238922180919041

`A214101(Δ[A023551(n+2)])`
-/

namespace A214100.P9580238922180919041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (f1 (n + 1) - f1 n).toNat

end

end A214100.P9580238922180919041

/-! ## A214100.P15830203248455159903

`A214101(eq[10, A185782(n+1)])`
-/

namespace A214100.P15830203248455159903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214100.P15830203248455159903

/-!
# A214102: Number of 0..2 colorings of a 3X(n+1) array circular in the n+1 direction with new values 0..2 introduced in row major order.

The programs for A214102, there is no canonical definition to state claims against.
-/

/-! ## A214102.P4952474535892028

`A214101(∑[n+2]+4)`
-/

namespace A214102.P4952474535892028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214102.P4952474535892028

/-! ## A214102.P11342463888713966698

`or(A055641(n), A214101(A167614(n+1)))`
-/

namespace A214102.P11342463888713966698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A214101 (A167614 (n + 1)).toNat)

end

end A214102.P11342463888713966698

/-! ## A214102.P5290440734290627163

`A214101(A167614(n+1))+A122180(n+1)`
-/

namespace A214102.P5290440734290627163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A214102.P5290440734290627163

/-! ## A214102.P15657610125515219867

`A214101(A167614(n+1))%A214098(n+1)`
-/

namespace A214102.P15657610125515219867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214101 (A167614 (n + 1)).toNat) (A214098 (n + 1))

end

end A214102.P15657610125515219867

/-! ## A214102.P7610812724709851006

`or(A000007(n), A214101(A034856(n+1)+5))`
-/

namespace A214102.P7610812724709851006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A214101 (A034856 (n + 1) + 5).toNat)

end

end A214102.P7610812724709851006

/-!
# A214103: Number of 0..2 colorings of a 4X(n+1) array circular in the n+1 direction with new values 0..2 introduced in row major order.

The programs for A214103, there is no canonical definition to state claims against.
-/

/-! ## A214103.P4358928010803090015

`A214101(A141214(n)+7)`
-/

namespace A214103.P4358928010803090015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A141214 n + 7).toNat

end

end A214103.P4358928010803090015

/-! ## A214103.P8525227230450987974

`A214101(A052905(n)+9)`
-/

namespace A214103.P8525227230450987974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A052905 n + 9).toNat

end

end A214103.P8525227230450987974

/-! ## A214103.P5095588757146162692

`A214101(A055999(n)+10)`
-/

namespace A214103.P5095588757146162692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A055999 n + 10).toNat

end

end A214103.P5095588757146162692

/-! ## A214103.P13911911752085610026

`A214101(A167614(n+2)+1)`
-/

namespace A214103.P13911911752085610026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167614 (n + 2) + 1).toNat

end

end A214103.P13911911752085610026

/-! ## A214103.P5853599755919554053

`A214101(A166136(n+2)-2)`
-/

namespace A214103.P5853599755919554053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A166136 (n + 2) - 2).toNat

end

end A214103.P5853599755919554053

/-!
# A214104: Number of 0..2 colorings of a 5 X (n+1) array circular in the n+1 direction with new values 0..2 introduced in row major order.

The programs for A214104, there is no canonical definition to state claims against.
-/

/-! ## A214104.P8938339418709842881

`A214101(A167499(n+3))`
-/

namespace A214104.P8938339418709842881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167499 (n + 3)).toNat

end

end A214104.P8938339418709842881

/-! ## A214104.P10344000471424342110

`A214101(A155212(n)+13)`
-/

namespace A214104.P10344000471424342110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A155212 n + 13).toNat

end

end A214104.P10344000471424342110

/-! ## A214104.P15782498912539111768

`A214101(A056000(n)+15)`
-/

namespace A214104.P15782498912539111768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A056000 n + 15).toNat

end

end A214104.P15782498912539111768

/-! ## A214104.P12437633291081942976

`A214101(eq[7, A066657(n)])`
-/

namespace A214104.P12437633291081942976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214104.P12437633291081942976

/-! ## A214104.P17482258781056272089

`A214101(A167614(n+3)+2)`
-/

namespace A214104.P17482258781056272089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167614 (n + 3) + 2).toNat

end

end A214104.P17482258781056272089

/-!
# A214105: Number of 0..2 colorings of a 6X(n+1) array circular in the n+1 direction with new values 0..2 introduced in row major order.

The programs for A214105, there is no canonical definition to state claims against.
-/

/-! ## A214105.P13008404682382118321

`A214101(A166136(n+4))`
-/

namespace A214105.P13008404682382118321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A166136 (n + 4)).toNat

end

end A214105.P13008404682382118321

/-! ## A214105.P6922790887396303053

`A214101(A056115(n)+21)`
-/

namespace A214105.P6922790887396303053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A056115 n + 21).toNat

end

end A214105.P6922790887396303053

/-! ## A214105.P4391429114124037730

`A214101(A167499(n+4)+1)`
-/

namespace A214105.P4391429114124037730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167499 (n + 4) + 1).toNat

end

end A214105.P4391429114124037730

/-! ## A214105.P16087789050503576218

`A214101(A167614(n+4)+3)`
-/

namespace A214105.P16087789050503576218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167614 (n + 4) + 3).toNat

end

end A214105.P16087789050503576218

/-! ## A214105.P15884156918335614897

`A214101(A141214(n+2)+9)`
-/

namespace A214105.P15884156918335614897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A141214 (n + 2) + 9).toNat

end

end A214105.P15884156918335614897

/-!
# A214106: Number of 0..2 colorings of a 7X(n+1) array circular in the n+1 direction with new values 0..2 introduced in row major order.

The programs for A214106, there is no canonical definition to state claims against.
-/

/-! ## A214106.P17467276545039945737

`A214101(A056119(n)+28)`
-/

namespace A214106.P17467276545039945737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A056119 n + 28).toNat

end

end A214106.P17467276545039945737

/-! ## A214106.P6775471744100558095

`A214101(eq[11, A066657(n)])`
-/

namespace A214106.P6775471744100558095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214106.P6775471744100558095

/-! ## A214106.P5059580853602536014

`A214101(A167499(n+5)+2)`
-/

namespace A214106.P5059580853602536014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A167499 (n + 5) + 2).toNat

end

end A214106.P5059580853602536014

/-! ## A214106.P3278681151076901107

`A214101(A034856(n+5)+9)`
-/

namespace A214106.P3278681151076901107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (A034856 (n + 5) + 9).toNat

end

end A214106.P3278681151076901107

/-! ## A214106.P557202077643457718

`A214101(eq[8, A131818(n+1)])`
-/

namespace A214106.P557202077643457718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214106.P557202077643457718

/-!
# A214107: Number of 0..3 colorings on an n X 4 array circular in the 4 direction with new values 0..3 introduced in row major order.

The programs for A214107, there is no canonical definition to state claims against.
-/

/-! ## A214107.P12548808526196610332

`A214112(∑[n+3]+1)`
-/

namespace A214107.P12548808526196610332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214107.P12548808526196610332

/-! ## A214107.P7179811917651265217

`abs(2-A214112(A034856(n+2)))+2`
-/

namespace A214107.P7179811917651265217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A214112 (A034856 (n + 2)).toNat| + 2

end

end A214107.P7179811917651265217

/-!
# A214108: Number of 0..3 colorings on an nX5 array circular in the 5 direction with new values 0..3 introduced in row major order.

The programs for A214108, there is no canonical definition to state claims against.
-/

/-! ## A214108.P3878519544457238326

`68*a(n-1)-66*a(n-2)` with `a(0)=10, a(1)=670`
-/

namespace A214108.P3878519544457238326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 670] fun n a =>
  68 * a (n - 1) - 66 * a (n - 2)

end

end A214108.P3878519544457238326

/-! ## A214108.P5243242934085166959

`A214112(A141214(n+1))`
-/

namespace A214108.P5243242934085166959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A141214 (n + 1)).toNat

end

end A214108.P5243242934085166959

/-! ## A214108.P15022114235036399444

`A214112(A027379(n+2))`
-/

namespace A214108.P15022114235036399444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A027379 (n + 2)).toNat

end

end A214108.P15022114235036399444

/-! ## A214108.P16433055611441246064

`A214112(A155212(n)+5)`
-/

namespace A214108.P16433055611441246064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A155212 n + 5).toNat

end

end A214108.P16433055611441246064

/-! ## A214108.P17526811637525687598

`A214112(A056000(n)+7)`
-/

namespace A214108.P17526811637525687598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A056000 n + 7).toNat

end

end A214108.P17526811637525687598

/-!
# A214109: Number of 0..3 colorings on an nX6 array circular in the 6 direction with new values 0..3 introduced in row major order.

The programs for A214109, there is no canonical definition to state claims against.
-/

/-! ## A214109.P13639890744714832582

`A214112(Δ[A264443(n)])`
-/

namespace A214109.P13639890744714832582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (f1 (n + 1) - f1 n).toNat

end

end A214109.P13639890744714832582

/-! ## A214109.P1740960557841007641

`A214112(A046691(n+3))`
-/

namespace A214109.P1740960557841007641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A046691 (n + 3)).toNat

end

end A214109.P1740960557841007641

/-! ## A214109.P13332775595375731378

`A214112(A056115(n)+11)`
-/

namespace A214109.P13332775595375731378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A056115 n + 11).toNat

end

end A214109.P13332775595375731378

/-! ## A214109.P5471225064428712126

`A214112(eq[3, A152157(n)])`
-/

namespace A214109.P5471225064428712126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214109.P5471225064428712126

/-! ## A214109.P1833901081569738474

`A214112(Δ[A023545(n+1)])`
-/

namespace A214109.P1833901081569738474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (f1 (n + 1) - f1 n).toNat

end

end A214109.P1833901081569738474

/-!
# A214110: Number of 0..3 colorings on an nX7 array circular in the 7 direction with new values 0..3 introduced in row major order.

The programs for A214110, there is no canonical definition to state claims against.
-/

/-! ## A214110.P13162242049892737821

`A214112(eq[3, A219347(n)])`
-/

namespace A214110.P13162242049892737821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214110.P13162242049892737821

/-! ## A214110.P7299564200543885380

`A214112(Δ[Δ[A006504(n+1)]])`
-/

namespace A214110.P7299564200543885380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (f1 (n + 1) - f1 n).toNat

end

end A214110.P7299564200543885380

/-!
# A214111: Number of 0..3 colorings on an n X 8 array circular in the 8 direction with new values 0..3 introduced in row major order.

The programs for A214111, there is no canonical definition to state claims against.
-/

/-! ## A214111.P17193480075549735363

`A214112(eq[4, A219347(n)])`
-/

namespace A214111.P17193480075549735363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214111.P17193480075549735363

/-!
# A214113: Number of 0..3 colorings of a 2X(n+1) array circular in the n+1 direction with new values 0..3 introduced in row major order.

The programs for A214113, the canonical program `A214113.P3411393089838471369` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214113 has offset 1).

The definition of A214113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214113.P3411393089838471369

`4*a(n-1)+22*a(n-2)-4*a(n-3)-21*a(n-4)` with `a(0)=4, a(1)=11, a(2)=111, a(3)=670`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214113

/-- `4*a(n-1)+22*a(n-2)-4*a(n-3)-21*a(n-4)` -/
def P3411393089838471369.Spec : Prop :=
  ∀ n, P3411393089838471369.a n = A214113 (n + 1)

theorem P3411393089838471369.correct : P3411393089838471369.Spec := by
  intro n
  simp only [A214113, Nat.add_sub_cancel]

end A214113

/-! ## A214113.P14774631842489591844

`A214112(∑[n+1]+2)`
-/

namespace A214113.P14774631842489591844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A214113.P14774631842489591844

namespace A214113

/-- `A214112(∑[n+1]+2)` -/
def P14774631842489591844.Spec : Prop :=
  ∀ n, P14774631842489591844.a n = A214113 (n + 1)

end A214113

/-! ## A214113.P1277766197743306815

`record[A214112(n+3)/A060074(n)]`
-/

namespace A214113.P1277766197743306815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214112 (n + 3) : ℚ) / (A060074 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214113.P1277766197743306815

namespace A214113

/-- `record[A214112(n+3)/A060074(n)]` -/
def P1277766197743306815.Spec : Prop :=
  ∀ n, P1277766197743306815.a n = (A214113 (n + 1) : ℚ)

end A214113

/-! ## A214113.P15582261856689018061

`record[root(A214112(n+3), A004736(n+1))]`
-/

namespace A214113.P15582261856689018061
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214112 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214113.P15582261856689018061

namespace A214113

/-- `record[root(A214112(n+3), A004736(n+1))]` -/
def P15582261856689018061.Spec : Prop :=
  ∀ n, P15582261856689018061.a n = (A214113 (n + 1) : ℝ)

end A214113

/-! ## A214113.P2895543794202929357

`record[root(A214112(n+3), A209696(n+2))]`
-/

namespace A214113.P2895543794202929357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214112 (n + 3) : ℝ) ^ (1 / (A209696 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214113.P2895543794202929357

namespace A214113

/-- `record[root(A214112(n+3), A209696(n+2))]` -/
def P2895543794202929357.Spec : Prop :=
  ∀ n, P2895543794202929357.a n = (A214113 (n + 1) : ℝ)

end A214113

/-!
# A214114: Number of 0..3 colorings of a 3X(n+1) array circular in the n+1 direction with new values 0..3 introduced in row major order.

The programs for A214114, there is no canonical definition to state claims against.
-/

/-! ## A214114.P9387077267956814712

`A214112(∑[n+2]+4)`
-/

namespace A214114.P9387077267956814712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214114.P9387077267956814712

/-! ## A214114.P1627490190383163290

`or(A000007(n), A214112(A167614(n+1)))`
-/

namespace A214114.P1627490190383163290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A214112 (A167614 (n + 1)).toNat)

end

end A214114.P1627490190383163290

/-! ## A214114.P4235090678026536165

`or(A003982(n), A214112(A167614(n+1)))`
-/

namespace A214114.P4235090678026536165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A214112 (A167614 (n + 1)).toNat)

end

end A214114.P4235090678026536165

/-! ## A214114.P12230185788883637389

`or(A025888(n), A214112(A167614(n+1)))`
-/

namespace A214114.P12230185788883637389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025888 n) (A214112 (A167614 (n + 1)).toNat)

end

end A214114.P12230185788883637389

/-! ## A214114.P10620747608530830841

`or(A058343(n), A214112(A167614(n+1)))`
-/

namespace A214114.P10620747608530830841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058343 n) (A214112 (A167614 (n + 1)).toNat)

end

end A214114.P10620747608530830841

/-!
# A214115: Number of 0..3 colorings of a 4X(n+1) array circular in the n+1 direction with new values 0..3 introduced in row major order.

The programs for A214115, there is no canonical definition to state claims against.
-/

/-! ## A214115.P4727170976268473630

`A214112(A141214(n)+7)`
-/

namespace A214115.P4727170976268473630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A141214 n + 7).toNat

end

end A214115.P4727170976268473630

/-! ## A214115.P10767455597713255789

`A214112(A052905(n)+9)`
-/

namespace A214115.P10767455597713255789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A052905 n + 9).toNat

end

end A214115.P10767455597713255789

/-! ## A214115.P5863277945767290881

`A214112(A055999(n)+10)`
-/

namespace A214115.P5863277945767290881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A055999 n + 10).toNat

end

end A214115.P5863277945767290881

/-! ## A214115.P9021076810769355284

`A214112(A167614(n+2)+1)`
-/

namespace A214115.P9021076810769355284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A167614 (n + 2) + 1).toNat

end

end A214115.P9021076810769355284

/-! ## A214115.P6919426166517866883

`A214112(A167499(n+2)-1)`
-/

namespace A214115.P6919426166517866883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A167499 (n + 2) - 1).toNat

end

end A214115.P6919426166517866883

/-!
# A214116: Number of 0..3 colorings of a 5 X (n+1) array circular in the n+1 direction with new values 0..3 introduced in row major order.

The programs for A214116, there is no canonical definition to state claims against.
-/

/-! ## A214116.P17120279607945843522

`A214112(A167499(n+3))`
-/

namespace A214116.P17120279607945843522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A167499 (n + 3)).toNat

end

end A214116.P17120279607945843522

/-! ## A214116.P8246380030111117045

`A214112(A155212(n)+13)`
-/

namespace A214116.P8246380030111117045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A155212 n + 13).toNat

end

end A214116.P8246380030111117045

/-! ## A214116.P14783582086525291511

`A214112(A056000(n)+15)`
-/

namespace A214116.P14783582086525291511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (A056000 n + 15).toNat

end

end A214116.P14783582086525291511

/-! ## A214116.P7011045452275358713

`A214112(eq[7, A066657(n)])`
-/

namespace A214116.P7011045452275358713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214116.P7011045452275358713

/-! ## A214116.P8902756041094764482

`A214112(eq[6, A131818(n+1)])`
-/

namespace A214116.P8902756041094764482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214116.P8902756041094764482

/-!
# A214117: Number of 0..3 colorings of a 6 X (n+1) array circular in the n+1 direction with new values 0..3 introduced in row major order.

The programs for A214117, there is no canonical definition to state claims against.
-/

/-! ## A214117.P4486238671697950440

`A214112(eq[7, A131818(n+1)])`
-/

namespace A214117.P4486238671697950440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214117.P4486238671697950440

/-!
# A214118: Number of 0..3 colorings of a 7X(n+1) array circular in the n+1 direction with new values 0..3 introduced in row major order.

The programs for A214118, there is no canonical definition to state claims against.
-/

/-! ## A214118.P66873203767016729

`A214112(eq[8, A131818(n+1)])`
-/

namespace A214118.P66873203767016729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214118.P66873203767016729

/-!
# A214119: Irregular array T(n,k) of the numbers of non-extendable (complete) non-self-adjacent simple paths ending at each of a minimal subset of nodes within a square lattice bounded by rectangles with nodal dimensions n and 2, n >= 2.

The programs for A214119, there is no canonical definition to state claims against.
-/

/-! ## A214119.P9159350034333547577

`Δ[A001891(A000267(n))-A000267(n)]`
-/

namespace A214119.P9159350034333547577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (A000267 n).toNat - A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A214119.P9159350034333547577

/-! ## A214119.P9072147110902931264

`Δ[A000267(n)]*A001950(A169693(n+1))`
-/

namespace A214119.P9072147110902931264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001950 (A169693 (n + 1)).toNat

end

end A214119.P9072147110902931264

/-! ## A214119.P16720305356412592646

`Δ[A055086(n)]*A001950(A169693(n+1))`
-/

namespace A214119.P16720305356412592646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001950 (A169693 (n + 1)).toNat

end

end A214119.P16720305356412592646

/-!
# A214120: Number of Proth primes < 2^n.

The programs for A214120, there is no canonical definition to state claims against.
-/

/-! ## A214120.P14971331062593804731

`lt[A343116(n+1), A133525(A056924(n+3))]`
-/

namespace A214120.P14971331062593804731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (A056924 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A214120.P14971331062593804731

/-!
# A214123: Smallest positive k such that n+k(n-1) is prime.

The programs for A214123, there is no canonical definition to state claims against.
-/

/-! ## A214123.P331077187522498403

`A390117(n+1)-1`
-/

namespace A214123.P331077187522498403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390117 (n + 1) - 1

end

end A214123.P331077187522498403

/-! ## A214123.P10690295832478765863

`floor(A379743(n+2)/(n+3))`
-/

namespace A214123.P10690295832478765863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A379743 (n + 2) : ℚ) / (n + 3 : ℚ)⌋

end

end A214123.P10690295832478765863

/-! ## A214123.P15367118439327149814

`A121934(n+1)%A390117(n+1)`
-/

namespace A214123.P15367118439327149814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A390117 (n + 1))

end

end A214123.P15367118439327149814

/-! ## A214123.P14938108178424283271

`A030494(n+1)%A390117(n+1)`
-/

namespace A214123.P14938108178424283271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A390117 (n + 1))

end

end A214123.P14938108178424283271

/-! ## A214123.P17455148414771235731

`A072828(n+1)%A390117(n+1)`
-/

namespace A214123.P17455148414771235731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A390117 (n + 1))

end

end A214123.P17455148414771235731

/-! ## A214123.P2998589098531848611

`A058000(n+1)%A390117(n+1)`
-/

namespace A214123.P2998589098531848611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058000 (n + 1)) (A390117 (n + 1))

end

end A214123.P2998589098531848611

/-!
# A214124: Indices of consecutive maxima in A214123.

The programs for A214124, there is no canonical definition to state claims against.
-/

/-! ## A214124.P5581666171234045495

`∪[A351360(2*(n+2)), A161207(A351360(2*(n+2)))]`
-/

namespace A214124.P5581666171234045495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351360 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (A351360 (2 * (n + 2))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214124.P5581666171234045495

/-!
# A214125: Consecutive maxima in A214123.

The programs for A214125, there is no canonical definition to state claims against.
-/

/-! ## A214125.P17302203494399878225

`A194944(n+1)-round(n/(n+2))`
-/

namespace A214125.P17302203494399878225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194944 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 2 : ℚ))

end

end A214125.P17302203494399878225

/-! ## A214125.P15326011080212090835

`A114112(A194944(n+1))`
-/

namespace A214125.P15326011080212090835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A194944 (n + 1)).toNat

end

end A214125.P15326011080212090835

/-! ## A214125.P16115137931906672812

`abs(A194944(n+1)-A157928(n))`
-/

namespace A214125.P16115137931906672812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194944 (n + 1) - A157928 n|

end

end A214125.P16115137931906672812

/-! ## A214125.P969710983404712209

`A000027(A194944(n+1)-A157928(n))`
-/

namespace A214125.P969710983404712209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A194944 (n + 1) - A157928 n).toNat

end

end A214125.P969710983404712209

/-! ## A214125.P10988992019780531008

`A028310(A194944(n+1)-A157928(n))`
-/

namespace A214125.P10988992019780531008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A194944 (n + 1) - A157928 n).toNat

end

end A214125.P10988992019780531008

/-!
# A214126: a(2n)=a(n-1)+a(n) and a(2n+1)=a(n+1) for n>=1, with a(0)=a(1)=1.

The programs for A214126, there is no canonical definition to state claims against.
-/

/-! ## A214126.P17152753333875042592

`A120562(A004760(n+1))`
-/

namespace A214126.P17152753333875042592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A004760 (n + 1)).toNat

end

end A214126.P17152753333875042592

/-! ## A214126.P5861011128232381157

`A120562(A004761(2*n+1)-n)`
-/

namespace A214126.P5861011128232381157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A004761 (2 * n + 1) - (n : ℤ)).toNat

end

end A214126.P5861011128232381157

/-! ## A214126.P4292764176544193706

`A120562(A035327(n)+2*n)`
-/

namespace A214126.P4292764176544193706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A035327 n + (2 * n : ℤ)).toNat

end

end A214126.P4292764176544193706

/-! ## A214126.P11847416865705864634

`A120562(A035327(n)+n+n)`
-/

namespace A214126.P11847416865705864634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A035327 n + (n : ℤ) + (n : ℤ)).toNat

end

end A214126.P11847416865705864634

/-! ## A214126.P7289892512751204542

`A120562(A038572(2*n+1)-1)`
-/

namespace A214126.P7289892512751204542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A038572 (2 * n + 1) - 1).toNat

end

end A214126.P7289892512751204542

/-! ## A214126.P11336285672507157631

`A120562(A008585(n)-A006257(n))`
-/

namespace A214126.P11336285672507157631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A008585 n - A006257 n).toNat

end

end A214126.P11336285672507157631

/-! ## A214126.P13119156110358013594

`A120562(A206332(n+1)-1)`
-/

namespace A214126.P13119156110358013594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A206332 (n + 1) - 1).toNat

end

end A214126.P13119156110358013594

/-! ## A214126.P18056519333598615038

`A082498(A004757(n+1)-2)`
-/

namespace A214126.P18056519333598615038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004757 (n + 1) - 2).toNat

end

end A214126.P18056519333598615038

/-! ## A214126.P5446539474368006806

`A120562(record[A153142(n)])`
-/

namespace A214126.P5446539474368006806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A214126.P5446539474368006806

/-! ## A214126.P15746064276588623248

`A082498(record[A153142(2*n+1)]-n)`
-/

namespace A214126.P15746064276588623248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A214126.P15746064276588623248

/-!
# A214127: a(2n) = a(n-1) + a(n) and a(2n+1) = a(n+1) for n>=1, with a(0)=1, a(1)=2.

The programs for A214127, there is no canonical definition to state claims against.
-/

/-! ## A214127.P12727436192015408906

`A214126(n)+A082498(A004762(n+1))`
-/

namespace A214127.P12727436192015408906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214126 n + A082498 (A004762 (n + 1)).toNat

end

end A214127.P12727436192015408906

/-! ## A214127.P5173917963725399286

`A214126(n)+A082498(A004761(n+1))`
-/

namespace A214127.P5173917963725399286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214126 n + A082498 (A004761 (n + 1)).toNat

end

end A214127.P5173917963725399286

/-! ## A214127.P16345194970278343525

`A120562(2*n+1)+A214126(n)-A120562(n)`
-/

namespace A214127.P16345194970278343525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (2 * n + 1) + (A214126 n - A120562 n)

end

end A214127.P16345194970278343525

/-! ## A214127.P17992893954012879047

`A120562(A004760(n+1))+A082498(A004761(n+1))`
-/

namespace A214127.P17992893954012879047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A004760 (n + 1)).toNat + A082498 (A004761 (n + 1)).toNat

end

end A214127.P17992893954012879047

/-! ## A214127.P14415232665806641117

`A120562(A004760(n+1))+A082498(A004762(n+1))`
-/

namespace A214127.P14415232665806641117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A004760 (n + 1)).toNat + A082498 (A004762 (n + 1)).toNat

end

end A214127.P14415232665806641117

/-! ## A214127.P9390335762582588249

`A120562(A206332(n+1)-1)+A082498(A004762(n+1))`
-/

namespace A214127.P9390335762582588249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A206332 (n + 1) - 1).toNat + A082498 (A004762 (n + 1)).toNat

end

end A214127.P9390335762582588249

/-! ## A214127.P6462722773822122389

`A082498(A004757(n+1)-2)+A082498(A004762(n+1))`
-/

namespace A214127.P6462722773822122389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004757 (n + 1) - 2).toNat + A082498 (A004762 (n + 1)).toNat

end

end A214127.P6462722773822122389

/-! ## A214127.P5816956851166948242

`A120562(record[A153142(n)])+A082498(A004761(n+1))`
-/

namespace A214127.P5816956851166948242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A082498 (A004761 (n + 1)).toNat

end

end A214127.P5816956851166948242

/-!
# A214128: a(n) = 6^(6^6) mod n.

The programs for A214128, there is no canonical definition to state claims against.
-/

/-! ## A214128.P9241520571005873980

`A245973(n+1)+A073424(A034432(n+1))`
-/

namespace A214128.P9241520571005873980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245973 (n + 1) + A073424 (A034432 (n + 1)).toNat

end

end A214128.P9241520571005873980

/-! ## A214128.P2083320481214341663

`A245973(n+1)+A185238(A332054(n+1))`
-/

namespace A214128.P2083320481214341663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245973 (n + 1) + A185238 (A332054 (n + 1)).toNat

end

end A214128.P2083320481214341663

/-!
# A214129: Partitions of n into parts congruent to +-1, +-5 (mod 13).

The programs for A214129, there is no canonical definition to state claims against.
-/

/-! ## A214129.P4841349566102015595

`A214131(abs(1-n))+A214130(n)`
-/

namespace A214129.P4841349566102015595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214131 |1 - (n : ℤ)|.toNat + A214130 n

end

end A214129.P4841349566102015595

/-! ## A214129.P6619917209406834451

`A214131(abs(n-1))-A001489(A214130(n))`
-/

namespace A214129.P6619917209406834451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214131 |(n : ℤ) - 1|.toNat - A001489 (A214130 n).toNat

end

end A214129.P6619917209406834451

/-! ## A214129.P13088173746180151372

`A204551(A318027(n)+A133732(n+1))`
-/

namespace A214129.P13088173746180151372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A318027 n + A133732 (n + 1)).toNat

end

end A214129.P13088173746180151372

/-! ## A214129.P9513201852502428734

`A180447(A323581(n))`
-/

namespace A214129.P9513201852502428734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A323581 n).toNat

end

end A214129.P9513201852502428734

/-! ## A214129.P10952924359735160504

`round(Δ[sqrt(A353864(2*(n+1)))])`
-/

namespace A214129.P10952924359735160504
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A353864 (2 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A214129.P10952924359735160504

/-!
# A214130: Partitions of n into parts congruent to +-2, +-3 (mod 13).

The programs for A214130, there is no canonical definition to state claims against.
-/

/-! ## A214130.P9864152025432274167

`A214129(n)-A214131(abs(1-n))`
-/

namespace A214130.P9864152025432274167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 n - A214131 |1 - (n : ℤ)|.toNat

end

end A214130.P9864152025432274167

/-! ## A214130.P10506133714146376555

`A127321(A114901(n))`
-/

namespace A214130.P10506133714146376555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A114901 n).toNat

end

end A214130.P10506133714146376555

/-! ## A214130.P2525902115246663003

`A172263(A237869(n+2))`
-/

namespace A214130.P2525902115246663003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A237869 (n + 2)).toNat

end

end A214130.P2525902115246663003

/-!
# A214131: Partitions of n into parts congruent to +-4, +-6 (mod 13).

The programs for A214131, there is no canonical definition to state claims against.
-/

/-! ## A214131.P827154607781525117

`A214129(n+1)-A214130(n+1)`
-/

namespace A214131.P827154607781525117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 (n + 1) - A214130 (n + 1)

end

end A214131.P827154607781525117

/-! ## A214131.P16284307300214275531

`and(A087897(A002265(3*n+2)), A344776(n+1))`
-/

namespace A214131.P16284307300214275531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087897 (A002265 (3 * n + 2)).toNat) (A344776 (n + 1))

end

end A214131.P16284307300214275531

/-! ## A214131.P7861324381990831345

`round(A345196(2*n)/A003114(2*n+3))`
-/

namespace A214131.P7861324381990831345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A345196 (2 * n) : ℚ) / (A003114 (2 * n + 3) : ℚ))

end

end A214131.P7861324381990831345

/-! ## A214131.P18001245481530434704

`A087897(A002265(3*n+2))%A054342(2*n+5)`
-/

namespace A214131.P18001245481530434704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087897 (A002265 (3 * n + 2)).toNat) (A054342 (2 * n + 5))

end

end A214131.P18001245481530434704

/-!
# A214135: Number of 0..4 colorings on an nX3 array circular in the 3 direction with new values 0..4 introduced in row major order.

The programs for A214135, there is no canonical definition to state claims against.
-/

/-! ## A214135.P8629515334911686119

`(2^n+2^(5*n))/2`
-/

namespace A214135.P8629515334911686119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 ^ (5 * n) : ℚ) / 2

end

end A214135.P8629515334911686119

/-! ## A214135.P9027978455227554389

`34*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=17`
-/

namespace A214135.P9027978455227554389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n a =>
  34 * a (n - 1) - 64 * a (n - 2)

end

end A214135.P9027978455227554389

/-! ## A214135.P3917193249519225788

`ceil(2^(n-1))+(4^n)²*A131577(n)`
-/

namespace A214135.P3917193249519225788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ((4 ^ n) ^ 2 : ℤ) * A131577 n

end

end A214135.P3917193249519225788

/-! ## A214135.P7392495698223997629

`A011782(n)*A092896(2*n+1)`
-/

namespace A214135.P7392495698223997629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A092896 (2 * n + 1)

end

end A214135.P7392495698223997629

/-! ## A214135.P16901701142793510441

`A011782(A008706(n))+floor(2^(n-1))`
-/

namespace A214135.P16901701142793510441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008706 n).toNat + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A214135.P16901701142793510441

/-! ## A214135.P17882266776953839787

`A052539(2*n)/2*A131577(n+1)`
-/

namespace A214135.P17882266776953839787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052539 (2 * n) : ℚ) / 2 * (A131577 (n + 1) : ℚ)

end

end A214135.P17882266776953839787

/-! ## A214135.P9983923745330908362

`ceil((A000225(5*n)+A000225(n)+1)/2)`
-/

namespace A214135.P9983923745330908362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 (5 * n) + (A000225 n + 1) : ℚ) / 2⌉

end

end A214135.P9983923745330908362

/-! ## A214135.P8718422576269529091

`A123166(2*n+1)/2*A131577(n+1)`
-/

namespace A214135.P8718422576269529091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123166 (2 * n + 1) : ℚ) / 2 * (A131577 (n + 1) : ℚ)

end

end A214135.P8718422576269529091

/-! ## A214135.P7040727462256808066

`A034008(A016861(n))+A011782(n)`
-/

namespace A214135.P7040727462256808066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A016861 n).toNat + A011782 n

end

end A214135.P7040727462256808066

/-! ## A214135.P16992091655858367009

`A131577(n)+A011782(A008706(n))`
-/

namespace A214135.P16992091655858367009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A011782 (A008706 n).toNat

end

end A214135.P16992091655858367009

/-!
# A214136: Number of 0..4 colorings on an nX4 array circular in the 4 direction with new values 0..4 introduced in row major order.

The programs for A214136, there is no canonical definition to state claims against.
-/

/-! ## A214136.P5505321478906442520

`A214141(∑[n+3]+1)`
-/

namespace A214136.P5505321478906442520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214136.P5505321478906442520

/-!
# A214137: Number of 0..4 colorings on an nX5 array circular in the 5 direction with new values 0..4 introduced in row major order.

The programs for A214137, there is no canonical definition to state claims against.
-/

/-! ## A214137.P5891894000036305471

`A214141(A141214(n+1))`
-/

namespace A214137.P5891894000036305471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A141214 (n + 1)).toNat

end

end A214137.P5891894000036305471

/-! ## A214137.P156562029374953382

`A214141(A052905(n+1)+2)`
-/

namespace A214137.P156562029374953382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A052905 (n + 1) + 2).toNat

end

end A214137.P156562029374953382

/-!
# A214138: Number of 0..4 colorings on an nX6 array circular in the 6 direction with new values 0..4 introduced in row major order.

The programs for A214138, there is no canonical definition to state claims against.
-/

/-! ## A214138.P13405185670796687328

`A214141(eq[4, A193592(n)])`
-/

namespace A214138.P13405185670796687328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214138.P13405185670796687328

/-! ## A214138.P12478600393894753365

`A214141(Δ[A023545(n+1)])`
-/

namespace A214138.P12478600393894753365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (f1 (n + 1) - f1 n).toNat

end

end A214138.P12478600393894753365

/-!
# A214139: 

The programs for A214139, there is no canonical definition to state claims against.
-/

/-! ## A214139.P16124143684204146216

`A214141(eq[5, A193592(n)])`
-/

namespace A214139.P16124143684204146216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214139.P16124143684204146216

/-!
# A214142: Number of 0..4 colorings of a 1 X (n+1) array circular in the n+1 direction with new values 0..4 introduced in row major order.

The programs for A214142, the canonical program `A214142.P12692194807648372891` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214142 has offset 1).

The definition of A214142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214142.P12028576394994180407

`(2^n+1)*(2^n+2)/6-a(n-1)` with `a(0)=1`
-/

namespace A214142.P12028576394994180407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6) - a (n - 1)

end

end A214142.P12028576394994180407

namespace A214142

/-- `(2^n+1)*(2^n+2)/6-a(n-1)` -/
def P12028576394994180407.Spec : Prop :=
  ∀ n, P12028576394994180407.a n = (A214142 (n + 1) : ℚ)

end A214142

/-! ## A214142.P12692194807648372891

`6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A214142

/-- `6*a(n-1)-7*a(n-2)-6*a(n-3)+8*a(n-4)` -/
def P12692194807648372891.Spec : Prop :=
  ∀ n, P12692194807648372891.a n = A214142 (n + 1)

theorem P12692194807648372891.correct : P12692194807648372891.Spec := by
  intro n
  simp only [A214142, Nat.add_sub_cancel]

end A214142

/-! ## A214142.P14545004676309800761

`∑[A110613(n)]`
-/

namespace A214142.P14545004676309800761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214142.P14545004676309800761

namespace A214142

/-- `∑[A110613(n)]` -/
def P14545004676309800761.Spec : Prop :=
  ∀ n, P14545004676309800761.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P18352499936553596702

`A076024(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A214142.P18352499936553596702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076024 n + (1 - a (n - 1))

end

end A214142.P18352499936553596702

namespace A214142

/-- `A076024(n)+1-a(n-1)` -/
def P18352499936553596702.Spec : Prop :=
  ∀ n, P18352499936553596702.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P2506032137044763136

`A124303(n+1)-floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A214142.P2506032137044763136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124303 (n + 1) - a (n - 1)

end

end A214142.P2506032137044763136

namespace A214142

/-- `A124303(n+1)-floor(a(n-1))` -/
def P2506032137044763136.Spec : Prop :=
  ∀ n, P2506032137044763136.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P11921490954729188002

`∑[A005418(2*n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A214142.P11921490954729188002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A005418 (2 * n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A214142.P11921490954729188002

namespace A214142

/-- `∑[A005418(2*n-1)-a(n-1)]` -/
def P11921490954729188002.Spec : Prop :=
  ∀ n, P11921490954729188002.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P4299195729240336084

`(A110613(n)+A007581(n))/2`
-/

namespace A214142.P4299195729240336084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110613 n + A007581 n : ℚ) / 2

end

end A214142.P4299195729240336084

namespace A214142

/-- `(A110613(n)+A007581(n))/2` -/
def P4299195729240336084.Spec : Prop :=
  ∀ n, P4299195729240336084.a n = (A214142 (n + 1) : ℚ)

end A214142

/-! ## A214142.P2331425018737560764

`A133684(2*n+1)+A115851(2*n+1)`
-/

namespace A214142.P2331425018737560764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n + 1) + A115851 (2 * n + 1)

end

end A214142.P2331425018737560764

namespace A214142

/-- `A133684(2*n+1)+A115851(2*n+1)` -/
def P2331425018737560764.Spec : Prop :=
  ∀ n, P2331425018737560764.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P18111998129122468113

`A192467(n+1)-A117616(n)`
-/

namespace A214142.P18111998129122468113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192467 (n + 1) - A117616 n

end

end A214142.P18111998129122468113

namespace A214142

/-- `A192467(n+1)-A117616(n)` -/
def P18111998129122468113.Spec : Prop :=
  ∀ n, P18111998129122468113.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P10755878945730109238

`A018240(2*n+3)-A015521(n)`
-/

namespace A214142.P10755878945730109238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018240 (2 * n + 3) - A015521 n

end

end A214142.P10755878945730109238

namespace A214142

/-- `A018240(2*n+3)-A015521(n)` -/
def P10755878945730109238.Spec : Prop :=
  ∀ n, P10755878945730109238.a n = A214142 (n + 1)

end A214142

/-! ## A214142.P16269832840606910827

`2^(n+1)/6-11*(-1)^(n+1)/30+4^(n+1)/30+1/6`
-/

namespace A214142.P16269832840606910827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / 6 - (11 * (-1) ^ (n + 1) : ℚ) / 30 + (4 ^ (n + 1) : ℚ) / 30 + (1 : ℚ) / 6

end

end A214142.P16269832840606910827

namespace A214142

/-- `2^(n+1)/6-11*(-1)^(n+1)/30+4^(n+1)/30+1/6` -/
def P16269832840606910827.Spec : Prop :=
  ∀ n, P16269832840606910827.a n = (A214142 (n + 1) : ℚ)

theorem P16269832840606910827.correct : P16269832840606910827.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A214142, Nat.add_sub_cancel, A214142.P16269832840606910827.a, A214142.P12692194807648372891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A214142, Nat.add_sub_cancel, A214142.P16269832840606910827.a, A214142.P12692194807648372891.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A214142

/-!
# A214143: Number of 0..4 colorings of a 2 X (n+1) array circular in the n+1 direction with new values 0..4 introduced in row major order.

The programs for A214143, there is no canonical definition to state claims against.
-/

/-! ## A214143.P15036179397700409376

`A214141(∑[n+1]+2)`
-/

namespace A214143.P15036179397700409376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A214143.P15036179397700409376

/-!
# A214144: Number of 0..4 colorings of a 3X(n+1) array circular in the n+1 direction with new values 0..4 introduced in row major order.

The programs for A214144, there is no canonical definition to state claims against.
-/

/-! ## A214144.P2530521614634492395

`A214141(∑[n+2]+4)`
-/

namespace A214144.P2530521614634492395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214144.P2530521614634492395

/-! ## A214144.P1661594967320847116

`A214141(A167614(n+1))+A025443(n)`
-/

namespace A214144.P1661594967320847116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A167614 (n + 1)).toNat + A025443 n

end

end A214144.P1661594967320847116

/-! ## A214144.P3430843795093593386

`A214141(A167614(n+1))+A137579(n)`
-/

namespace A214144.P3430843795093593386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A167614 (n + 1)).toNat + A137579 n

end

end A214144.P3430843795093593386

/-! ## A214144.P1067253606435010780

`A214141(A167614(n+1))+A185284(n)`
-/

namespace A214144.P1067253606435010780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A167614 (n + 1)).toNat + A185284 n

end

end A214144.P1067253606435010780

/-! ## A214144.P13779851639979648883

`or(A003982(n), A214141(A167614(n+1)))`
-/

namespace A214144.P13779851639979648883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A214141 (A167614 (n + 1)).toNat)

end

end A214144.P13779851639979648883

/-!
# A214145: Number of 0..4 colorings of a 4X(n+1) array circular in the n+1 direction with new values 0..4 introduced in row major order.

The programs for A214145, there is no canonical definition to state claims against.
-/

/-! ## A214145.P1034788337779767503

`A214141(A141214(n)+7)`
-/

namespace A214145.P1034788337779767503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A141214 n + 7).toNat

end

end A214145.P1034788337779767503

/-! ## A214145.P12231989904379259016

`A214141(A052905(n)+9)`
-/

namespace A214145.P12231989904379259016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A052905 n + 9).toNat

end

end A214145.P12231989904379259016

/-! ## A214145.P14714779412955064356

`A214141(A055999(n)+10)`
-/

namespace A214145.P14714779412955064356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A055999 n + 10).toNat

end

end A214145.P14714779412955064356

/-! ## A214145.P15919531320495457178

`A214141(A167614(n+2)+1)`
-/

namespace A214145.P15919531320495457178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A167614 (n + 2) + 1).toNat

end

end A214145.P15919531320495457178

/-! ## A214145.P13853746001131181437

`A214141(eq[5, A131818(n+1)])`
-/

namespace A214145.P13853746001131181437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214145.P13853746001131181437

/-!
# A214146: Number of 0..4 colorings of a 5X(n+1) array circular in the n+1 direction with new values 0..4 introduced in row major order.

The programs for A214146, there is no canonical definition to state claims against.
-/

/-! ## A214146.P11049552658889117650

`A214141(A056000(n)+15)`
-/

namespace A214146.P11049552658889117650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (A056000 n + 15).toNat

end

end A214146.P11049552658889117650

/-! ## A214146.P11655230527896841604

`A214141(eq[6, A131818(n+1)])`
-/

namespace A214146.P11655230527896841604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214146.P11655230527896841604

/-!
# A214147: 

The programs for A214147, there is no canonical definition to state claims against.
-/

/-! ## A214147.P14206050360317668930

`A214141(eq[7, A131818(n+1)])`
-/

namespace A214147.P14206050360317668930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214147.P14206050360317668930

/-!
# A214151: 

The programs for A214151, there is no canonical definition to state claims against.
-/

/-! ## A214151.P14487431494640935486

`∩[A015919(n+1), A348845(n)]`
-/

namespace A214151.P14487431494640935486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214151.P14487431494640935486

/-! ## A214151.P10239613162347391391

`∩[A072330(n+1), A332446(n+1)]`
-/

namespace A214151.P10239613162347391391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214151.P10239613162347391391

/-! ## A214151.P9097398171368762286

`∩[A084547(n+1), A332446(n+1)]`
-/

namespace A214151.P9097398171368762286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214151.P9097398171368762286

/-!
# A214152: Number of permutations T(n,k) in S_n containing an increasing subsequence of length k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A214152, there is no canonical definition to state claims against.
-/

/-! ## A214152.P18227112492340541966

`A258997(n)+A179456((n+1)^A309635(n+1)!)`
-/

namespace A214152.P18227112492340541966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 n + A179456 ((n + 1) ^ Nat.factorial (A309635 (n + 1)).toNat)

end

end A214152.P18227112492340541966

/-! ## A214152.P16623898648865535364

`A258997(n)+A179456(A255421(n+1)^A309662(n)!)`
-/

namespace A214152.P16623898648865535364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258997 n + A179456 (A255421 (n + 1) ^ Nat.factorial (A309662 n).toNat).toNat

end

end A214152.P16623898648865535364

/-! ## A214152.P17562588608074917604

`A179456(n+1)+A097796(A019321(n))`
-/

namespace A214152.P17562588608074917604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179456 (n + 1) + A097796 (A019321 n).toNat

end

end A214152.P17562588608074917604

/-! ## A214152.P6861459680815735946

`A105278(n+1)-A287008(A125860(n))`
-/

namespace A214152.P6861459680815735946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (n + 1) - A287008 (A125860 n).toNat

end

end A214152.P6861459680815735946

/-! ## A214152.P16021095493439450494

`A308498(n+1)-A321537(A001787(n))`
-/

namespace A214152.P16021095493439450494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308498 (n + 1) - A321537 (A001787 n).toNat

end

end A214152.P16021095493439450494

/-!
# A214153: Numbers k for which k and tau(k) are both congruent to 1 modulo 3.

The programs for A214153, the canonical program `A214153.P12597963895467344712` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214153 has offset 1).

The definition of A214153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214153.P12597963895467344712

`filter[A211337(n+1), A373977(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A214153

/-- `filter[A211337(n+1), A373977(#)]` -/
def P12597963895467344712.Spec : Prop :=
  ∀ n, P12597963895467344712.a n = A214153 (n + 1)

theorem P12597963895467344712.correct : P12597963895467344712.Spec := by
  intro n
  simp only [A214153, Nat.add_sub_cancel]

end A214153

/-! ## A214153.P7269718667231858325

`∩[A211337(n+1), A016777(n)]`
-/

namespace A214153.P7269718667231858325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214153.P7269718667231858325

namespace A214153

/-- `∩[A211337(n+1), A016777(n)]` -/
def P7269718667231858325.Spec : Prop :=
  ∀ n, (P7269718667231858325.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P10333052372704634850

`∩[A033627(n+1), A211337(n+1)]`
-/

namespace A214153.P10333052372704634850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214153.P10333052372704634850

namespace A214153

/-- `∩[A033627(n+1), A211337(n+1)]` -/
def P10333052372704634850.Spec : Prop :=
  ∀ n, (P10333052372704634850.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P410255653631578587

`A211337(eq[1, A211337(n+1)%3]+1)`
-/

namespace A214153.P410255653631578587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211337 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A214153.P410255653631578587

namespace A214153

/-- `A211337(eq[1, A211337(n+1)%3]+1)` -/
def P410255653631578587.Spec : Prop :=
  ∀ n, P410255653631578587.a n = A214153 (n + 1)

end A214153

/-! ## A214153.P14373625184174144040

`eq[1, n%gcd(3, A032741(n))]`
-/

namespace A214153.P14373625184174144040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Int.gcd 3 (A032741 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214153.P14373625184174144040

namespace A214153

/-- `eq[1, n%gcd(3, A032741(n))]` -/
def P14373625184174144040.Spec : Prop :=
  ∀ n, (P14373625184174144040.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P14484814284637322210

`A016777(eq[1, A210826(3*n+1)])`
-/

namespace A214153.P14484814284637322210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210826 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214153.P14484814284637322210

namespace A214153

/-- `A016777(eq[1, A210826(3*n+1)])` -/
def P14484814284637322210.Spec : Prop :=
  ∀ n, P14484814284637322210.a n = A214153 (n + 1)

end A214153

/-! ## A214153.P17773008333859789833

`A016777(eq[1, A074943(A016777(n))])`
-/

namespace A214153.P17773008333859789833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074943 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214153.P17773008333859789833

namespace A214153

/-- `A016777(eq[1, A074943(A016777(n))])` -/
def P17773008333859789833.Spec : Prop :=
  ∀ n, P17773008333859789833.a n = A214153 (n + 1)

end A214153

/-! ## A214153.P7228084507145983277

`eq[A092092(n+2), A104555(A032741(n))]`
-/

namespace A214153.P7228084507145983277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214153.P7228084507145983277

namespace A214153

/-- `eq[A092092(n+2), A104555(A032741(n))]` -/
def P7228084507145983277.Spec : Prop :=
  ∀ n, (P7228084507145983277.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P7872717716738175181

`∩[A211337(n+1), A291745(n+1)]`
-/

namespace A214153.P7872717716738175181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214153.P7872717716738175181

namespace A214153

/-- `∩[A211337(n+1), A291745(n+1)]` -/
def P7872717716738175181.Spec : Prop :=
  ∀ n, (P7872717716738175181.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P466777313488227928

`eq[A104555(2*n+1), A104555(A032741(n))]`
-/

namespace A214153.P466777313488227928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214153.P466777313488227928

namespace A214153

/-- `eq[A104555(2*n+1), A104555(A032741(n))]` -/
def P466777313488227928.Spec : Prop :=
  ∀ n, (P466777313488227928.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P4208132951681593231

`∩[A026488(n+1), A211337(n+1)]`
-/

namespace A214153.P4208132951681593231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A214153.P4208132951681593231

namespace A214153

/-- `∩[A026488(n+1), A211337(n+1)]` -/
def P4208132951681593231.Spec : Prop :=
  ∀ n, (P4208132951681593231.a n : ℤ) = A214153 (n + 1)

end A214153

/-! ## A214153.P18034796598093607370

`eq[A016345(A032741(3*n)), A277544(4*n+3)]`
-/

namespace A214153.P18034796598093607370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (A032741 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A214153.P18034796598093607370

namespace A214153

/-- `eq[A016345(A032741(3*n)), A277544(4*n+3)]` -/
def P18034796598093607370.Spec : Prop :=
  ∀ n, (P18034796598093607370.a n : ℤ) = A214153 (n + 1)

end A214153

/-!
# A214154: Number of ways to represent 2n as the sum of two distinct k-almost primes: #{m

The programs for A214154, there is no canonical definition to state claims against.
-/

/-! ## A214154.P6901943503765681881

`A001222(C(A029005(n), A029013(n)))`
-/

namespace A214154.P6901943503765681881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A029005 n).toNat (A029013 n).toNat)

end

end A214154.P6901943503765681881

/-! ## A214154.P12341403374401004411

`A001222(C(A029032(n+1), A029013(n)))`
-/

namespace A214154.P12341403374401004411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A029032 (n + 1)).toNat (A029013 n).toNat)

end

end A214154.P12341403374401004411

/-!
# A214157: Expansion of (1/x) * (f(-x^2, -x^11) * f(-x^5, -x^8) * f(-x^6, -x^7)) / (f(-x, -x^12) * f(-x^3, -x^10) * f(-x^4, -x^9)) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A214157, there is no canonical definition to state claims against.
-/

/-! ## A214157.P4956328149107749769

`A246144(A210791(2*(n+1)))-A292594(n+1)`
-/

namespace A214157.P4956328149107749769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246144 (A210791 (2 * (n + 1))).toNat - A292594 (n + 1)

end

end A214157.P4956328149107749769

/-!
# A214159: Number of n X 3 nonconsecutive tableaux.

The programs for A214159, there is no canonical definition to state claims against.
-/

/-! ## A214159.P13271690491506843128

`A214021(∑[n+3]+n+3)`
-/

namespace A214159.P13271690491506843128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A214159.P13271690491506843128

/-! ## A214159.P2756193534539675189

`A353636((a(n-1)-(char[1]-a(n-2)))*n²)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A214159.P2756193534539675189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A353636 ((a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))) * (n ^ 2 : ℤ)).toNat

end

end A214159.P2756193534539675189

/-!
# A214160: Number of 0..5 colorings of an n X 3 array circular in the 3 direction with new values 0..5 introduced in row major order.

The programs for A214160, there is no canonical definition to state claims against.
-/

/-! ## A214160.P6906802241076959628

`A214166(∑[n+2])`
-/

namespace A214160.P6906802241076959628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214160.P6906802241076959628

/-! ## A214160.P9330083164333322

`record[A129186(n)*A214166(n+1)]`
-/

namespace A214160.P9330083164333322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A214166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214160.P9330083164333322

/-! ## A214160.P18263295319752927155

`record[gcd(A116598(n), A214166(n+1))]`
-/

namespace A214160.P18263295319752927155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116598 n) (A214166 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214160.P18263295319752927155

/-! ## A214160.P13984824555157151480

`record[and(A167374(n), A214166(n+1))]`
-/

namespace A214160.P13984824555157151480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A214166 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214160.P13984824555157151480

/-! ## A214160.P223267287098380707

`record[gcd(A214166(n+3), A214178(n+3))]`
-/

namespace A214160.P223267287098380707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214166 (n + 3)) (A214178 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214160.P223267287098380707

/-!
# A214161: Number of 0..5 colorings of an nX4 array circular in the 4 direction with new values 0..5 introduced in row major order.

The programs for A214161, there is no canonical definition to state claims against.
-/

/-! ## A214161.P15571297777104509345

`A214166(∑[n+3]+1)`
-/

namespace A214161.P15571297777104509345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214161.P15571297777104509345

/-! ## A214161.P6263851229366613964

`or(char[1], A214166(A027379(n+1)+1))`
-/

namespace A214161.P6263851229366613964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A214166 (A027379 (n + 1) + 1).toNat)

end

end A214161.P6263851229366613964

/-!
# A214162: Number of 0..5 colorings of an nX5 array circular in the 5 direction with new values 0..5 introduced in row major order.

The programs for A214162, there is no canonical definition to state claims against.
-/

/-! ## A214162.P8817760071269717111

`A214166(A141214(n+1))`
-/

namespace A214162.P8817760071269717111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A141214 (n + 1)).toNat

end

end A214162.P8817760071269717111

/-! ## A214162.P17979722041682692175

`A214166(A027379(n+2))`
-/

namespace A214162.P17979722041682692175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A027379 (n + 2)).toNat

end

end A214162.P17979722041682692175

/-! ## A214162.P9524941211064912303

`A214166(A167614(n+1)+A005408(n))`
-/

namespace A214162.P9524941211064912303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A167614 (n + 1) + A005408 n).toNat

end

end A214162.P9524941211064912303

/-!
# A214163: 

The programs for A214163, there is no canonical definition to state claims against.
-/

/-! ## A214163.P14063761090588330993

`A214166(A046691(n+3))`
-/

namespace A214163.P14063761090588330993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A046691 (n + 3)).toNat

end

end A214163.P14063761090588330993

/-! ## A214163.P11793417224957511937

`A214166(eq[4, A193592(n)])`
-/

namespace A214163.P11793417224957511937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214163.P11793417224957511937

/-!
# A214164: 

The programs for A214164, there is no canonical definition to state claims against.
-/

/-! ## A214164.P16697030855836054158

`A214166(eq[5, A193592(n)])`
-/

namespace A214164.P16697030855836054158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214164.P16697030855836054158

/-!
# A214165: 

The programs for A214165, there is no canonical definition to state claims against.
-/

/-! ## A214165.P15548989901769100114

`A214166(A000124(n+6)+n)`
-/

namespace A214165.P15548989901769100114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A214165.P15548989901769100114

/-!
# A214166: T(n,k)=Number of 0..5 colorings of an nx(k+1) array circular in the k+1 direction with new values 0..5 introduced in row major order.

The programs for A214166, there is no canonical definition to state claims against.
-/

/-! ## A214166.P15524902787062175560

`A214187(n+1)+A025466(n!)-A046731(A033110(n+1))`
-/

namespace A214166.P15524902787062175560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (n + 1) + A025466 (Nat.factorial n) - A046731 (A033110 (n + 1)).toNat

end

end A214166.P15524902787062175560

/-!
# A214167: Number of 0..5 colorings of a 1 X (n+1) array circular in the n+1 direction with new values 0..5 introduced in row major order.

The programs for A214167, the canonical program `A214167.P16007822320014085442` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214167 has offset 1).

The definition of A214167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214167.P16007822320014085442

`A056272(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A214167

/-- `A056272(n+1)-a(n-1)` -/
def P16007822320014085442.Spec : Prop :=
  ∀ n, P16007822320014085442.a n = A214167 (n + 1)

theorem P16007822320014085442.correct : P16007822320014085442.Spec := by
  intro n
  simp only [A214167, Nat.add_sub_cancel]

end A214167

/-! ## A214167.P12986029719494358627

`A056470(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A214167.P12986029719494358627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056470 (2 * (n + 1)) - a (n - 1)

end

end A214167.P12986029719494358627

namespace A214167

/-- `A056470(2*(n+1))-a(n-1)` -/
def P12986029719494358627.Spec : Prop :=
  ∀ n, P12986029719494358627.a n = A214167 (n + 1)

end A214167

/-! ## A214167.P17381105213775537932

`A056506(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214167.P17381105213775537932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056506 (2 * n + 1) - a (n - 1)

end

end A214167.P17381105213775537932

namespace A214167

/-- `A056506(2*n+1)-a(n-1)` -/
def P17381105213775537932.Spec : Prop :=
  ∀ n, P17381105213775537932.a n = A214167 (n + 1)

end A214167

/-! ## A214167.P1188093834805035633

`abs(a(n-1)-A056506(A109613(2*n)))` with `a(0)=1`
-/

namespace A214167.P1188093834805035633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A056506 (A109613 (2 * n)).toNat|

end

end A214167.P1188093834805035633

namespace A214167

/-- `abs(a(n-1)-A056506(A109613(2*n)))` -/
def P1188093834805035633.Spec : Prop :=
  ∀ n, P1188093834805035633.a n = A214167 (n + 1)

end A214167

/-! ## A214167.P158893574467515715

`10*a(n-1)-30*a(n-2)+20*a(n-3)+31*a(n-4)-30*a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11, a(4)=41`
-/

namespace A214167.P158893574467515715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 11, 41] fun n a =>
  10 * a (n - 1) - 30 * a (n - 2) + 20 * a (n - 3) + 31 * a (n - 4) - 30 * a (n - 5)

end

end A214167.P158893574467515715

namespace A214167

/-- `10*a(n-1)-30*a(n-2)+20*a(n-3)+31*a(n-4)-30*a(n-5)` -/
def P158893574467515715.Spec : Prop :=
  ∀ n, P158893574467515715.a n = A214167 (n + 1)

end A214167

/-! ## A214167.P2874839929034074799

`2^(n+1)/9+3/16-53*(-1)^(n+1)/144+3^(n+1)/16+5^(n+1)/144`
-/

namespace A214167.P2874839929034074799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / 9 + (3 : ℚ) / 16 - (53 * (-1) ^ (n + 1) : ℚ) / 144 + (3 ^ (n + 1) : ℚ) / 16 + (5 ^ (n + 1) : ℚ) / 144

end

end A214167.P2874839929034074799

namespace A214167

/-- `2^(n+1)/9+3/16-53*(-1)^(n+1)/144+3^(n+1)/16+5^(n+1)/144` -/
def P2874839929034074799.Spec : Prop :=
  ∀ n, P2874839929034074799.a n = (A214167 (n + 1) : ℚ)

end A214167

/-!
# A214168: Number of 0..5 colorings of a 2 X (n+1) array circular in the n+1 direction with new values 0..5 introduced in row major order.

The programs for A214168, there is no canonical definition to state claims against.
-/

/-! ## A214168.P7842814983434267722

`A214166(∑[n+1]+2)`
-/

namespace A214168.P7842814983434267722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A214168.P7842814983434267722

/-! ## A214168.P13397982986500796128

`record[root(A214166(n+3), A171567(n))]`
-/

namespace A214168.P13397982986500796128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214166 (n + 3) : ℝ) ^ (1 / (A171567 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214168.P13397982986500796128

/-! ## A214168.P14551256589048590682

`record[root(A214166(n+3), A085478(n+1))]`
-/

namespace A214168.P14551256589048590682
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214166 (n + 3) : ℝ) ^ (1 / (A085478 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214168.P14551256589048590682

/-! ## A214168.P6522942895582633813

`record[root(A214166(n+3), A338131(n))]`
-/

namespace A214168.P6522942895582633813
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214166 (n + 3) : ℝ) ^ (1 / (A338131 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214168.P6522942895582633813

/-! ## A214168.P3833263150666876578

`record[root(A214166(n+3), A219002(n+1))]`
-/

namespace A214168.P3833263150666876578
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A214166 (n + 3) : ℝ) ^ (1 / (A219002 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214168.P3833263150666876578

/-!
# A214169: Number of 0..5 colorings of a 3X(n+1) array circular in the n+1 direction with new values 0..5 introduced in row major order.

The programs for A214169, there is no canonical definition to state claims against.
-/

/-! ## A214169.P5488166294192239633

`A214166(∑[n+2]+4)`
-/

namespace A214169.P5488166294192239633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214169.P5488166294192239633

/-! ## A214169.P12550912284827131246

`lcm(A054977(n), A214166(A167614(n+1)))`
-/

namespace A214169.P12550912284827131246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A214166 (A167614 (n + 1)).toNat)

end

end A214169.P12550912284827131246

/-! ## A214169.P10228309943270479156

`or(A214166(A167614(n+1)), A316867(n))`
-/

namespace A214169.P10228309943270479156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214166 (A167614 (n + 1)).toNat) (A316867 n)

end

end A214169.P10228309943270479156

/-! ## A214169.P14399370879255233857

`A214166(A167614(n+1))+A133010(n+1)`
-/

namespace A214169.P14399370879255233857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A167614 (n + 1)).toNat + A133010 (n + 1)

end

end A214169.P14399370879255233857

/-! ## A214169.P13163135042255246922

`A214166(A167614(n+1))+A158465(n+1)`
-/

namespace A214169.P13163135042255246922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A167614 (n + 1)).toNat + A158465 (n + 1)

end

end A214169.P13163135042255246922

/-!
# A214170: Number of 0..5 colorings of a 4X(n+1) array circular in the n+1 direction with new values 0..5 introduced in row major order.

The programs for A214170, there is no canonical definition to state claims against.
-/

/-! ## A214170.P11136870975713201752

`A214166(A141214(n)+7)`
-/

namespace A214170.P11136870975713201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A141214 n + 7).toNat

end

end A214170.P11136870975713201752

/-! ## A214170.P1653218816456461606

`A214166(A052905(n)+9)`
-/

namespace A214170.P1653218816456461606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A052905 n + 9).toNat

end

end A214170.P1653218816456461606

/-! ## A214170.P7039829377798972232

`A214166(A167614(n+2)+1)`
-/

namespace A214170.P7039829377798972232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A167614 (n + 2) + 1).toNat

end

end A214170.P7039829377798972232

/-!
# A214171: 

The programs for A214171, there is no canonical definition to state claims against.
-/

/-! ## A214171.P7343815718361994811

`A214166(A167499(n+3))`
-/

namespace A214171.P7343815718361994811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A167499 (n + 3)).toNat

end

end A214171.P7343815718361994811

/-! ## A214171.P10227291399661343671

`A214166(eq[4, A002262(n)]+1)`
-/

namespace A214171.P10227291399661343671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A214171.P10227291399661343671

/-!
# A214172: 

The programs for A214172, there is no canonical definition to state claims against.
-/

/-! ## A214172.P5169750079693201151

`A214166(A167499(n+3)+n+6)`
-/

namespace A214172.P5169750079693201151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A214172.P5169750079693201151

/-!
# A214175: Primes of the form x^3 + y^3 + 1, where x and y are primes.

The programs for A214175, there is no canonical definition to state claims against.
-/

/-! ## A214175.P15285538101484438870

`p?[A086119(n+1)+1]`
-/

namespace A214175.P15285538101484438870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214175.P15285538101484438870

/-! ## A214175.P16893113186037132715

`p?[A258865(n+1)-7]`
-/

namespace A214175.P16893113186037132715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214175.P16893113186037132715

/-! ## A214175.P8589170583764317815

`p?[∪[A120398(n+1), A172190(n+1)]+1]`
-/

namespace A214175.P8589170583764317815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214175.P8589170583764317815

/-! ## A214175.P9106656795738083534

`p?[∪[2*A030078(n+1), A120398(n+1)]+1]`
-/

namespace A214175.P9106656795738083534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030078 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214175.P9106656795738083534

/-! ## A214175.P15528917136519314552

`record[A020639(A086119(n+1)+1)]`
-/

namespace A214175.P15528917136519314552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A086119 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214175.P15528917136519314552

/-!
# A214178: Triangle T(n,k) by rows: the k-th derivative of the Fibonacci Polynomial F_n(x) evaluated at x=1.

The programs for A214178, the canonical program `A214178.P11403430696683666468` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214178 has offset 0).

The definition of A214178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214178.P11403430696683666468

`A155161(n+1)*A233543(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A214178

/-- `A155161(n+1)*A233543(n)` -/
def P11403430696683666468.Spec : Prop :=
  ∀ n, P11403430696683666468.a n = A214178 n

theorem P11403430696683666468.correct : P11403430696683666468.Spec := by
  intro n
  simp only [A214178]

end A214178

/-! ## A214178.P2209055857112542526

`A002262(n)!*A155161(n+1)`
-/

namespace A214178.P2209055857112542526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A155161 (n + 1)

end

end A214178.P2209055857112542526

namespace A214178

/-- `A002262(n)!*A155161(n+1)` -/
def P2209055857112542526.Spec : Prop :=
  ∀ n, P2209055857112542526.a n = A214178 n

end A214178

/-! ## A214178.P18047313264705502750

`sqrt(A143844(n))!*A155161(n+1)`
-/

namespace A214178.P18047313264705502750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat : ℤ) * A155161 (n + 1)

end

end A214178.P18047313264705502750

namespace A214178

/-- `sqrt(A143844(n))!*A155161(n+1)` -/
def P18047313264705502750.Spec : Prop :=
  ∀ n, P18047313264705502750.a n = A214178 n

end A214178

/-! ## A214178.P4411821363012593135

`A144328(n+1)!*A155161(n+1)`
-/

namespace A214178.P4411821363012593135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A155161 (n + 1)

end

end A214178.P4411821363012593135

namespace A214178

/-- `A144328(n+1)!*A155161(n+1)` -/
def P4411821363012593135.Spec : Prop :=
  ∀ n, P4411821363012593135.a n = A214178 n

end A214178

/-! ## A214178.P6292748160039637626

`A028421(A112367(n))*A155161(n+1)`
-/

namespace A214178.P6292748160039637626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A112367 n).toNat * A155161 (n + 1)

end

end A214178.P6292748160039637626

namespace A214178

/-- `A028421(A112367(n))*A155161(n+1)` -/
def P6292748160039637626.Spec : Prop :=
  ∀ n, P6292748160039637626.a n = A214178 n

end A214178

/-! ## A214178.P11416537498214770004

`A119502(A061579(n))*A155161(n+1)`
-/

namespace A214178.P11416537498214770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 (A061579 n).toNat * A155161 (n + 1)

end

end A214178.P11416537498214770004

namespace A214178

/-- `A119502(A061579(n))*A155161(n+1)` -/
def P11416537498214770004.Spec : Prop :=
  ∀ n, P11416537498214770004.a n = A214178 n

end A214178

/-! ## A214178.P1211352285359674913

`A155161(n+1)*A265312(A245300(n))`
-/

namespace A214178.P1211352285359674913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (n + 1) * A265312 (A245300 n).toNat

end

end A214178.P1211352285359674913

namespace A214178

/-- `A155161(n+1)*A265312(A245300(n))` -/
def P1211352285359674913.Spec : Prop :=
  ∀ n, P1211352285359674913.a n = A214178 n

end A214178

/-!
# A214179: Primes p such that least positive primitive root of p is equal to number of 1's in binary representation of p.

The programs for A214179, there is no canonical definition to state claims against.
-/

/-! ## A214179.P10173288213891572913

`p?[eq[A000120(n), A046145(n)]]`
-/

namespace A214179.P10173288213891572913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A214179.P10173288213891572913

/-! ## A214179.P11654517630861829881

`p?[∑[A057028(∏[2-n²%3]-1)]]`
-/

namespace A214179.P11654517630861829881
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (∏ j ∈ Finset.range (n + 1), f3 j - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A214179.P11654517630861829881

/-! ## A214179.P7632839502019336727

`A265771(A184902(n+1))`
-/

namespace A214179.P7632839502019336727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265771 (A184902 (n + 1)).toNat

end

end A214179.P7632839502019336727

/-!
# A214180: Least m>0 such that 2^n-m and 5^n-m are relatively prime.

The programs for A214180, there is no canonical definition to state claims against.
-/

/-! ## A214180.P13107667394317257419

`A014963(A007318(A038371(n)))%4`
-/

namespace A214180.P13107667394317257419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A007318 (A038371 n).toNat).toNat) 4

end

end A214180.P13107667394317257419

/-! ## A214180.P17172375712487164905

`gcd(A017197(n), A038374(A038371(n)))`
-/

namespace A214180.P17172375712487164905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017197 n) (A038374 (A038371 n).toNat)

end

end A214180.P17172375712487164905

/-! ## A214180.P4741205881415245449

`gcd(A053438(n), A057357(A038371(n)))`
-/

namespace A214180.P4741205881415245449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053438 n) (A057357 (A038371 n).toNat)

end

end A214180.P4741205881415245449

/-! ## A214180.P11584755872111207959

`A356156(A276086(3*n)+4*n)`
-/

namespace A214180.P11584755872111207959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356156 (A276086 (3 * n) + (4 * n : ℤ)).toNat

end

end A214180.P11584755872111207959

/-! ## A214180.P4379208349917424303

`gcd(p?[A153246(2*n)], A014681(n+2))`
-/

namespace A214180.P4379208349917424303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014681 (n + 2))

end

end A214180.P4379208349917424303

/-!
# A214181: Number of 0..6 colorings of an n X 3 array circular in the 3 direction with new values 0..6 introduced in row major order.

The programs for A214181, there is no canonical definition to state claims against.
-/

/-! ## A214181.P1449053827076768337

`(2^(n-3)*(67^n+9)+11^n+3*2^(5*(n+1)-7))/3`
-/

namespace A214181.P1449053827076768337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (67 ^ n + 9 : ℚ) + (11 ^ n : ℚ) + 3 * (2 : ℚ) ^ ((5 * (n + 1) : ℤ) - 7 : ℤ)) / 3

end

end A214181.P1449053827076768337

/-! ## A214181.P12272322105284371786

`A214187(∑[n+2])`
-/

namespace A214181.P12272322105284371786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A214181.P12272322105284371786

/-! ## A214181.P255254063695562619

`record[A214187(A198455(n+1))]`
-/

namespace A214181.P255254063695562619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214181.P255254063695562619

/-! ## A214181.P13638670852241875505

`record[gcd(A105422(n), A214187(n+1))]`
-/

namespace A214181.P13638670852241875505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A214187 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214181.P13638670852241875505

/-!
# A214182: Number of 0..6 colorings of an nX4 array circular in the 4 direction with new values 0..6 introduced in row major order.

The programs for A214182, there is no canonical definition to state claims against.
-/

/-! ## A214182.P7827801183188540931

`A214187(∑[n+3]+1)`
-/

namespace A214182.P7827801183188540931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A214182.P7827801183188540931

/-!
# A214183: Number of 0..6 colorings of an nX5 array circular in the 5 direction with new values 0..6 introduced in row major order.

The programs for A214183, there is no canonical definition to state claims against.
-/

/-! ## A214183.P13368522537612722323

`A214187(∑[n+4]+3)`
-/

namespace A214183.P13368522537612722323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A214183.P13368522537612722323

/-!
# A214184: 

The programs for A214184, there is no canonical definition to state claims against.
-/

/-! ## A214184.P8195437348056457221

`A214187(eq[4, A193592(n)])`
-/

namespace A214184.P8195437348056457221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214184.P8195437348056457221

/-!
# A214185: 

The programs for A214185, there is no canonical definition to state claims against.
-/

/-! ## A214185.P17833391512749487573

`A214187(eq[3, A219347(n)])`
-/

namespace A214185.P17833391512749487573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214185.P17833391512749487573

/-! ## A214185.P5282950930105558106

`A214187(eq[5, A193592(n)])`
-/

namespace A214185.P5282950930105558106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214185.P5282950930105558106

/-!
# A214186: 

The programs for A214186, there is no canonical definition to state claims against.
-/

/-! ## A214186.P10051263265763693836

`A214187(eq[4, A219347(n)])`
-/

namespace A214186.P10051263265763693836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214186.P10051263265763693836

/-!
# A214187: T(n,k)=Number of 0..6 colorings of an nx(k+1) array circular in the k+1 direction with new values 0..6 introduced in row major order.

The programs for A214187, there is no canonical definition to state claims against.
-/

/-! ## A214187.P14766297191779946228

`A214238(n+1)-A004198(A000245(n))`
-/

namespace A214187.P14766297191779946228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (n + 1) - A004198 (A000245 n).toNat

end

end A214187.P14766297191779946228

/-! ## A214187.P11840128678187918948

`A214238(n+1)-A327302(A052403(n+1))`
-/

namespace A214187.P11840128678187918948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (n + 1) - A327302 (A052403 (n + 1)).toNat

end

end A214187.P11840128678187918948

/-! ## A214187.P13869893467397830280

`A214238(n+1)-A025466(n!)`
-/

namespace A214187.P13869893467397830280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (n + 1) - A025466 (Nat.factorial n)

end

end A214187.P13869893467397830280

/-! ## A214187.P17803547816071813501

`A214238(n+1)+A016389(A285262(n))`
-/

namespace A214187.P17803547816071813501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (n + 1) + A016389 (A285262 n).toNat

end

end A214187.P17803547816071813501

/-!
# A214188: Number of 0..6 colorings of a 1 X (n+1) array circular in the n+1 direction with new values 0..6 introduced in row major order.

The programs for A214188, there is no canonical definition to state claims against.
-/

/-! ## A214188.P13437538920110965475

`A056273(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214188.P13437538920110965475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056273 (n + 1) - a (n - 1)

end

end A214188.P13437538920110965475

/-! ## A214188.P9063497155593074708

`A056471(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A214188.P9063497155593074708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056471 (2 * (n + 1)) - a (n - 1)

end

end A214188.P9063497155593074708

/-! ## A214188.P16295735446565399837

`A056507(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A214188.P16295735446565399837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056507 (2 * n + 1) - a (n - 1)

end

end A214188.P16295735446565399837

/-! ## A214188.P13940420992459136646

`A203647(A060577(n+4))-a(n-1)` with `a(0)=1`
-/

namespace A214188.P13940420992459136646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A203647 (A060577 (n + 4)).toNat - a (n - 1)

end

end A214188.P13940420992459136646

/-! ## A214188.P17588090158127742750

`A198723(∑[n+1]+1)-a(n-1)` with `a(0)=1`
-/

namespace A214188.P17588090158127742750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A198723 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A214188.P17588090158127742750

/-!
# A214189: Number of 0..6 colorings of a 2X(n+1) array circular in the n+1 direction with new values 0..6 introduced in row major order.

The programs for A214189, there is no canonical definition to state claims against.
-/

/-! ## A214189.P10124971814607172357

`A214187(∑[n+1]+2)`
-/

namespace A214189.P10124971814607172357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A214189.P10124971814607172357

/-!
# A214190: Number of 0..6 colorings of a 3X(n+1) array circular in the n+1 direction with new values 0..6 introduced in row major order.

The programs for A214190, there is no canonical definition to state claims against.
-/

/-! ## A214190.P2219206593667822620

`A214187(∑[n+2]+4)`
-/

namespace A214190.P2219206593667822620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A214190.P2219206593667822620

/-! ## A214190.P8037590539062385888

`A214187(A167614(n+1))+A025466(n)`
-/

namespace A214190.P8037590539062385888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A167614 (n + 1)).toNat + A025466 n

end

end A214190.P8037590539062385888

/-! ## A214190.P4129988244795483195

`A214187(A167614(n+1))+A185284(n)`
-/

namespace A214190.P4129988244795483195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A167614 (n + 1)).toNat + A185284 n

end

end A214190.P4129988244795483195

/-! ## A214190.P3963560237677659468

`A178688(n+1)*A214187(A167614(n+1))`
-/

namespace A214190.P3963560237677659468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178688 (n + 1) * A214187 (A167614 (n + 1)).toNat

end

end A214190.P3963560237677659468

/-! ## A214190.P73951919053480002

`A214187(A167614(n+1))%A214191(n+1)`
-/

namespace A214190.P73951919053480002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214187 (A167614 (n + 1)).toNat) (A214191 (n + 1))

end

end A214190.P73951919053480002

/-!
# A214191: Number of 0..6 colorings of a 4X(n+1) array circular in the n+1 direction with new values 0..6 introduced in row major order.

The programs for A214191, there is no canonical definition to state claims against.
-/

/-! ## A214191.P16358522005400445673

`A214187(A141214(n)+7)`
-/

namespace A214191.P16358522005400445673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A141214 n + 7).toNat

end

end A214191.P16358522005400445673

/-! ## A214191.P10625382310893299409

`A214187(A055999(n)+10)`
-/

namespace A214191.P10625382310893299409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A055999 n + 10).toNat

end

end A214191.P10625382310893299409

/-! ## A214191.P15528382363026141272

`A214187(eq[5, A066657(n)])`
-/

namespace A214191.P15528382363026141272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214191.P15528382363026141272

/-! ## A214191.P12531371179259074852

`A214187(A167614(n+2)+1)`
-/

namespace A214191.P12531371179259074852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A167614 (n + 2) + 1).toNat

end

end A214191.P12531371179259074852

/-!
# A214192: 

The programs for A214192, there is no canonical definition to state claims against.
-/

/-! ## A214192.P15879084518107595947

`A214187(A167499(n+3))`
-/

namespace A214192.P15879084518107595947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A167499 (n + 3)).toNat

end

end A214192.P15879084518107595947

/-! ## A214192.P15348569507717316636

`A214187(eq[7, A066657(n)])`
-/

namespace A214192.P15348569507717316636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A214192.P15348569507717316636

/-! ## A214192.P16047841220457166026

`A214187(eq[4, A002262(n)]+1)`
-/

namespace A214192.P16047841220457166026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A214192.P16047841220457166026

/-!
# A214193: 

The programs for A214193, there is no canonical definition to state claims against.
-/

/-! ## A214193.P1215157319321669415

`A214187(A167499(n+3)+n+6)`
-/

namespace A214193.P1215157319321669415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214187 (A167499 (n + 3) + (n + 6 : ℤ)).toNat

end

end A214193.P1215157319321669415

/-!
# A214195: Numbers with the number of distinct prime factors a multiple of 3.

The programs for A214195, the canonical program `A214195.P1409231567041737422` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A214195 has offset 1).

The definition of A214195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A214195.P8848449763771548670

`lt[A001221(n+1)%3, 1]+1`
-/

namespace A214195.P8848449763771548670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A214195.P8848449763771548670

namespace A214195

/-- `lt[A001221(n+1)%3, 1]+1` -/
def P8848449763771548670.Spec : Prop :=
  ∀ n, (P8848449763771548670.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P1409231567041737422

`eq[(n+1)^3, A290480(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A214195

/-- `eq[(n+1)^3, A290480(n+1)]+1` -/
def P1409231567041737422.Spec : Prop :=
  ∀ n, (P1409231567041737422.a n : ℤ) = A214195 (n + 1)

theorem P1409231567041737422.correct : P1409231567041737422.Spec := by
  intro n
  simp only [A214195, Nat.add_sub_cancel]

end A214195

/-! ## A214195.P11445873895048534200

`∪[A006361(n), A033992(n+1)]`
-/

namespace A214195.P11445873895048534200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006361 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214195.P11445873895048534200

namespace A214195

/-- `∪[A006361(n), A033992(n+1)]` -/
def P11445873895048534200.Spec : Prop :=
  ∀ n, (P11445873895048534200.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P15878618822023664266

`∪[A010982(n), A033992(n+1)]`
-/

namespace A214195.P15878618822023664266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010982 (n + 29)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214195.P15878618822023664266

namespace A214195

/-- `∪[A010982(n), A033992(n+1)]` -/
def P15878618822023664266.Spec : Prop :=
  ∀ n, (P15878618822023664266.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P16268392341138329712

`∪[A033992(n+1), A017177(n)]`
-/

namespace A214195.P16268392341138329712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017177 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214195.P16268392341138329712

namespace A214195

/-- `∪[A033992(n+1), A017177(n)]` -/
def P16268392341138329712.Spec : Prop :=
  ∀ n, (P16268392341138329712.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P17734034470817064611

`∪[A033992(n+1), A185307(n+1)²²]`
-/

namespace A214195.P17734034470817064611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185307 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A214195.P17734034470817064611

namespace A214195

/-- `∪[A033992(n+1), A185307(n+1)²²]` -/
def P17734034470817064611.Spec : Prop :=
  ∀ n, (P17734034470817064611.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P13745928528446934021

`eq[2, (A001222(A007947(n+1))+2)%3]+1`
-/

namespace A214195.P13745928528446934021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A007947 (n + 1)).toNat + 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214195.P13745928528446934021

namespace A214195

/-- `eq[2, (A001222(A007947(n+1))+2)%3]+1` -/
def P13745928528446934021.Spec : Prop :=
  ∀ n, (P13745928528446934021.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P6856738916185373104

`record[n*A089233(A259936(n+1)+1)+1]`
-/

namespace A214195.P6856738916185373104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089233 (A259936 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214195.P6856738916185373104

namespace A214195

/-- `record[n*A089233(A259936(n+1)+1)+1]` -/
def P6856738916185373104.Spec : Prop :=
  ∀ n, P6856738916185373104.a n = A214195 (n + 1)

end A214195

/-! ## A214195.P14565815851503469577

`eq[A062513(n+1), n+1]+1`
-/

namespace A214195.P14565815851503469577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A214195.P14565815851503469577

namespace A214195

/-- `eq[A062513(n+1), n+1]+1` -/
def P14565815851503469577.Spec : Prop :=
  ∀ n, (P14565815851503469577.a n : ℤ) = A214195 (n + 1)

end A214195

/-! ## A214195.P14721737630254652033

`eq[1, A001222(A000203(A034444(n+1)+1))]+1`
-/

namespace A214195.P14721737630254652033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (A034444 (n + 1) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A214195.P14721737630254652033

namespace A214195

/-- `eq[1, A001222(A000203(A034444(n+1)+1))]+1` -/
def P14721737630254652033.Spec : Prop :=
  ∀ n, (P14721737630254652033.a n : ℤ) = A214195 (n + 1)

end A214195

/-!
# A214196: Unique terms in sequence A210144.

The programs for A214196, there is no canonical definition to state claims against.
-/

/-! ## A214196.P10232073263997780992

`record[A210144(A353278(n+1))]`
-/

namespace A214196.P10232073263997780992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210144 (A353278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214196.P10232073263997780992

/-! ## A214196.P1313635430544065479

`record[A210144(n+1)/A199515(n+2)]`
-/

namespace A214196.P1313635430544065479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210144 (n + 1) : ℚ) / (A199515 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214196.P1313635430544065479

/-! ## A214196.P12267599897267361204

`record[A210144(n+1)%A210144(n+5)]`
-/

namespace A214196.P12267599897267361204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210144 (n + 1)) (A210144 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214196.P12267599897267361204

/-! ## A214196.P2600870816597385590

`record[A210144(A324380(n))]`
-/

namespace A214196.P2600870816597385590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210144 (A324380 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214196.P2600870816597385590

/-!
# A214197: Primes of the "second kind".

The programs for A214197, there is no canonical definition to state claims against.
-/

/-! ## A214197.P15690644834589872433

`record[A210186(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A214197.P15690644834589872433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214197.P15690644834589872433

/-! ## A214197.P9455025285675563793

`record[A210186(A263131(n))]`
-/

namespace A214197.P9455025285675563793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (A263131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214197.P9455025285675563793

/-! ## A214197.P17563766789036689324

`record[A210186(A003602(n+1))]`
-/

namespace A214197.P17563766789036689324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214197.P17563766789036689324

/-! ## A214197.P6679189167828933228

`record[A210186(A100798(n+1))]`
-/

namespace A214197.P6679189167828933228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (A100798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214197.P6679189167828933228

/-! ## A214197.P3311218892373365690

`record[A210186(A295887(n+1))]`
-/

namespace A214197.P3311218892373365690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210186 (A295887 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A214197.P3311218892373365690

/-!
# A214198: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index >= 3.

The programs for A214198, there is no canonical definition to state claims against.
-/

/-! ## A214198.P18150942981528597525

`A214201(n)+A214199(n)`
-/

namespace A214198.P18150942981528597525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214201 n + A214199 n

end

end A214198.P18150942981528597525

/-! ## A214198.P1317118384664090462

`A120588(n)-A025266(A028310(n))`
-/

namespace A214198.P1317118384664090462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A025266 (A028310 n).toNat

end

end A214198.P1317118384664090462

/-! ## A214198.P4427411655247395486

`A214199(n)+A214204(n)+A214202(n)`
-/

namespace A214198.P4427411655247395486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214199 n + (A214204 n + A214202 n)

end

end A214198.P4427411655247395486

/-! ## A214198.P11656909492650284863

`A089408(A004273(n))-A025266(A028310(n))`
-/

namespace A214198.P11656909492650284863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (A004273 n).toNat - A025266 (A028310 n).toNat

end

end A214198.P11656909492650284863

/-! ## A214198.P9773566730601874829

`A120588(n)+A214199(n)-A025271(A028310(n))`
-/

namespace A214198.P9773566730601874829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (A214199 n - A025271 (A028310 n).toNat)

end

end A214198.P9773566730601874829

/-!
# A214199: Number of rooted planar binary unlabeled trees with n leaves and caterpillar index = 3.

The programs for A214199, there is no canonical definition to state claims against.
-/

/-! ## A214199.P7504216623066880950

`A025271(A028310(n))-A025266(A028310(n))`
-/

namespace A214199.P7504216623066880950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025271 (A028310 n).toNat - A025266 (A028310 n).toNat

end

end A214199.P7504216623066880950

/-! ## A214199.P16071475959710346199

`A214198(n)-A214201(n)`
-/

namespace A214199.P16071475959710346199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n - A214201 n

end

end A214199.P16071475959710346199

/-! ## A214199.P16378388201975920091

`A214198(n)-(A214204(n)+A214202(n))`
-/

namespace A214199.P16378388201975920091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n - (A214204 n + A214202 n)

end

end A214199.P16378388201975920091

/-! ## A214199.P14023412985112771364

`A214198(n)+A057428(n)*A214201(n)`
-/

namespace A214199.P14023412985112771364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214198 n + A057428 n * A214201 n

end

end A214199.P14023412985112771364

/-! ## A214199.P5829137265498681763

`A120588(n)-(A214201(n)+A025266(A028310(n)))`
-/

namespace A214199.P5829137265498681763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - (A214201 n + A025266 (A028310 n).toNat)

end

end A214199.P5829137265498681763

