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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
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

/-!
# A044200: Numbers n such that string 1,5 occurs in the base 8 representation of n but not of n-1.

The programs for A044200, there is no canonical definition to state claims against.
-/

/-! ## A044200.P18315789210196662410

`record[A135997(A044226(n+1))]`
-/

namespace A044200.P18315789210196662410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044200.P18315789210196662410

/-! ## A044200.P13086495868832924303

`A044201(A187829(n+1))-1-A135534(A044226(n+4))`
-/

namespace A044200.P13086495868832924303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044201 (A187829 (n + 1)).toNat - 1 - A135534 (A044226 (n + 4)).toNat

end

end A044200.P13086495868832924303

/-! ## A044200.P3853932100252793955

`A044201(n+1)-A028240(n)!-A135534(A044226(n+4))`
-/

namespace A044200.P3853932100252793955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044201 (n + 1) - (Nat.factorial (A028240 n).toNat : ℤ) - A135534 (A044226 (n + 4)).toNat

end

end A044200.P3853932100252793955

/-! ## A044200.P2720489134977012801

`A044581(n+1)-A044582(n+1)+A044581(A187829(n+1))+1`
-/

namespace A044200.P2720489134977012801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044581 (n + 1) - A044582 (n + 1) + (A044581 (A187829 (n + 1)).toNat + 1)

end

end A044200.P2720489134977012801

/-! ## A044200.P10069510740526059800

`A266678(A026623(n))+A044580(n+1)`
-/

namespace A044200.P10069510740526059800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 (A026623 n).toNat + A044580 (n + 1)

end

end A044200.P10069510740526059800

/-!
# A044201: Numbers n such that string 1,6 occurs in the base 8 representation of n but not of n-1.

The programs for A044201, there is no canonical definition to state claims against.
-/

/-! ## A044201.P7856474501565505082

`and(A044582(n+1)+1, A044582(n+1))`
-/

namespace A044201.P7856474501565505082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044582 (n + 1) + 1) (A044582 (n + 1))

end

end A044201.P7856474501565505082

/-! ## A044201.P11059175300305575481

`A129760(A044582(n+1)+1)`
-/

namespace A044201.P11059175300305575481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044582 (n + 1) + 1).toNat

end

end A044201.P11059175300305575481

/-! ## A044201.P15672386609356175014

`record[A006083(A044229(n+1))+1]`
-/

namespace A044201.P15672386609356175014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A044229 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044201.P15672386609356175014

/-! ## A044201.P3618489567361438237

`record[A135997(A044229(n+1))]`
-/

namespace A044201.P3618489567361438237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044201.P3618489567361438237

/-! ## A044201.P17908874732821049231

`A044581(A187829(n+1))+1`
-/

namespace A044201.P17908874732821049231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044581 (A187829 (n + 1)).toNat + 1

end

end A044201.P17908874732821049231

/-!
# A044202: Numbers k such that string 1,7 occurs in the base 8 representation of k but not of k-1.

The programs for A044202, there is no canonical definition to state claims against.
-/

/-! ## A044202.P16587455117362722501

`A044582(n+1)+A001222(A066195(n))`
-/

namespace A044202.P16587455117362722501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) + A001222 (A066195 n).toNat

end

end A044202.P16587455117362722501

/-! ## A044202.P8792534265385526545

`A044582(n+1)-A316441(A103600(n+1))`
-/

namespace A044202.P8792534265385526545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) - A316441 (A103600 (n + 1)).toNat

end

end A044202.P8792534265385526545

/-! ## A044202.P9633514282992917032

`A336352(A005420(2*(n+1)))+A044582(n+1)+1`
-/

namespace A044202.P9633514282992917032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336352 (A005420 (2 * (n + 1))).toNat + (A044582 (n + 1) + 1)

end

end A044202.P9633514282992917032

/-! ## A044202.P3895683485863226178

`A044582(A187829(n+1))+1`
-/

namespace A044202.P3895683485863226178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (A187829 (n + 1)).toNat + 1

end

end A044202.P3895683485863226178

/-! ## A044202.P8007283273735410407

`A044582(n+1)+A028240(n)!`
-/

namespace A044202.P8007283273735410407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) + (Nat.factorial (A028240 n).toNat : ℤ)

end

end A044202.P8007283273735410407

/-!
# A044203: Numbers k such that string 2,0 occurs in the base 8 representation of k but not of k-1.

The programs for A044203, there is no canonical definition to state claims against.
-/

/-! ## A044203.P7614564048072800498

`and(A044584(n+1)+1, A044584(n+1))`
-/

namespace A044203.P7614564048072800498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044584 (n + 1) + 1) (A044584 (n + 1))

end

end A044203.P7614564048072800498

/-! ## A044203.P2852792316028655679

`and(A044584(n+1), A092486(A044584(n+1)))`
-/

namespace A044203.P2852792316028655679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044584 (n + 1)) (A092486 (A044584 (n + 1)).toNat)

end

end A044203.P2852792316028655679

/-! ## A044203.P15080832159456807091

`A129760(A044584(n+1)+1)`
-/

namespace A044203.P15080832159456807091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044584 (n + 1) + 1).toNat

end

end A044203.P15080832159456807091

/-! ## A044203.P712977032883869942

`A352729(A044584(n+1))`
-/

namespace A044203.P712977032883869942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044584 (n + 1)).toNat

end

end A044203.P712977032883869942

/-! ## A044203.P6927162748513796782

`∩[A043153(n+1), A072834(n)]`
-/

namespace A044203.P6927162748513796782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044203.P6927162748513796782

/-! ## A044203.P7785241250951491681

`record[A135997(A044235(n+1))]`
-/

namespace A044203.P7785241250951491681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044203.P7785241250951491681

/-!
# A044204: Numbers n such that string 2,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044204, there is no canonical definition to state claims against.
-/

/-! ## A044204.P134656325811614487

`record[A135997(A044238(n+1))]`
-/

namespace A044204.P134656325811614487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044238 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044204.P134656325811614487

/-! ## A044204.P6792570158388011505

`A233583(A044584(n+1)+2)`
-/

namespace A044204.P6792570158388011505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044584 (n + 1) + 2).toNat

end

end A044204.P6792570158388011505

/-! ## A044204.P7293099935719283874

`A008616(10*A044584(n+1))`
-/

namespace A044204.P7293099935719283874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (10 * A044584 (n + 1)).toNat

end

end A044204.P7293099935719283874

/-! ## A044204.P17406840432563355455

`A250131(A185315(n))+A044584(n+1)`
-/

namespace A044204.P17406840432563355455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250131 (A185315 n).toNat + A044584 (n + 1)

end

end A044204.P17406840432563355455

/-! ## A044204.P10467864393881440835

`A044584(A097031(2^(n+1)+1)+n)+1`
-/

namespace A044204.P10467864393881440835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044584 (A097031 (2 ^ (n + 1) + 1) + (n : ℤ)).toNat + 1

end

end A044204.P10467864393881440835

/-!
# A044205: Numbers n such that string 2,2 occurs in the base 8 representation of n but not of n-1.

The programs for A044205, there is no canonical definition to state claims against.
-/

/-! ## A044205.P5737054702635764270

`and(A044586(n+1)+1, A044586(n+1))`
-/

namespace A044205.P5737054702635764270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044586 (n + 1) + 1) (A044586 (n + 1))

end

end A044205.P5737054702635764270

/-! ## A044205.P11237533194790027333

`A129760(A044586(n+1)+1)`
-/

namespace A044205.P11237533194790027333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044586 (n + 1) + 1).toNat

end

end A044205.P11237533194790027333

/-! ## A044205.P4329140657938399036

`A044586(n+1)+1-A006519(A044586(n+1)+1)`
-/

namespace A044205.P4329140657938399036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044586 (n + 1) + 1 - A006519 (A044586 (n + 1) + 1).toNat

end

end A044205.P4329140657938399036

/-! ## A044205.P62604998290560223

`record[A135997(A044241(n+1))]`
-/

namespace A044205.P62604998290560223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044205.P62604998290560223

/-! ## A044205.P16663335832050357492

`A135997(A044241(3*n+1))`
-/

namespace A044205.P16663335832050357492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044241 (3 * n + 1)).toNat

end

end A044205.P16663335832050357492

/-!
# A044206: Numbers n such that string 2,3 occurs in the base 8 representation of n but not of n-1.

The programs for A044206, there is no canonical definition to state claims against.
-/

/-! ## A044206.P16099459481037905525

`A243109(A044587(n+1)+2)`
-/

namespace A044206.P16099459481037905525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044587 (n + 1) + 2).toNat

end

end A044206.P16099459481037905525

/-! ## A044206.P1562170493301260885

`record[A028903(A044355(n+1))]`
-/

namespace A044206.P1562170493301260885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A044355 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044206.P1562170493301260885

/-! ## A044206.P358308451364712805

`and(A044210(n+1), A233583(A044207(n+1)))`
-/

namespace A044206.P358308451364712805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044210 (n + 1)) (A233583 (A044207 (n + 1)).toNat)

end

end A044206.P358308451364712805

/-! ## A044206.P17884590327450612205

`A028903(A044355(n+1))+A000038(A127384(n))`
-/

namespace A044206.P17884590327450612205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A044355 (n + 1)).toNat + A000038 (A127384 n).toNat

end

end A044206.P17884590327450612205

/-!
# A044207: Numbers n such that string 2,4 occurs in the base 8 representation of n but not of n-1.

The programs for A044207, there is no canonical definition to state claims against.
-/

/-! ## A044207.P2654452926063456426

`and(A044588(n+1)+1, A044588(n+1))`
-/

namespace A044207.P2654452926063456426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044588 (n + 1) + 1) (A044588 (n + 1))

end

end A044207.P2654452926063456426

/-! ## A044207.P10364081542306822340

`A044588(n+1)-A135481(A044588(n+1))`
-/

namespace A044207.P10364081542306822340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044588 (n + 1) - A135481 (A044588 (n + 1)).toNat

end

end A044207.P10364081542306822340

/-! ## A044207.P10019280909916058170

`A129760(A044588(n+1)+1)`
-/

namespace A044207.P10019280909916058170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044588 (n + 1) + 1).toNat

end

end A044207.P10019280909916058170

/-! ## A044207.P12691300695648398473

`A000007(n+3)+A243109(A044588(n+1))+2`
-/

namespace A044207.P12691300695648398473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3) + (A243109 (A044588 (n + 1)).toNat + 2)

end

end A044207.P12691300695648398473

/-! ## A044207.P1287601650162123358

`A005369(2*n+3)+A243109(A044588(n+1))+2`
-/

namespace A044207.P1287601650162123358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n + 3) + (A243109 (A044588 (n + 1)).toNat + 2)

end

end A044207.P1287601650162123358

/-! ## A044207.P6825245084141071699

`A352729(A044588(n+1))`
-/

namespace A044207.P6825245084141071699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044588 (n + 1)).toNat

end

end A044207.P6825245084141071699

/-!
# A044208: Numbers k such that string 2,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044208, there is no canonical definition to state claims against.
-/

/-! ## A044208.P9791244177576677107

`A044588(∑[∑[A111332(n)]])+1`
-/

namespace A044208.P9791244177576677107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A044208.P9791244177576677107

/-! ## A044208.P15940042020855088534

`A044588(n+1)+A111332(n)!`
-/

namespace A044208.P15940042020855088534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044588 (n + 1) + (Nat.factorial (A111332 n).toNat : ℤ)

end

end A044208.P15940042020855088534

/-! ## A044208.P15671179369492649627

`A135481(A118190(n))+A044588(n+1)`
-/

namespace A044208.P15671179369492649627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A118190 n).toNat + A044588 (n + 1)

end

end A044208.P15671179369492649627

/-! ## A044208.P552708561017319565

`A044588(n+1)+A000108(A111332(n)²)`
-/

namespace A044208.P552708561017319565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044588 (n + 1) + A000108 (A111332 n ^ 2).toNat

end

end A044208.P552708561017319565

/-! ## A044208.P10811878551349821660

`A044588(n+1)+A000035(A000978(n+2))`
-/

namespace A044208.P10811878551349821660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044588 (n + 1) + A000035 (A000978 (n + 2)).toNat

end

end A044208.P10811878551349821660

/-!
# A044209: Numbers n such that string 2,6 occurs in the base 8 representation of n but not of n-1.

The programs for A044209, there is no canonical definition to state claims against.
-/

/-! ## A044209.P16528208247585369996

`and(A044590(n+1)+1, A044590(n+1))`
-/

namespace A044209.P16528208247585369996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044590 (n + 1) + 1) (A044590 (n + 1))

end

end A044209.P16528208247585369996

/-! ## A044209.P16364162687701971962

`A129760(A044590(n+1)+1)`
-/

namespace A044209.P16364162687701971962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044590 (n + 1) + 1).toNat

end

end A044209.P16364162687701971962

/-! ## A044209.P9450308016515682966

`A164020(A044589(n+1))`
-/

namespace A044209.P9450308016515682966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044589 (n + 1)).toNat

end

end A044209.P9450308016515682966

/-! ## A044209.P3140732150047964543

`A173441(A081091(n+1))+A044589(n+1)`
-/

namespace A044209.P3140732150047964543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173441 (A081091 (n + 1)).toNat + A044589 (n + 1)

end

end A044209.P3140732150047964543

/-! ## A044209.P3150634175164386593

`A173441(A102933(n+1))+A044589(n+1)`
-/

namespace A044209.P3150634175164386593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173441 (A102933 (n + 1)).toNat + A044589 (n + 1)

end

end A044209.P3150634175164386593

/-!
# A044210: Numbers k such that string 2,7 occurs in the base 8 representation of k but not of k-1.

The programs for A044210, there is no canonical definition to state claims against.
-/

/-! ## A044210.P13974565416402343309

`A044590(n+1)+A000035(A037165(n+1))`
-/

namespace A044210.P13974565416402343309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044590 (n + 1) + A000035 (A037165 (n + 1)).toNat

end

end A044210.P13974565416402343309

/-! ## A044210.P8222379821760809534

`A044590(n+1)+A000035(A046020(n+1))`
-/

namespace A044210.P8222379821760809534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044590 (n + 1) + A000035 (A046020 (n + 1)).toNat

end

end A044210.P8222379821760809534

/-! ## A044210.P4120846857592711422

`A054977(A001248(n+1))+A044590(n+1)`
-/

namespace A044210.P4120846857592711422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A001248 (n + 1)).toNat + A044590 (n + 1)

end

end A044210.P4120846857592711422

/-! ## A044210.P18152506832489215540

`A054977(A092269(n+1))+A044590(n+1)`
-/

namespace A044210.P18152506832489215540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A092269 (n + 1)).toNat + A044590 (n + 1)

end

end A044210.P18152506832489215540

/-! ## A044210.P5718445188603407236

`A044590(n+1)+A000035(A306190(n+1))`
-/

namespace A044210.P5718445188603407236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044590 (n + 1) + A000035 (A306190 (n + 1)).toNat

end

end A044210.P5718445188603407236

/-!
# A044211: Numbers n such that string 3,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044211, there is no canonical definition to state claims against.
-/

/-! ## A044211.P2487050135914974872

`and(A044592(n+1)+1, A044592(n+1))`
-/

namespace A044211.P2487050135914974872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044592 (n + 1) + 1) (A044592 (n + 1))

end

end A044211.P2487050135914974872

/-! ## A044211.P16491400793205280185

`A322018(or(1, A044592(n+1)))`
-/

namespace A044211.P16491400793205280185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (Int.lor 1 (A044592 (n + 1))).toNat

end

end A044211.P16491400793205280185

/-! ## A044211.P5467244520272503450

`A129760(A044592(n+1)+1)`
-/

namespace A044211.P5467244520272503450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044592 (n + 1) + 1).toNat

end

end A044211.P5467244520272503450

/-! ## A044211.P14712007431671293689

`A352729(A044592(n+1))`
-/

namespace A044211.P14712007431671293689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044592 (n + 1)).toNat

end

end A044211.P14712007431671293689

/-! ## A044211.P8955869397834647600

`∩[A043154(n+1), A334936(n+1)]`
-/

namespace A044211.P8955869397834647600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044211.P8955869397834647600

/-!
# A044212: Numbers n such that string 3,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044212, there is no canonical definition to state claims against.
-/

/-! ## A044212.P5541339862602225517

`A243109(A044213(n+1)%A248075(n+1))`
-/

namespace A044212.P5541339862602225517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (Int.tmod (A044213 (n + 1)) (A248075 (n + 1))).toNat

end

end A044212.P5541339862602225517

/-! ## A044212.P9014059049602563227

`A044592(n+1)+A097479(n)!`
-/

namespace A044212.P9014059049602563227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044592 (n + 1) + (Nat.factorial (A097479 n).toNat : ℤ)

end

end A044212.P9014059049602563227

/-! ## A044212.P3168745513954252047

`A044592(n+1)+A000035(A094024(n))`
-/

namespace A044212.P3168745513954252047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044592 (n + 1) + A000035 (A094024 n).toNat

end

end A044212.P3168745513954252047

/-! ## A044212.P17458833843790821101

`A044592(n+1)+A040854(A244019(n+3))`
-/

namespace A044212.P17458833843790821101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044592 (n + 1) + A040854 (A244019 (n + 3)).toNat

end

end A044212.P17458833843790821101

/-! ## A044212.P6829819245226583326

`A110699(A044592(n+1))`
-/

namespace A044212.P6829819245226583326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044592 (n + 1)).toNat

end

end A044212.P6829819245226583326

/-!
# A044213: Numbers n such that string 3,2 occurs in the base 8 representation of n but not of n-1.

The programs for A044213, there is no canonical definition to state claims against.
-/

/-! ## A044213.P1169013459848281400

`and(A044594(n+1)+1, A044594(n+1))`
-/

namespace A044213.P1169013459848281400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044594 (n + 1) + 1) (A044594 (n + 1))

end

end A044213.P1169013459848281400

/-! ## A044213.P9678334947659130994

`A129760(A044594(n+1)+1)`
-/

namespace A044213.P9678334947659130994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044594 (n + 1) + 1).toNat

end

end A044213.P9678334947659130994

/-! ## A044213.P6368718819640243999

`A304118(3*n+5)+A044593(n+1)`
-/

namespace A044213.P6368718819640243999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (3 * n + 5) + A044593 (n + 1)

end

end A044213.P6368718819640243999

/-! ## A044213.P9496150665642459493

`A057427(A217437(n+1))+A044593(n+1)`
-/

namespace A044213.P9496150665642459493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A217437 (n + 1)).toNat + A044593 (n + 1)

end

end A044213.P9496150665642459493

/-! ## A044213.P299257969972186605

`A057427(A238586(n+2))+A044593(n+1)`
-/

namespace A044213.P299257969972186605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A238586 (n + 2)).toNat + A044593 (n + 1)

end

end A044213.P299257969972186605

/-!
# A044214: Numbers k such that string 3,3 occurs in the base 8 representation of k but not of k-1.

The programs for A044214, there is no canonical definition to state claims against.
-/

/-! ## A044214.P12076281049047752468

`A222947(A250120(3*n+1))+A046099(n+1)`
-/

namespace A044214.P12076281049047752468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222947 (A250120 (3 * n + 1)).toNat + A046099 (n + 1)

end

end A044214.P12076281049047752468

/-! ## A044214.P11159165466248350036

`A043953(2*n+1)-A001222(A237398(n+2))`
-/

namespace A044214.P11159165466248350036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043953 (2 * n + 1) - A001222 (A237398 (n + 2)).toNat

end

end A044214.P11159165466248350036

/-!
# A044215: Numbers k such that string 3,4 occurs in the base 8 representation of k but not of k-1.

The programs for A044215, there is no canonical definition to state claims against.
-/

/-! ## A044215.P874131541418545753

`and(A044596(n+1)+1, A044596(n+1))`
-/

namespace A044215.P874131541418545753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044596 (n + 1) + 1) (A044596 (n + 1))

end

end A044215.P874131541418545753

/-! ## A044215.P18168880543593979672

`A044596(n+1)-A135481(A044596(n+1))`
-/

namespace A044215.P18168880543593979672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044596 (n + 1) - A135481 (A044596 (n + 1)).toNat

end

end A044215.P18168880543593979672

/-! ## A044215.P17371020942791071318

`A129760(A044596(n+1)+1)`
-/

namespace A044215.P17371020942791071318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044596 (n + 1) + 1).toNat

end

end A044215.P17371020942791071318

/-! ## A044215.P3569442948305608486

`A352729(A044596(n+1))`
-/

namespace A044215.P3569442948305608486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044596 (n + 1)).toNat

end

end A044215.P3569442948305608486

/-! ## A044215.P16294827149301919159

`A044217(n+1)-A050968(3*(n+1))%4-A140670(A044217(n+1))`
-/

namespace A044215.P16294827149301919159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044217 (n + 1) - Int.tmod (A050968 (3 * (n + 1))) 4 - A140670 (A044217 (n + 1)).toNat

end

end A044215.P16294827149301919159

/-!
# A044216: Numbers n such that string 3,5 occurs in the base 8 representation of n but not of n-1.

The programs for A044216, there is no canonical definition to state claims against.
-/

/-! ## A044216.P9557339079185420424

`A243109(A044597(n+1)+1)`
-/

namespace A044216.P9557339079185420424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044597 (n + 1) + 1).toNat

end

end A044216.P9557339079185420424

/-! ## A044216.P13850641020427145178

`A044596(n+1)+A000035(A061722(n))`
-/

namespace A044216.P13850641020427145178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044596 (n + 1) + A000035 (A061722 n).toNat

end

end A044216.P13850641020427145178

/-! ## A044216.P17759794059151604986

`A044596(n+1)+A001222(A273756(n))`
-/

namespace A044216.P17759794059151604986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044596 (n + 1) + A001222 (A273756 n).toNat

end

end A044216.P17759794059151604986

/-! ## A044216.P11135321977965402310

`A044596(n+1)+A000035(A046018(n+1))`
-/

namespace A044216.P11135321977965402310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044596 (n + 1) + A000035 (A046018 (n + 1)).toNat

end

end A044216.P11135321977965402310

/-! ## A044216.P15894196600879664540

`A044596(n+1)+A010170(A333872(3*n+1))`
-/

namespace A044216.P15894196600879664540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044596 (n + 1) + A010170 (A333872 (3 * n + 1)).toNat

end

end A044216.P15894196600879664540

/-!
# A044217: Numbers n such that string 3,6 occurs in the base 8 representation of n but not of n-1.

The programs for A044217, there is no canonical definition to state claims against.
-/

/-! ## A044217.P3823524579124384802

`and(A044598(n+1)+1, A044598(n+1))`
-/

namespace A044217.P3823524579124384802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044598 (n + 1) + 1) (A044598 (n + 1))

end

end A044217.P3823524579124384802

/-! ## A044217.P6261001589068613734

`A044598(n+1)-A135481(A044598(n+1))`
-/

namespace A044217.P6261001589068613734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044598 (n + 1) - A135481 (A044598 (n + 1)).toNat

end

end A044217.P6261001589068613734

/-! ## A044217.P9553092883110724515

`A129760(A044598(n+1)+1)`
-/

namespace A044217.P9553092883110724515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044598 (n + 1) + 1).toNat

end

end A044217.P9553092883110724515

/-! ## A044217.P10614927665821858307

`A054977(A000041(n))+A044597(n+1)`
-/

namespace A044217.P10614927665821858307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000041 n).toNat + A044597 (n + 1)

end

end A044217.P10614927665821858307

/-! ## A044217.P13660541029498986056

`A044597(n+1)+A000035(A103729(n))`
-/

namespace A044217.P13660541029498986056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044597 (n + 1) + A000035 (A103729 n).toNat

end

end A044217.P13660541029498986056

/-!
# A044218: Numbers k such that string 3,7 occurs in the base 8 representation of k but not of k-1.

The programs for A044218, there is no canonical definition to state claims against.
-/

/-! ## A044218.P5334982338708653978

`(A044598(n+1)+1)%A096517(n+1)`
-/

namespace A044218.P5334982338708653978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044598 (n + 1) + 1) (A096517 (n + 1))

end

end A044218.P5334982338708653978

/-! ## A044218.P15038948915190804611

`A327939(A300951(n))+A044598(n+1)`
-/

namespace A044218.P15038948915190804611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A300951 n).toNat + A044598 (n + 1)

end

end A044218.P15038948915190804611

/-! ## A044218.P5177921744206151298

`A044598(n+1)+A001221(A050968(n+1))`
-/

namespace A044218.P5177921744206151298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044598 (n + 1) + A001221 (A050968 (n + 1)).toNat

end

end A044218.P5177921744206151298

/-! ## A044218.P17239167497236882378

`A044598(n+1)+A001065(A145049(n+1))`
-/

namespace A044218.P17239167497236882378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044598 (n + 1) + A001065 (A145049 (n + 1)).toNat

end

end A044218.P17239167497236882378

/-! ## A044218.P16230800145016271044

`A057979(A298299(n+1))+A044598(n+1)`
-/

namespace A044218.P16230800145016271044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A298299 (n + 1)).toNat + A044598 (n + 1)

end

end A044218.P16230800145016271044

/-!
# A044219: Numbers n such that string 4,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044219, there is no canonical definition to state claims against.
-/

/-! ## A044219.P15059934992430064215

`and(A044600(n+1)+1, A044600(n+1))`
-/

namespace A044219.P15059934992430064215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044600 (n + 1) + 1) (A044600 (n + 1))

end

end A044219.P15059934992430064215

/-! ## A044219.P3635473112138572808

`A129760(A044600(n+1)+1)`
-/

namespace A044219.P3635473112138572808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044600 (n + 1) + 1).toNat

end

end A044219.P3635473112138572808

/-! ## A044219.P17428123786485261789

`A352729(A044600(n+1))`
-/

namespace A044219.P17428123786485261789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044600 (n + 1)).toNat

end

end A044219.P17428123786485261789

/-! ## A044219.P16360253551648523394

`∩[A043155(n+1), A072834(n)]`
-/

namespace A044219.P16360253551648523394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044219.P16360253551648523394

/-! ## A044219.P12945853693121783875

`A143025(A081585(n))*A213258(n+1)`
-/

namespace A044219.P12945853693121783875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 (A081585 n).toNat * A213258 (n + 1)

end

end A044219.P12945853693121783875

/-!
# A044220: Numbers k such that string 4,1 occurs in the base 8 representation of k but not of k-1.

The programs for A044220, there is no canonical definition to state claims against.
-/

/-! ## A044220.P12897814108761078080

`A339597(floor(A044601(n+1)/2))`
-/

namespace A044220.P12897814108761078080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 ⌊(A044601 (n + 1) : ℚ) / 2⌋.toNat

end

end A044220.P12897814108761078080

/-! ## A044220.P10419267566396741609

`A339597((A044601(n+1)-1)/2)`
-/

namespace A044220.P10419267566396741609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 (SequenceMachineLib.roundAway ((A044601 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A044220.P10419267566396741609

/-! ## A044220.P12690869267528760638

`A339597(A044601(n+1))/2`
-/

namespace A044220.P12690869267528760638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339597 (A044601 (n + 1)).toNat : ℚ) / 2

end

end A044220.P12690869267528760638

/-! ## A044220.P5983617517061876805

`2^A321800(A348674(n))*A339597(A044601(n+1))`
-/

namespace A044220.P5983617517061876805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321800 (A348674 n).toNat : ℤ) * (A339597 (A044601 (n + 1)).toNat : ℚ)

end

end A044220.P5983617517061876805

/-! ## A044220.P1460596470805176143

`(A044600(n+1)+1)*A001065(A085104(n+1))`
-/

namespace A044220.P1460596470805176143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044600 (n + 1) + 1) * A001065 (A085104 (n + 1)).toNat

end

end A044220.P1460596470805176143

/-!
# A044221: Numbers n such that string 4,2 occurs in the base 8 representation of n but not of n-1.

The programs for A044221, there is no canonical definition to state claims against.
-/

/-! ## A044221.P341780057599575907

`and(A044602(n+1)+1, A044602(n+1))`
-/

namespace A044221.P341780057599575907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044602 (n + 1) + 1) (A044602 (n + 1))

end

end A044221.P341780057599575907

/-! ## A044221.P14272140656375871368

`and(A044602(n+1), A322015(A044602(n+1)))`
-/

namespace A044221.P14272140656375871368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044602 (n + 1)) (A322015 (A044602 (n + 1)).toNat)

end

end A044221.P14272140656375871368

/-! ## A044221.P5076995897457498195

`A129760(A044602(n+1)+1)`
-/

namespace A044221.P5076995897457498195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044602 (n + 1) + 1).toNat

end

end A044221.P5076995897457498195

/-! ## A044221.P14344401910491785797

`A044602(n+1)+1-A006519(A044602(n+1)+1)`
-/

namespace A044221.P14344401910491785797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044602 (n + 1) + 1 - A006519 (A044602 (n + 1) + 1).toNat

end

end A044221.P14344401910491785797

/-! ## A044221.P5839578494628597009

`A250131(A250131(2*n+5))+A044601(n+1)`
-/

namespace A044221.P5839578494628597009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250131 (A250131 (2 * n + 5)).toNat + A044601 (n + 1)

end

end A044221.P5839578494628597009

/-!
# A044222: Numbers n such that string 4,3 occurs in the base 8 representation of n but not of n-1.

The programs for A044222, there is no canonical definition to state claims against.
-/

/-! ## A044222.P6662198581175343908

`(A044602(n+1)+1)%A346024(n+1)`
-/

namespace A044222.P6662198581175343908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044602 (n + 1) + 1) (A346024 (n + 1))

end

end A044222.P6662198581175343908

/-! ## A044222.P5991472070853587913

`A044602(n+1)+A007318(A185284(n))`
-/

namespace A044222.P5991472070853587913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044602 (n + 1) + A007318 (A185284 n).toNat

end

end A044222.P5991472070853587913

/-! ## A044222.P1855780593370245263

`A044602(n+1)+A001222(A140708(n+1))`
-/

namespace A044222.P1855780593370245263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044602 (n + 1) + A001222 (A140708 (n + 1)).toNat

end

end A044222.P1855780593370245263

/-! ## A044222.P859034387592002037

`A044602(n+1)+A001221(A346024(n+1))`
-/

namespace A044222.P859034387592002037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044602 (n + 1) + A001221 (A346024 (n + 1)).toNat

end

end A044222.P859034387592002037

/-! ## A044222.P18101417268995342689

`A304465(A098412(2*n+1))+A044602(n+1)`
-/

namespace A044222.P18101417268995342689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A098412 (2 * n + 1)).toNat + A044602 (n + 1)

end

end A044222.P18101417268995342689

/-!
# A044223: Numbers n such that string 4,4 occurs in the base 8 representation of n but not of n-1.

The programs for A044223, there is no canonical definition to state claims against.
-/

/-! ## A044223.P9375776534305275810

`and(A044604(n+1)+1, A044604(n+1))`
-/

namespace A044223.P9375776534305275810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044604 (n + 1) + 1) (A044604 (n + 1))

end

end A044223.P9375776534305275810

/-! ## A044223.P4124582023027512953

`and(A044604(n+1), A092486(A044604(n+1)))`
-/

namespace A044223.P4124582023027512953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044604 (n + 1)) (A092486 (A044604 (n + 1)).toNat)

end

end A044223.P4124582023027512953

/-! ## A044223.P11515097436266556631

`A129760(A044604(n+1)+1)`
-/

namespace A044223.P11515097436266556631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044604 (n + 1) + 1).toNat

end

end A044223.P11515097436266556631

/-! ## A044223.P11539197794355731676

`A044604(n+1)+1-A006519(A044604(n+1)+1)`
-/

namespace A044223.P11539197794355731676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044604 (n + 1) + 1 - A006519 (A044604 (n + 1) + 1).toNat

end

end A044223.P11539197794355731676

/-! ## A044223.P15966703275573301188

`A352729(A044604(n+1))`
-/

namespace A044223.P15966703275573301188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044604 (n + 1)).toNat

end

end A044223.P15966703275573301188

/-!
# A044224: Numbers k such that string 4,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044224, there is no canonical definition to state claims against.
-/

/-! ## A044224.P9163469648985755894

`A241816(A044605(n+1)+1)`
-/

namespace A044224.P9163469648985755894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044605 (n + 1) + 1).toNat

end

end A044224.P9163469648985755894

/-! ## A044224.P8719499200515899393

`A241816(A044225(n+1))%A018188(A132255(n+1))`
-/

namespace A044224.P8719499200515899393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241816 (A044225 (n + 1)).toNat) (A018188 (A132255 (n + 1)).toNat)

end

end A044224.P8719499200515899393

/-! ## A044224.P18260781952934456811

`A001222(A018188(n+1))*A241816(A044225(n+1))`
-/

namespace A044224.P18260781952934456811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018188 (n + 1)).toNat * A241816 (A044225 (n + 1)).toNat

end

end A044224.P18260781952934456811

/-! ## A044224.P8099011147263526679

`A001222(A036953(n+1))*A241816(A044225(n+1))`
-/

namespace A044224.P8099011147263526679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036953 (n + 1)).toNat * A241816 (A044225 (n + 1)).toNat

end

end A044224.P8099011147263526679

/-!
# A044225: Numbers k such that string 4,6 occurs in the base 8 representation of k but not of k-1.

The programs for A044225, there is no canonical definition to state claims against.
-/

/-! ## A044225.P5920680251965567838

`and(A044606(n+1)+1, A044606(n+1))`
-/

namespace A044225.P5920680251965567838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044606 (n + 1) + 1) (A044606 (n + 1))

end

end A044225.P5920680251965567838

/-! ## A044225.P1721541574716245420

`A044606(n+1)-A135481(A044606(n+1))`
-/

namespace A044225.P1721541574716245420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044606 (n + 1) - A135481 (A044606 (n + 1)).toNat

end

end A044225.P1721541574716245420

/-! ## A044225.P14772923440018646366

`A241816(A044606(n+1))+1`
-/

namespace A044225.P14772923440018646366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044606 (n + 1)).toNat + 1

end

end A044225.P14772923440018646366

/-! ## A044225.P665657724367354689

`A044605(n+1)+A001222(A125876(n+1))`
-/

namespace A044225.P665657724367354689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044605 (n + 1) + A001222 (A125876 (n + 1)).toNat

end

end A044225.P665657724367354689

/-! ## A044225.P5163230815449219468

`A164020(A044605(n+1))`
-/

namespace A044225.P5163230815449219468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044605 (n + 1)).toNat

end

end A044225.P5163230815449219468

/-!
# A044226: Numbers k such that string 4,7 occurs in the base 8 representation of k but not of k-1.

The programs for A044226, there is no canonical definition to state claims against.
-/

/-! ## A044226.P14886027752496740983

`A059169(4*A044227(n+1))-A135534(A044228(n+1))`
-/

namespace A044226.P14886027752496740983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A044227 (n + 1)).toNat - A135534 (A044228 (n + 1)).toNat

end

end A044226.P14886027752496740983

/-! ## A044226.P1561592352288630738

`A059169(4*A044227(n+1))+A044231(n+1)-A044612(n+1)`
-/

namespace A044226.P1561592352288630738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A044227 (n + 1)).toNat + (A044231 (n + 1) - A044612 (n + 1))

end

end A044226.P1561592352288630738

/-! ## A044226.P5055039993150773821

`A044606(n+1)+A151622(n)!`
-/

namespace A044226.P5055039993150773821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044606 (n + 1) + (Nat.factorial (A151622 n).toNat : ℤ)

end

end A044226.P5055039993150773821

/-! ## A044226.P14983054612428339120

`A044606(n+1)+A000038(A062344(n))!`
-/

namespace A044226.P14983054612428339120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044606 (n + 1) + (Nat.factorial (A000038 (A062344 n).toNat).toNat : ℤ)

end

end A044226.P14983054612428339120

/-! ## A044226.P16191504049283237655

`A153727(A185292(3*(n+1)))+A044606(n+1)`
-/

namespace A044226.P16191504049283237655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (A185292 (3 * (n + 1))).toNat + A044606 (n + 1)

end

end A044226.P16191504049283237655

/-!
# A044227: Numbers n such that string 5,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044227, there is no canonical definition to state claims against.
-/

/-! ## A044227.P7886809847372393918

`and(A044608(n+1)+1, A044608(n+1))`
-/

namespace A044227.P7886809847372393918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044608 (n + 1) + 1) (A044608 (n + 1))

end

end A044227.P7886809847372393918

/-! ## A044227.P4225319638053399493

`and(A011760(A044608(n+1)), A044608(n+1))`
-/

namespace A044227.P4225319638053399493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011760 (A044608 (n + 1)).toNat) (A044608 (n + 1))

end

end A044227.P4225319638053399493

/-! ## A044227.P13035886712219132950

`A352729(A044608(n+1))`
-/

namespace A044227.P13035886712219132950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044608 (n + 1)).toNat

end

end A044227.P13035886712219132950

/-! ## A044227.P10999995744799126511

`A164020(A044607(n+1))`
-/

namespace A044227.P10999995744799126511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044607 (n + 1)).toNat

end

end A044227.P10999995744799126511

/-! ## A044227.P9989882455953104011

`filter[A043156(n+1), A164056(#)]`
-/

namespace A044227.P9989882455953104011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164056 (f1 j).toNat = 1) n)

end

end A044227.P9989882455953104011

/-!
# A044228: Numbers n such that string 5,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044228, there is no canonical definition to state claims against.
-/

/-! ## A044228.P8313377887361367645

`A241816(A044609(n+1)+1)`
-/

namespace A044228.P8313377887361367645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044609 (n + 1) + 1).toNat

end

end A044228.P8313377887361367645

/-! ## A044228.P3528811362671787116

`A044608(n+1)+A007318(A010894(n))`
-/

namespace A044228.P3528811362671787116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044608 (n + 1) + A007318 (A010894 (n + 21)).toNat

end

end A044228.P3528811362671787116

/-! ## A044228.P7657019855637658831

`A044608(n+1)+A001221(A100669(n))`
-/

namespace A044228.P7657019855637658831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044608 (n + 1) + A001221 (A100669 n).toNat

end

end A044228.P7657019855637658831

/-! ## A044228.P14631614292841807952

`A044608(n+1)+A001221(A046014(n+1))`
-/

namespace A044228.P14631614292841807952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044608 (n + 1) + A001221 (A046014 (n + 1)).toNat

end

end A044228.P14631614292841807952

/-! ## A044228.P16130969150249733640

`A044608(n+1)+A001222(A104852(n+1))`
-/

namespace A044228.P16130969150249733640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044608 (n + 1) + A001222 (A104852 (n + 1)).toNat

end

end A044228.P16130969150249733640

/-!
# A044229: Numbers k such that string 5,2 occurs in the base 8 representation of k but not of k-1.

The programs for A044229, there is no canonical definition to state claims against.
-/

/-! ## A044229.P1171520765263200071

`and(A044610(n+1)+1, A044610(n+1))`
-/

namespace A044229.P1171520765263200071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044610 (n + 1) + 1) (A044610 (n + 1))

end

end A044229.P1171520765263200071

/-! ## A044229.P14545661243841237977

`A044610(n+1)-A135481(A044610(n+1))`
-/

namespace A044229.P14545661243841237977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044610 (n + 1) - A135481 (A044610 (n + 1)).toNat

end

end A044229.P14545661243841237977

/-! ## A044229.P3764540986674862916

`A044609(n+1)+A001222(A086523(n+2))`
-/

namespace A044229.P3764540986674862916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044609 (n + 1) + A001222 (A086523 (n + 2)).toNat

end

end A044229.P3764540986674862916

/-! ## A044229.P13550326066507505135

`A044609(n+1)+A003989(A000217(3*n+4))`
-/

namespace A044229.P13550326066507505135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044609 (n + 1) + A003989 (A000217 (3 * n + 4)).toNat

end

end A044229.P13550326066507505135

/-!
# A044230: Numbers n such that string 5,3 occurs in the base 8 representation of n but not of n-1.

The programs for A044230, there is no canonical definition to state claims against.
-/

/-! ## A044230.P8302217335904602583

`A054977(A091351(n))+A044610(n+1)`
-/

namespace A044230.P8302217335904602583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A091351 n).toNat + A044610 (n + 1)

end

end A044230.P8302217335904602583

/-! ## A044230.P17277781628923202763

`A054977(A276076(n))+A044610(n+1)`
-/

namespace A044230.P17277781628923202763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A276076 n).toNat + A044610 (n + 1)

end

end A044230.P17277781628923202763

/-! ## A044230.P4712092153760734229

`A044610(n+1)+A001222(A086523(n+1))`
-/

namespace A044230.P4712092153760734229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044610 (n + 1) + A001222 (A086523 (n + 1)).toNat

end

end A044230.P4712092153760734229

/-! ## A044230.P12041933329193990028

`A044610(n+1)-A057428(A000217(3*n+1))`
-/

namespace A044230.P12041933329193990028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044610 (n + 1) - A057428 (A000217 (3 * n + 1)).toNat

end

end A044230.P12041933329193990028

/-! ## A044230.P5481222253067095165

`A057168(A044229(n+1)-1)-A057428(A091351(n))`
-/

namespace A044230.P5481222253067095165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (A044229 (n + 1) - 1).toNat - A057428 (A091351 n).toNat

end

end A044230.P5481222253067095165

/-!
# A044231: Numbers n such that string 5,4 occurs in the base 8 representation of n but not of n-1.

The programs for A044231, there is no canonical definition to state claims against.
-/

/-! ## A044231.P10459433846923205940

`and(A044612(n+1)+1, A044612(n+1))`
-/

namespace A044231.P10459433846923205940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044612 (n + 1) + 1) (A044612 (n + 1))

end

end A044231.P10459433846923205940

/-! ## A044231.P7738451522565360033

`A044612(n+1)-A135481(A044612(n+1))`
-/

namespace A044231.P7738451522565360033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044612 (n + 1) - A135481 (A044612 (n + 1)).toNat

end

end A044231.P7738451522565360033

/-! ## A044231.P13512450526933145009

`A129760(A044612(n+1)+1)`
-/

namespace A044231.P13512450526933145009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044612 (n + 1) + 1).toNat

end

end A044231.P13512450526933145009

/-! ## A044231.P11757604887793691416

`A352729(A044612(n+1))`
-/

namespace A044231.P11757604887793691416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044612 (n + 1)).toNat

end

end A044231.P11757604887793691416

/-! ## A044231.P16898855377065496745

`A044611(n+1)+A001222(A178942(n+1))`
-/

namespace A044231.P16898855377065496745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044611 (n + 1) + A001222 (A178942 (n + 1)).toNat

end

end A044231.P16898855377065496745

/-!
# A044232: Numbers k such that string 5,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044232, there is no canonical definition to state claims against.
-/

/-! ## A044232.P16125781286398943532

`A005408(A044613(n+1))-A057168(A044613(n+1))`
-/

namespace A044232.P16125781286398943532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A044613 (n + 1)).toNat - A057168 (A044613 (n + 1)).toNat

end

end A044232.P16125781286398943532

/-! ## A044232.P3891761261141052110

`A044612(comp[A108733(3*n+1)]+1)+1`
-/

namespace A044232.P3891761261141052110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108733 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A044232.P3891761261141052110

/-! ## A044232.P10783284160036377227

`A044612(comp[∑[8-A308387(n+1)]]+1)+1`
-/

namespace A044232.P10783284160036377227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A308387 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A044232.P10783284160036377227

/-! ## A044232.P16719495477965415592

`A044612(comp[∑[8-A318038(n+2)]]+1)+1`
-/

namespace A044232.P16719495477965415592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - A318038 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044612 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A044232.P16719495477965415592

/-!
# A044233: Numbers n such that string 5,6 occurs in the base 8 representation of n but not of n-1.

The programs for A044233, there is no canonical definition to state claims against.
-/

/-! ## A044233.P4160423043851290083

`and(A044614(n+1)+1, A044614(n+1))`
-/

namespace A044233.P4160423043851290083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044614 (n + 1) + 1) (A044614 (n + 1))

end

end A044233.P4160423043851290083

/-! ## A044233.P402155405143018381

`A044614(n+1)-A135481(A044614(n+1))`
-/

namespace A044233.P402155405143018381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) - A135481 (A044614 (n + 1)).toNat

end

end A044233.P402155405143018381

/-! ## A044233.P11492556173487077386

`A129760(A044614(n+1)+1)`
-/

namespace A044233.P11492556173487077386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044614 (n + 1) + 1).toNat

end

end A044233.P11492556173487077386

/-! ## A044233.P9660004838169194555

`A241816(A044614(n+1))+A033999(n)²`
-/

namespace A044233.P9660004838169194555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A033999 n ^ 2

end

end A044233.P9660004838169194555

/-! ## A044233.P4676081243247060870

`A241816(A044614(n+1))+char[A001281(n)]`
-/

namespace A044233.P4676081243247060870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A044233.P4676081243247060870

/-! ## A044233.P7690750938989533630

`A241816(A044614(n+1))+char[A004493(n)]`
-/

namespace A044233.P7690750938989533630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004493 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A044233.P7690750938989533630

/-! ## A044233.P13446903616218738618

`A241816(A044614(n+1))+char[A029578(n)]`
-/

namespace A044233.P13446903616218738618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A044233.P13446903616218738618

/-! ## A044233.P69062539075038557

`A241816(A044614(n+1))+A000034(2*n)`
-/

namespace A044233.P69062539075038557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A000034 (2 * n)

end

end A044233.P69062539075038557

/-! ## A044233.P6455905659699473907

`lcm(A241816(A044614(n+1))+1, A000034(n))`
-/

namespace A044233.P6455905659699473907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A241816 (A044614 (n + 1)).toNat + 1) (A000034 n)

end

end A044233.P6455905659699473907

/-! ## A044233.P5494817193774335992

`A241816(A044614(n+1))+A007318(C(2, n))`
-/

namespace A044233.P5494817193774335992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A044233.P5494817193774335992

/-! ## A044233.P7736486546808451323

`A241816(A044614(n+1))+(A000041(n)%2)!`
-/

namespace A044233.P7736486546808451323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A044233.P7736486546808451323

/-! ## A044233.P4749603047229230953

`A241816(A044614(n+1))+A014963(10*(n+1))`
-/

namespace A044233.P4749603047229230953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A014963 (10 * (n + 1))

end

end A044233.P4749603047229230953

/-! ## A044233.P5061301489388541304

`A241816(A044614(n+1))+A000041(C(2, n+2))`
-/

namespace A044233.P5061301489388541304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A000041 (Nat.choose 2 (n + 2))

end

end A044233.P5061301489388541304

/-! ## A044233.P16132597287073321481

`A241816(A044614(n+1))+A000108(C(2, n+2))`
-/

namespace A044233.P16132597287073321481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A044233.P16132597287073321481

/-! ## A044233.P11604605785416755164

`A241816(A044614(n+1))+A007318(gcd(n, n+1))`
-/

namespace A044233.P11604605785416755164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044614 (n + 1)).toNat + A007318 (Nat.gcd n (n + 1))

end

end A044233.P11604605785416755164

/-!
# A044234: Numbers n such that string 5,7 occurs in the base 8 representation of n but not of n-1.

The programs for A044234, there is no canonical definition to state claims against.
-/

/-! ## A044234.P2744709189818498488

`A044614(n+1)+∑{e}[A114367(n), #]`
-/

namespace A044234.P2744709189818498488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A044234.P2744709189818498488

/-! ## A044234.P16096819103447352541

`A044614(n+1)+A001221(A086519(n))`
-/

namespace A044234.P16096819103447352541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) + A001221 (A086519 n).toNat

end

end A044234.P16096819103447352541

/-! ## A044234.P14276086998823660340

`A044614(n+1)+A001222(A114367(n))`
-/

namespace A044234.P14276086998823660340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) + A001222 (A114367 n).toNat

end

end A044234.P14276086998823660340

/-! ## A044234.P4053118892692957948

`A044614(n+1)+A001222(A141465(n+1))`
-/

namespace A044234.P4053118892692957948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) + A001222 (A141465 (n + 1)).toNat

end

end A044234.P4053118892692957948

/-! ## A044234.P15594414199997691975

`A044614(n+1)+A001222(A168171(n+1))`
-/

namespace A044234.P15594414199997691975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (n + 1) + A001222 (A168171 (n + 1)).toNat

end

end A044234.P15594414199997691975

/-!
# A044235: Numbers n such that string 6,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044235, there is no canonical definition to state claims against.
-/

/-! ## A044235.P15907469552559612355

`and(A044616(n+1)+1, A044616(n+1))`
-/

namespace A044235.P15907469552559612355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044616 (n + 1) + 1) (A044616 (n + 1))

end

end A044235.P15907469552559612355

/-! ## A044235.P14548111933156416902

`A044616(n+1)-A135481(A044616(n+1))`
-/

namespace A044235.P14548111933156416902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044616 (n + 1) - A135481 (A044616 (n + 1)).toNat

end

end A044235.P14548111933156416902

/-! ## A044235.P14556039531210005026

`A129760(A044616(n+1)+1)`
-/

namespace A044235.P14556039531210005026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044616 (n + 1) + 1).toNat

end

end A044235.P14556039531210005026

/-! ## A044235.P12378974232990113851

`A044616(n+1)+1-A006519(A044616(n+1)+1)`
-/

namespace A044235.P12378974232990113851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044616 (n + 1) + 1 - A006519 (A044616 (n + 1) + 1).toNat

end

end A044235.P12378974232990113851

/-! ## A044235.P16604978331368526991

`A352729(A044616(n+1))`
-/

namespace A044235.P16604978331368526991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044616 (n + 1)).toNat

end

end A044235.P16604978331368526991

/-! ## A044235.P16566526286756215254

`record[A028903(A044390(n+1))]`
-/

namespace A044235.P16566526286756215254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A044390 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044235.P16566526286756215254

/-! ## A044235.P863711254925627467

`∩[A043157(n+1), A072834(n)]`
-/

namespace A044235.P863711254925627467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072834 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044235.P863711254925627467

/-! ## A044235.P13359710611270997452

`A044615(n+1)+A000035(A216055(n+1))`
-/

namespace A044235.P13359710611270997452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044615 (n + 1) + A000035 (A216055 (n + 1)).toNat

end

end A044235.P13359710611270997452

/-!
# A044236: Numbers k such that string 6,1 occurs in the base 8 representation of k but not of k-1.

The programs for A044236, there is no canonical definition to state claims against.
-/

/-! ## A044236.P3437304233551580807

`A241816(A044617(n+1)+1)`
-/

namespace A044236.P3437304233551580807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044617 (n + 1) + 1).toNat

end

end A044236.P3437304233551580807

/-! ## A044236.P14674677717638132083

`A241816(A044237(n+1)%A141281(n+1))`
-/

namespace A044236.P14674677717638132083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (Int.tmod (A044237 (n + 1)) (A141281 (n + 1))).toNat

end

end A044236.P14674677717638132083

/-! ## A044236.P8054958007810902307

`A044616(n+1)+A001221(A137189(n))`
-/

namespace A044236.P8054958007810902307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044616 (n + 1) + A001221 (A137189 n).toNat

end

end A044236.P8054958007810902307

/-! ## A044236.P10430976909307213315

`A053866(A001248(n+1))+A044616(n+1)`
-/

namespace A044236.P10430976909307213315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A001248 (n + 1)).toNat + A044616 (n + 1)

end

end A044236.P10430976909307213315

/-! ## A044236.P8420084909105227824

`A044616(n+1)+A001221(A127956(n+1))`
-/

namespace A044236.P8420084909105227824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044616 (n + 1) + A001221 (A127956 (n + 1)).toNat

end

end A044236.P8420084909105227824

/-! ## A044236.P17163063697861126424

`A044616(n+1)+A001222(A275516(n+1))`
-/

namespace A044236.P17163063697861126424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044616 (n + 1) + A001222 (A275516 (n + 1)).toNat

end

end A044236.P17163063697861126424

/-! ## A044236.P8149468141142030517

`A044616(n+1)+A001222(A293008(n+1))`
-/

namespace A044236.P8149468141142030517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044616 (n + 1) + A001222 (A293008 (n + 1)).toNat

end

end A044236.P8149468141142030517

/-!
# A044237: Numbers k such that string 6,2 occurs in the base 8 representation of k but not of k-1.

The programs for A044237, there is no canonical definition to state claims against.
-/

/-! ## A044237.P15305209525937509799

`and(A044618(n+1)+1, A044618(n+1))`
-/

namespace A044237.P15305209525937509799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044618 (n + 1) + 1) (A044618 (n + 1))

end

end A044237.P15305209525937509799

/-! ## A044237.P1009669661237937281

`A044618(n+1)-A135481(A044618(n+1))`
-/

namespace A044237.P1009669661237937281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044618 (n + 1) - A135481 (A044618 (n + 1)).toNat

end

end A044237.P1009669661237937281

/-! ## A044237.P3648041883912297041

`A241816(A044618(n+1))+1`
-/

namespace A044237.P3648041883912297041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044618 (n + 1)).toNat + 1

end

end A044237.P3648041883912297041

/-! ## A044237.P8659608672042569893

`A044618(n+1)+1-A006519(A044618(n+1)+1)`
-/

namespace A044237.P8659608672042569893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044618 (n + 1) + 1 - A006519 (A044618 (n + 1) + 1).toNat

end

end A044237.P8659608672042569893

/-! ## A044237.P6019629439536014981

`A352729(2*A044618(n+1))/2`
-/

namespace A044237.P6019629439536014981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352729 (2 * A044618 (n + 1)).toNat : ℚ) / 2

end

end A044237.P6019629439536014981

/-! ## A044237.P17772250207989046869

`(A044617(n+1)+1)%A141281(n+1)`
-/

namespace A044237.P17772250207989046869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044617 (n + 1) + 1) (A141281 (n + 1))

end

end A044237.P17772250207989046869

/-!
# A044238: Numbers k such that string 6,3 occurs in the base 8 representation of k but not of k-1.

The programs for A044238, there is no canonical definition to state claims against.
-/

/-! ## A044238.P11527078754911881046

`A243109(A044619(n+1)+2)`
-/

namespace A044238.P11527078754911881046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044619 (n + 1) + 2).toNat

end

end A044238.P11527078754911881046

/-! ## A044238.P12235781289035176536

`record[A028903(A044395(n+1))]`
-/

namespace A044238.P12235781289035176536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A044395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044238.P12235781289035176536

/-! ## A044238.P8317314011260132

`A044618(n+1)+A001222(A088048(n+1))`
-/

namespace A044238.P8317314011260132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044618 (n + 1) + A001222 (A088048 (n + 1)).toNat

end

end A044238.P8317314011260132

/-! ## A044238.P16297187514143723500

`A044618(n+1)+A001222(A191377(n+1))`
-/

namespace A044238.P16297187514143723500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044618 (n + 1) + A001222 (A191377 (n + 1)).toNat

end

end A044238.P16297187514143723500

/-! ## A044238.P2937524153729869527

`A044618(n+1)+A001222(A249077(n+1))`
-/

namespace A044238.P2937524153729869527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044618 (n + 1) + A001222 (A249077 (n + 1)).toNat

end

end A044238.P2937524153729869527

/-! ## A044238.P8706802169789022269

`A044618(n+1)+A001222(A301918(n+1))`
-/

namespace A044238.P8706802169789022269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044618 (n + 1) + A001222 (A301918 (n + 1)).toNat

end

end A044238.P8706802169789022269

/-!
# A044239: Numbers k such that string 6,4 occurs in the base 8 representation of k but not of k-1.

The programs for A044239, there is no canonical definition to state claims against.
-/

/-! ## A044239.P10044450920111944289

`and(A044620(n+1)+1, A044620(n+1))`
-/

namespace A044239.P10044450920111944289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044620 (n + 1) + 1) (A044620 (n + 1))

end

end A044239.P10044450920111944289

/-! ## A044239.P12239198600758146804

`A044620(n+1)-A135481(A044620(n+1))`
-/

namespace A044239.P12239198600758146804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044620 (n + 1) - A135481 (A044620 (n + 1)).toNat

end

end A044239.P12239198600758146804

/-! ## A044239.P5753888135793803273

`A129760(A044620(n+1)+1)`
-/

namespace A044239.P5753888135793803273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044620 (n + 1) + 1).toNat

end

end A044239.P5753888135793803273

/-! ## A044239.P17762853102453845544

`A044620(n+1)+1-A006519(A044620(n+1)+1)`
-/

namespace A044239.P17762853102453845544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044620 (n + 1) + 1 - A006519 (A044620 (n + 1) + 1).toNat

end

end A044239.P17762853102453845544

/-! ## A044239.P11506105094764767907

`A189628(3*n+4)+A243109(A044620(n+1))+2`
-/

namespace A044239.P11506105094764767907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (3 * n + 4) + (A243109 (A044620 (n + 1)).toNat + 2)

end

end A044239.P11506105094764767907

/-! ## A044239.P12464263928256386756

`A352729(A044620(n+1))`
-/

namespace A044239.P12464263928256386756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044620 (n + 1)).toNat

end

end A044239.P12464263928256386756

/-! ## A044239.P11590059154842647726

`and(A044240(n+1), A267183(3*A044240(n+1)))`
-/

namespace A044239.P11590059154842647726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044240 (n + 1)) (A267183 (3 * A044240 (n + 1)).toNat)

end

end A044239.P11590059154842647726

/-! ## A044239.P11266446698512913328

`A044619(n+1)+A001221(A264030(n+1))`
-/

namespace A044239.P11266446698512913328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044619 (n + 1) + A001221 (A264030 (n + 1)).toNat

end

end A044239.P11266446698512913328

/-! ## A044239.P5755095851879164224

`A309953(A309944(n+1))+A057168(A044237(n+1))`
-/

namespace A044239.P5755095851879164224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309953 (A309944 (n + 1)).toNat + A057168 (A044237 (n + 1)).toNat

end

end A044239.P5755095851879164224

/-!
# A044240: Numbers k such that string 6,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044240, there is no canonical definition to state claims against.
-/

/-! ## A044240.P10271536262202765620

`A241816(A044621(n+1)+1)`
-/

namespace A044240.P10271536262202765620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044621 (n + 1) + 1).toNat

end

end A044240.P10271536262202765620

/-! ## A044240.P12319801468088413165

`A008611(3*A044620(n+1))`
-/

namespace A044240.P12319801468088413165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A044620 (n + 1)).toNat

end

end A044240.P12319801468088413165

/-! ## A044240.P13880169337023009432

`A008620(3*A044620(n+1))`
-/

namespace A044240.P13880169337023009432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A044620 (n + 1)).toNat

end

end A044240.P13880169337023009432

/-! ## A044240.P7259698096791316049

`A054977(A003215(n))+A044620(n+1)`
-/

namespace A044240.P7259698096791316049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A003215 n).toNat + A044620 (n + 1)

end

end A044240.P7259698096791316049

/-! ## A044240.P12692635813933589740

`A044620(n+1)+A001222(A024770(n+1))`
-/

namespace A044240.P12692635813933589740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044620 (n + 1) + A001222 (A024770 (n + 1)).toNat

end

end A044240.P12692635813933589740

/-! ## A044240.P247662782380642117

`A044620(n+1)+A001222(A086472(n+1))`
-/

namespace A044240.P247662782380642117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044620 (n + 1) + A001222 (A086472 (n + 1)).toNat

end

end A044240.P247662782380642117

/-! ## A044240.P8351081970003951893

`A044620(n+1)+A001222(A347864(n+1))`
-/

namespace A044240.P8351081970003951893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044620 (n + 1) + A001222 (A347864 (n + 1)).toNat

end

end A044240.P8351081970003951893

/-! ## A044240.P683258486341635240

`A044620(n+1)+A001222(A144105(n+1))`
-/

namespace A044240.P683258486341635240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044620 (n + 1) + A001222 (A144105 (n + 1)).toNat

end

end A044240.P683258486341635240

/-!
# A044241: Numbers k such that string 6,6 occurs in the base 8 representation of k but not of k-1.

The programs for A044241, there is no canonical definition to state claims against.
-/

/-! ## A044241.P16919651273221948910

`and(A044622(n+1)+1, A044622(n+1))`
-/

namespace A044241.P16919651273221948910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044622 (n + 1) + 1) (A044622 (n + 1))

end

end A044241.P16919651273221948910

/-! ## A044241.P9529531785399205448

`A129760(A044622(n+1)+1)`
-/

namespace A044241.P9529531785399205448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044622 (n + 1) + 1).toNat

end

end A044241.P9529531785399205448

/-! ## A044241.P9654799539962219476

`A044622(n+1)+1-A006519(A044622(n+1)+1)`
-/

namespace A044241.P9654799539962219476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044622 (n + 1) + 1 - A006519 (A044622 (n + 1) + 1).toNat

end

end A044241.P9654799539962219476

/-! ## A044241.P3885997453544838978

`A233583(A043175(2*n+1))+17`
-/

namespace A044241.P3885997453544838978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A043175 (2 * n + 1)).toNat + 17

end

end A044241.P3885997453544838978

/-! ## A044241.P8320196952942428799

`A044242(n+1)-A345942(A030494(n+1))`
-/

namespace A044241.P8320196952942428799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044242 (n + 1) - A345942 (A030494 (n + 1)).toNat

end

end A044241.P8320196952942428799

/-!
# A044242: Numbers n such that string 6,7 occurs in the base 8 representation of n but not of n-1.

The programs for A044242, there is no canonical definition to state claims against.
-/

/-! ## A044242.P10177859877357064954

`A000005(A119570(n+1))+64*n+53`
-/

namespace A044242.P10177859877357064954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A119570 (n + 1)).toNat + (64 * n + 53 : ℤ)

end

end A044242.P10177859877357064954

/-! ## A044242.P5839758321842802730

`64*n+56-A032741(A054217(n+1))`
-/

namespace A044242.P5839758321842802730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n + 56 : ℤ) - A032741 (A054217 (n + 1)).toNat

end

end A044242.P5839758321842802730

/-! ## A044242.P16799522276915851893

`or(a(n-1)+64, A001221(A128089(n+1)))` with `a(0)=55`
-/

namespace A044242.P16799522276915851893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  Int.lor (a (n - 1) + 64) (A001221 (A128089 (n + 1)).toNat)

end

end A044242.P16799522276915851893

/-! ## A044242.P10651163188630511640

`A157330(n+1)-A057427(A173825(n+1))`
-/

namespace A044242.P10651163188630511640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A057427 (A173825 (n + 1)).toNat

end

end A044242.P10651163188630511640

/-! ## A044242.P960281748059792358

`A157330(n+1)-A267871(A128089(n+1))`
-/

namespace A044242.P960281748059792358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157330 (n + 1) - A267871 (A128089 (n + 1)).toNat

end

end A044242.P960281748059792358

/-! ## A044242.P4790415442865945831

`64*n+56-A014973(A339003(n+1))`
-/

namespace A044242.P4790415442865945831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n + 56 : ℤ) - A014973 (A339003 (n + 1)).toNat

end

end A044242.P4790415442865945831

/-! ## A044242.P327591494840678503

`A044187(n+1)-A010732(A027443(n+1))`
-/

namespace A044242.P327591494840678503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044187 (n + 1) - A010732 (A027443 (n + 1)).toNat

end

end A044242.P327591494840678503

/-!
# A044243: Numbers n such that string 7,0 occurs in the base 8 representation of n but not of n-1.

The programs for A044243, there is no canonical definition to state claims against.
-/

/-! ## A044243.P13789129146802823950

`and(A044624(n+1)+1, A044624(n+1))`
-/

namespace A044243.P13789129146802823950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044624 (n + 1) + 1) (A044624 (n + 1))

end

end A044243.P13789129146802823950

/-! ## A044243.P2477761744083410068

`A044624(n+1)-A135481(A044624(n+1))`
-/

namespace A044243.P2477761744083410068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044624 (n + 1) - A135481 (A044624 (n + 1)).toNat

end

end A044243.P2477761744083410068

/-! ## A044243.P8977019732969417089

`A129760(A044624(n+1)+1)`
-/

namespace A044243.P8977019732969417089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044624 (n + 1) + 1).toNat

end

end A044243.P8977019732969417089

/-! ## A044243.P9676682473628372489

`A352729(A044624(n+1))`
-/

namespace A044243.P9676682473628372489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044624 (n + 1)).toNat

end

end A044243.P9676682473628372489

/-! ## A044243.P15241102188659339688

`A129760(A044245(n+1))+A064911(A325958(n+1))`
-/

namespace A044243.P15241102188659339688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044245 (n + 1)).toNat + A064911 (A325958 (n + 1)).toNat

end

end A044243.P15241102188659339688

/-! ## A044243.P16112657450929073762

`∩[A043158(n+1), A030127(n+8)]`
-/

namespace A044243.P16112657450929073762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (n + 8)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044243.P16112657450929073762

/-! ## A044243.P18367825200397097594

`A241816(A044627(n+1))+A069897(A144816(n))`
-/

namespace A044243.P18367825200397097594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044627 (n + 1)).toNat + A069897 (A144816 n).toNat

end

end A044243.P18367825200397097594

/-!
# A044244: Numbers n such that string 7,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044244, there is no canonical definition to state claims against.
-/

/-! ## A044244.P538442563694058445

`A241816(A044625(n+1)+1)`
-/

namespace A044244.P538442563694058445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044625 (n + 1) + 1).toNat

end

end A044244.P538442563694058445

/-! ## A044244.P240965763374349751

`A243109(A044625(n+1)+1)`
-/

namespace A044244.P240965763374349751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044625 (n + 1) + 1).toNat

end

end A044244.P240965763374349751

/-! ## A044244.P6561901804181438846

`A044624(n+1)+A151934(n)!`
-/

namespace A044244.P6561901804181438846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044624 (n + 1) + (Nat.factorial (A151934 n).toNat : ℤ)

end

end A044244.P6561901804181438846

/-! ## A044244.P2732543326457492537

`A044624(n+1)+A151935(n)!`
-/

namespace A044244.P2732543326457492537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044624 (n + 1) + (Nat.factorial (A151935 n).toNat : ℤ)

end

end A044244.P2732543326457492537

/-! ## A044244.P16382595653541221523

`A044624(n+1)+A001222(A105436(n))`
-/

namespace A044244.P16382595653541221523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044624 (n + 1) + A001222 (A105436 n).toNat

end

end A044244.P16382595653541221523

/-! ## A044244.P4266474599050478786

`A044624(n+1)+A001222(A002586(n+1))`
-/

namespace A044244.P4266474599050478786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044624 (n + 1) + A001222 (A002586 (n + 1)).toNat

end

end A044244.P4266474599050478786

/-! ## A044244.P8927969232181472358

`A151934(n*A151934(n))+A044624(n+1)`
-/

namespace A044244.P8927969232181472358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 ((n : ℤ) * A151934 n).toNat + A044624 (n + 1)

end

end A044244.P8927969232181472358

/-! ## A044244.P9068476313966744435

`A151935(n*A151935(n))+A044624(n+1)`
-/

namespace A044244.P9068476313966744435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 ((n : ℤ) * A151935 n).toNat + A044624 (n + 1)

end

end A044244.P9068476313966744435

/-! ## A044244.P13137971457735772966

`A093178(A147993(n+2)-1)+A044624(n+1)`
-/

namespace A044244.P13137971457735772966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A147993 (n + 2) - 1).toNat + A044624 (n + 1)

end

end A044244.P13137971457735772966

/-! ## A044244.P3362716060980147274

`A044624(n+1)+A001511(A240618(n+1))`
-/

namespace A044244.P3362716060980147274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044624 (n + 1) + A001511 (A240618 (n + 1)).toNat

end

end A044244.P3362716060980147274

/-!
# A044245: Numbers k such that string 7,2 occurs in the base 8 representation of k but not of k-1.

The programs for A044245, there is no canonical definition to state claims against.
-/

/-! ## A044245.P15751819645275143312

`and(A044626(n+1)+1, A044626(n+1))`
-/

namespace A044245.P15751819645275143312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044626 (n + 1) + 1) (A044626 (n + 1))

end

end A044245.P15751819645275143312

/-! ## A044245.P3484405596965826988

`A044626(n+1)-A135481(A044626(n+1))`
-/

namespace A044245.P3484405596965826988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044626 (n + 1) - A135481 (A044626 (n + 1)).toNat

end

end A044245.P3484405596965826988

/-! ## A044245.P373718496094577869

`A129760(A044626(n+1)+1)`
-/

namespace A044245.P373718496094577869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044626 (n + 1) + 1).toNat

end

end A044245.P373718496094577869

/-! ## A044245.P9958699142012660795

`A241816(A044626(n+1))+A057427(n+3)`
-/

namespace A044245.P9958699142012660795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044626 (n + 1)).toNat + A057427 (n + 3)

end

end A044245.P9958699142012660795

/-! ## A044245.P9556851194531732700

`A352729(2*A044626(n+1))/2`
-/

namespace A044245.P9556851194531732700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352729 (2 * A044626 (n + 1)).toNat : ℚ) / 2

end

end A044245.P9556851194531732700

/-!
# A044246: Numbers k such that string 7,3 occurs in the base 8 representation of k but not of k-1.

The programs for A044246, there is no canonical definition to state claims against.
-/

/-! ## A044246.P9080095456284242137

`A243109(A044627(n+1)+2)`
-/

namespace A044246.P9080095456284242137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044627 (n + 1) + 2).toNat

end

end A044246.P9080095456284242137

/-! ## A044246.P9503671934838762583

`A241816(A044628(n+1))+A033273(A027862(n+3))`
-/

namespace A044246.P9503671934838762583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044628 (n + 1)).toNat + A033273 (A027862 (n + 3)).toNat

end

end A044246.P9503671934838762583

/-! ## A044246.P2975745100654333807

`A044626(n+1)+A007913(A001248(n+1))`
-/

namespace A044246.P2975745100654333807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044626 (n + 1) + A007913 (A001248 (n + 1)).toNat

end

end A044246.P2975745100654333807

/-! ## A044246.P6661301446223849469

`A057427(A196004(n+1))+A044626(n+1)`
-/

namespace A044246.P6661301446223849469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A196004 (n + 1)).toNat + A044626 (n + 1)

end

end A044246.P6661301446223849469

/-! ## A044246.P2478793886000168797

`A044626(n+1)+A000032(A000041(C(n, 64)))`
-/

namespace A044246.P2478793886000168797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044626 (n + 1) + A000032 (A000041 (Nat.choose n 64)).toNat

end

end A044246.P2478793886000168797

/-! ## A044246.P5054951087432191081

`A044626(n+1)+A001222(A163588(n+1))`
-/

namespace A044246.P5054951087432191081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044626 (n + 1) + A001222 (A163588 (n + 1)).toNat

end

end A044246.P5054951087432191081

/-!
# A044247: Numbers n such that string 7,4 occurs in the base 8 representation of n but not of n-1.

The programs for A044247, there is no canonical definition to state claims against.
-/

/-! ## A044247.P4580678637844847569

`and(A044628(n+1)+1, A044628(n+1))`
-/

namespace A044247.P4580678637844847569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044628 (n + 1) + 1) (A044628 (n + 1))

end

end A044247.P4580678637844847569

/-! ## A044247.P187647552819853165

`A044628(n+1)-A135481(A044628(n+1))`
-/

namespace A044247.P187647552819853165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044628 (n + 1) - A135481 (A044628 (n + 1)).toNat

end

end A044247.P187647552819853165

/-! ## A044247.P6024452485817764839

`A243109(A044628(n+1))+2`
-/

namespace A044247.P6024452485817764839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044628 (n + 1)).toNat + 2

end

end A044247.P6024452485817764839

/-! ## A044247.P7480287375916791964

`A044628(n+1)+1-A006519(A044628(n+1)+1)`
-/

namespace A044247.P7480287375916791964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044628 (n + 1) + 1 - A006519 (A044628 (n + 1) + 1).toNat

end

end A044247.P7480287375916791964

/-! ## A044247.P7009697624391808068

`A352729(A044628(n+1))`
-/

namespace A044247.P7009697624391808068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044628 (n + 1)).toNat

end

end A044247.P7009697624391808068

/-! ## A044247.P11352506335715514344

`A241816(A044629(n+1))+A054977(A003586(n+1))`
-/

namespace A044247.P11352506335715514344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044629 (n + 1)).toNat + A054977 (A003586 (n + 1)).toNat

end

end A044247.P11352506335715514344

/-! ## A044247.P3559186647652809290

`A241816(A044629(n+1))+A057427(A100440(n+1))`
-/

namespace A044247.P3559186647652809290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044629 (n + 1)).toNat + A057427 (A100440 (n + 1)).toNat

end

end A044247.P3559186647652809290

/-! ## A044247.P6020122047547205959

`A241816(A044629(n+1))+A000189(A163963(n+1))`
-/

namespace A044247.P6020122047547205959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044629 (n + 1)).toNat + A000189 (A163963 (n + 1)).toNat

end

end A044247.P6020122047547205959

/-! ## A044247.P10358695143080847655

`A069897(A144816(n))+A044627(n+1)`
-/

namespace A044247.P10358695143080847655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A144816 n).toNat + A044627 (n + 1)

end

end A044247.P10358695143080847655

/-!
# A044248: Numbers k such that string 7,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044248, there is no canonical definition to state claims against.
-/

/-! ## A044248.P15085126504638275783

`A241816(A044629(n+1)+1)`
-/

namespace A044248.P15085126504638275783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044629 (n + 1) + 1).toNat

end

end A044248.P15085126504638275783

/-! ## A044248.P4124094782671438626

`A243109(A044629(n+1)+1)`
-/

namespace A044248.P4124094782671438626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044629 (n + 1) + 1).toNat

end

end A044248.P4124094782671438626

/-! ## A044248.P12856157384710488717

`A241816(A044249(n+1))+A000007(A067728(n+1))`
-/

namespace A044248.P12856157384710488717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044249 (n + 1)).toNat + A000007 (A067728 (n + 1)).toNat

end

end A044248.P12856157384710488717

/-! ## A044248.P18197969993064202285

`A033273(A027862(n+1))*A241816(A044249(n+1))`
-/

namespace A044248.P18197969993064202285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A027862 (n + 1)).toNat * A241816 (A044249 (n + 1)).toNat

end

end A044248.P18197969993064202285

/-! ## A044248.P376548685792526461

`A066247(A023551(n+1))*A241816(A044249(n+1))`
-/

namespace A044248.P376548685792526461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A023551 (n + 1)).toNat * A241816 (A044249 (n + 1)).toNat

end

end A044248.P376548685792526461

/-! ## A044248.P7628202959526889790

`A057427(A100440(n+1))+A044628(n+1)`
-/

namespace A044248.P7628202959526889790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A100440 (n + 1)).toNat + A044628 (n + 1)

end

end A044248.P7628202959526889790

/-! ## A044248.P8052325343503341047

`A044628(n+1)+A001222(A327349(n+1))`
-/

namespace A044248.P8052325343503341047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044628 (n + 1) + A001222 (A327349 (n + 1)).toNat

end

end A044248.P8052325343503341047

/-! ## A044248.P14839721164656401748

`(A044628(n+1)+1)%A152834(A000040(n+2))`
-/

namespace A044248.P14839721164656401748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044628 (n + 1) + 1) (A152834 (A000040 (n + 2)).toNat)

end

end A044248.P14839721164656401748

/-!
# A044249: Numbers k such that string 7,6 occurs in the base 8 representation of k but not of k-1.

The programs for A044249, there is no canonical definition to state claims against.
-/

/-! ## A044249.P549922716992789117

`and(A044630(n+1)+1, A044630(n+1))`
-/

namespace A044249.P549922716992789117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044630 (n + 1) + 1) (A044630 (n + 1))

end

end A044249.P549922716992789117

/-! ## A044249.P11422470791734887358

`A129760(A044630(n+1)+1)`
-/

namespace A044249.P11422470791734887358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044630 (n + 1) + 1).toNat

end

end A044249.P11422470791734887358

/-! ## A044249.P7989514618789284

`A054977(A262392(n))+A044629(n+1)`
-/

namespace A044249.P7989514618789284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A262392 n).toNat + A044629 (n + 1)

end

end A044249.P7989514618789284

/-! ## A044249.P6612399993240371998

`A054977(∑[A284414(n)])+A044629(n+1)`
-/

namespace A044249.P6612399993240371998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044629 (n + 1)

end

end A044249.P6612399993240371998

/-! ## A044249.P16692455987358484901

`A044629(n+1)+A033273(A027862(n+1))`
-/

namespace A044249.P16692455987358484901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044629 (n + 1) + A033273 (A027862 (n + 1)).toNat

end

end A044249.P16692455987358484901

/-! ## A044249.P1290871760721388870

`A066247(A023551(n+1))+A044629(n+1)`
-/

namespace A044249.P1290871760721388870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A023551 (n + 1)).toNat + A044629 (n + 1)

end

end A044249.P1290871760721388870

/-! ## A044249.P6565901450692071227

`A054977(A067728(n+1))+A044629(n+1)`
-/

namespace A044249.P6565901450692071227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A067728 (n + 1)).toNat + A044629 (n + 1)

end

end A044249.P6565901450692071227

/-! ## A044249.P16235713303312001588

`A054977(∑[A008578(n+1)])+A044629(n+1)`
-/

namespace A044249.P16235713303312001588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044629 (n + 1)

end

end A044249.P16235713303312001588

/-! ## A044249.P2064383370886937559

`A044629(n+1)-A057428(∑[A008578(n+1)])`
-/

namespace A044249.P2064383370886937559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044629 (n + 1) - A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044249.P2064383370886937559

/-! ## A044249.P13848054132073512187

`A054977(A003586(n+1))+A044629(n+1)`
-/

namespace A044249.P13848054132073512187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A003586 (n + 1)).toNat + A044629 (n + 1)

end

end A044249.P13848054132073512187

/-!
# A044250: Numbers n such that string 7,7 occurs in the base 8 representation of n but not of n-1.

The programs for A044250, there is no canonical definition to state claims against.
-/

/-! ## A044250.P10667108157451834268

`A044187(n+1)-A008834(A187829(n+1))`
-/

namespace A044250.P10667108157451834268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044187 (n + 1) - A008834 (A187829 (n + 1)).toNat

end

end A044250.P10667108157451834268

/-! ## A044250.P2200739466653387665

`A044187(A187829(n+1))-A056191(n+1)`
-/

namespace A044250.P2200739466653387665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044187 (A187829 (n + 1)).toNat - A056191 (n + 1)

end

end A044250.P2200739466653387665

/-! ## A044250.P6300222817567443629

`A233583(A158071(n+1)-A008834(n+1))`
-/

namespace A044250.P6300222817567443629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A158071 (n + 1) - A008834 (n + 1)).toNat

end

end A044250.P6300222817567443629

/-! ## A044250.P5859795156878846017

`A233583(A158071(n+1)-A056191(n+1))`
-/

namespace A044250.P5859795156878846017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A158071 (n + 1) - A056191 (n + 1)).toNat

end

end A044250.P5859795156878846017

/-! ## A044250.P15297315548939619470

`A044187(n+1)-A110866(A152440(n))`
-/

namespace A044250.P15297315548939619470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044187 (n + 1) - A110866 (A152440 n).toNat

end

end A044250.P15297315548939619470

/-!
# A044251: Numbers k such that string 0,0 occurs in the base 9 representation of k but not of k-1.

The programs for A044251, there is no canonical definition to state claims against.
-/

/-! ## A044251.P12355758445402638054

`record[A106610(A044252(n+1))-1]`
-/

namespace A044251.P12355758445402638054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A044252 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044251.P12355758445402638054

/-! ## A044251.P2299343225610889054

`Δ[A124388(∑[3*n])]`
-/

namespace A044251.P2299343225610889054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044251.P2299343225610889054

/-! ## A044251.P14026322068353841825

`Δ[A154266(A045943(n))]`
-/

namespace A044251.P14026322068353841825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (A045943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044251.P14026322068353841825

/-! ## A044251.P4138835486603069829

`81*A078719(A092893(n))`
-/

namespace A044251.P4138835486603069829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A078719 (A092893 n).toNat

end

end A044251.P4138835486603069829

/-! ## A044251.P6114988472796352951

`Δ[A154266(A005448(n+1))]`
-/

namespace A044251.P6114988472796352951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (A005448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044251.P6114988472796352951

/-! ## A044251.P16084640881245245936

`Δ[A154266(A139482(n+2))]`
-/

namespace A044251.P16084640881245245936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (A139482 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044251.P16084640881245245936

/-! ## A044251.P8680486192179996229

`Δ[A154266(3*A000217(n))]`
-/

namespace A044251.P8680486192179996229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 (3 * A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044251.P8680486192179996229

/-!
# A044252: Numbers k such that string 0,1 occurs in the base 9 representation of k but not of k-1.

The programs for A044252, there is no canonical definition to state claims against.
-/

/-! ## A044252.P5138009231804930349

`record[A325641(A044253(n+2))]`
-/

namespace A044252.P5138009231804930349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A044253 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044252.P5138009231804930349

/-! ## A044252.P6741393688841921396

`A166514(∩[2*(n+2), A044253(n+1)])`
-/

namespace A044252.P6741393688841921396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044253 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044252.P6741393688841921396

/-! ## A044252.P12478138674790004435

`record[A054576(2*A044253(n+2))]`
-/

namespace A044252.P12478138674790004435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A044253 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044252.P12478138674790004435

/-!
# A044253: Numbers n such that string 0,2 occurs in the base 9 representation of n but not of n-1.

The programs for A044253, there is no canonical definition to state claims against.
-/

/-! ## A044253.P14561711367843288944

`A328479(A119617(n+1))+A044633(n+1)`
-/

namespace A044253.P14561711367843288944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A119617 (n + 1)).toNat + A044633 (n + 1)

end

end A044253.P14561711367843288944

/-! ## A044253.P14329977510516366627

`A002517(A044252(n+1))+A000007(A069482(n+1))`
-/

namespace A044253.P14329977510516366627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044252 (n + 1)).toNat + A000007 (A069482 (n + 1)).toNat

end

end A044253.P14329977510516366627

/-! ## A044253.P6924116360069269679

`A002517(A044252(n+1))+A000038(A097876(n+4))`
-/

namespace A044253.P6924116360069269679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044252 (n + 1)).toNat + A000038 (A097876 (n + 4)).toNat

end

end A044253.P6924116360069269679

/-! ## A044253.P9166773579515469473

`A134824(A350181(n+1))²*A002517(A044252(n+1))`
-/

namespace A044253.P9166773579515469473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A350181 (n + 1)).toNat ^ 2 * A002517 (A044252 (n + 1)).toNat

end

end A044253.P9166773579515469473

/-! ## A044253.P11136021761511925667

`A002517(A044252(n+1))%A135286(A069482(n+1)+1)`
-/

namespace A044253.P11136021761511925667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002517 (A044252 (n + 1)).toNat) (A135286 (A069482 (n + 1) + 1).toNat)

end

end A044253.P11136021761511925667

/-! ## A044253.P514028965646946013

`A328479(A295293(n+1)+1)+A044633(n+1)`
-/

namespace A044253.P514028965646946013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A295293 (n + 1) + 1).toNat + A044633 (n + 1)

end

end A044253.P514028965646946013

/-! ## A044253.P18291373607210383786

`A002517(A044252(n+1))+A000007(A028552(n+10))`
-/

namespace A044253.P18291373607210383786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044252 (n + 1)).toNat + A000007 (A028552 (n + 10)).toNat

end

end A044253.P18291373607210383786

/-! ## A044253.P2428274205958456257

`A002517(A044252(n+1))%A349200(A349180(n+1))`
-/

namespace A044253.P2428274205958456257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002517 (A044252 (n + 1)).toNat) (A349200 (A349180 (n + 1)).toNat)

end

end A044253.P2428274205958456257

/-! ## A044253.P5217213679798095848

`A304042(A175469(n+1))+A044633(n+1)`
-/

namespace A044253.P5217213679798095848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A175469 (n + 1)).toNat + A044633 (n + 1)

end

end A044253.P5217213679798095848

/-! ## A044253.P660072440528668489

`A002517(A044252(n+1))*A348500(A332016(n))`
-/

namespace A044253.P660072440528668489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044252 (n + 1)).toNat * A348500 (A332016 n).toNat

end

end A044253.P660072440528668489

/-!
# A044254: Numbers n such that string 0,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044254, there is no canonical definition to state claims against.
-/

/-! ## A044254.P8761463993901523807

`A044634(n+1)+A151878(n)!`
-/

namespace A044254.P8761463993901523807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + (Nat.factorial (A151878 n).toNat : ℤ)

end

end A044254.P8761463993901523807

/-! ## A044254.P10610365523699656797

`A057427(A073204(n))+A044634(n+1)`
-/

namespace A044254.P10610365523699656797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A073204 n).toNat + A044634 (n + 1)

end

end A044254.P10610365523699656797

/-! ## A044254.P11179077447036730694

`A044634(n+1)+A000034(A140513(n))`
-/

namespace A044254.P11179077447036730694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + A000034 (A140513 n).toNat

end

end A044254.P11179077447036730694

/-! ## A044254.P1765031117480445800

`A057427(A167269(n))+A044634(n+1)`
-/

namespace A044254.P1765031117480445800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A167269 n).toNat + A044634 (n + 1)

end

end A044254.P1765031117480445800

/-! ## A044254.P15461975535793740728

`A167269(A057944(n))+A044634(n+1)`
-/

namespace A044254.P15461975535793740728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167269 (A057944 n).toNat + A044634 (n + 1)

end

end A044254.P15461975535793740728

/-! ## A044254.P16393713943573553904

`A044634(n+1)+A000041(A151878(n)²)`
-/

namespace A044254.P16393713943573553904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + A000041 (A151878 n ^ 2).toNat

end

end A044254.P16393713943573553904

/-! ## A044254.P8999678241222550467

`A044634(n+1)+A000312(A151878(n)²)`
-/

namespace A044254.P8999678241222550467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + A000312 (A151878 n ^ 2).toNat

end

end A044254.P8999678241222550467

/-! ## A044254.P12875842555671719028

`A044634(n+1)+A000700(A151878(n)²)`
-/

namespace A044254.P12875842555671719028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + A000700 (A151878 n ^ 2).toNat

end

end A044254.P12875842555671719028

/-! ## A044254.P8250542590679905870

`A044634(n+1)+A000793(A151878(n)²)`
-/

namespace A044254.P8250542590679905870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + A000793 (A151878 n ^ 2).toNat

end

end A044254.P8250542590679905870

/-! ## A044254.P11616380750144161133

`A044634(n+1)+A006189(A151878(n)²)`
-/

namespace A044254.P11616380750144161133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044634 (n + 1) + A006189 (A151878 n ^ 2).toNat

end

end A044254.P11616380750144161133

/-!
# A044255: Numbers n such that string 0,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044255, there is no canonical definition to state claims against.
-/

/-! ## A044255.P7347966327533132879

`A088347(A088347(n))+A044635(n+1)`
-/

namespace A044255.P7347966327533132879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088347 (A088347 n).toNat + A044635 (n + 1)

end

end A044255.P7347966327533132879

/-! ## A044255.P7053816413426346912

`A057427(A334742(n+1))+A044635(n+1)`
-/

namespace A044255.P7053816413426346912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A334742 (n + 1)).toNat + A044635 (n + 1)

end

end A044255.P7053816413426346912

/-! ## A044255.P8108031380704597018

`A168185(A338348(n+1))+A044635(n+1)`
-/

namespace A044255.P8108031380704597018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A338348 (n + 1)).toNat + A044635 (n + 1)

end

end A044255.P8108031380704597018

/-! ## A044255.P4226306089741105776

`A044635(n+1)+A001221(A122462(n+3))`
-/

namespace A044255.P4226306089741105776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044635 (n + 1) + A001221 (A122462 (n + 3)).toNat

end

end A044255.P4226306089741105776

/-! ## A044255.P10670874177627408201

`A044635(n+1)-∏{p}[A122462(n+3), A008683(#)]`
-/

namespace A044255.P10670874177627408201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122462 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044635 (n + 1) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008683 p

end

end A044255.P10670874177627408201

/-! ## A044255.P8339977121733788860

`A319021(A044254(n+1)-2)+A088347(A088347(n))`
-/

namespace A044255.P8339977121733788860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044254 (n + 1) - 2).toNat + A088347 (A088347 n).toNat

end

end A044255.P8339977121733788860

/-! ## A044255.P8914033559168045865

`A044635(n+1)+A000034(A140513(n))`
-/

namespace A044255.P8914033559168045865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044635 (n + 1) + A000034 (A140513 n).toNat

end

end A044255.P8914033559168045865

/-! ## A044255.P13038985838684604134

`A044635(n+1)+A000041(A151878(n))`
-/

namespace A044255.P13038985838684604134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044635 (n + 1) + A000041 (A151878 n).toNat

end

end A044255.P13038985838684604134

/-! ## A044255.P7034163437682578337

`A044635(n+1)+A010060(A090988(n+1))`
-/

namespace A044255.P7034163437682578337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044635 (n + 1) + A010060 (A090988 (n + 1)).toNat

end

end A044255.P7034163437682578337

/-! ## A044255.P11736890268279567387

`A044635(n+1)+A001222(A292775(n+1))`
-/

namespace A044255.P11736890268279567387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044635 (n + 1) + A001222 (A292775 (n + 1)).toNat

end

end A044255.P11736890268279567387

/-!
# A044256: Numbers k such that string 0,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044256, there is no canonical definition to state claims against.
-/

/-! ## A044256.P7366452281292311771

`floor(A044636(n+1)+atan(A102253(n)))`
-/

namespace A044256.P7366452281292311771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A044636 (n + 1) : ℝ) + Real.arctan (A102253 n : ℝ)⌋

end

end A044256.P7366452281292311771

/-! ## A044256.P5787569211914225352

`A044636(n+1)+A010122(A102253(n))`
-/

namespace A044256.P5787569211914225352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A010122 (A102253 n).toNat

end

end A044256.P5787569211914225352

/-! ## A044256.P5523351366202784159

`A044636(n+1)+A001511(∑[A102253(n)])`
-/

namespace A044256.P5523351366202784159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A001511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044256.P5523351366202784159

/-! ## A044256.P6816150554096015401

`A044636(n+1)+A007877(∑[A102253(n)])`
-/

namespace A044256.P6816150554096015401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A007877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044256.P6816150554096015401

/-! ## A044256.P18401793923373997604

`A044636(n+1)+A040587(∑[A102253(n)])`
-/

namespace A044256.P18401793923373997604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A040587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044256.P18401793923373997604

/-! ## A044256.P1746018209741627027

`A054977(A026283(n+1))+A044636(n+1)`
-/

namespace A044256.P1746018209741627027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A026283 (n + 1)).toNat + A044636 (n + 1)

end

end A044256.P1746018209741627027

/-! ## A044256.P12513776819949668676

`A044636(n+1)+A007913(A085986(n+1))`
-/

namespace A044256.P12513776819949668676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A007913 (A085986 (n + 1)).toNat

end

end A044256.P12513776819949668676

/-! ## A044256.P15643385726044556649

`A054977(A088347(n+1))+A044636(n+1)`
-/

namespace A044256.P15643385726044556649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A088347 (n + 1)).toNat + A044636 (n + 1)

end

end A044256.P15643385726044556649

/-! ## A044256.P10576842813055980236

`A044636(n+1)+∑{e}[A102253(n)+1, A000045(#)]`
-/

namespace A044256.P10576842813055980236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102253 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A044256.P10576842813055980236

/-! ## A044256.P4699763479045850083

`A044636(n+1)+A000010(val(A102253(n)+1, 2)!)`
-/

namespace A044256.P4699763479045850083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044636 (n + 1) + A000010 (Nat.factorial (SequenceMachineLib.valuation (A102253 n + 1).toNat 2))

end

end A044256.P4699763479045850083

/-!
# A044257: Numbers n such that string 0,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044257, there is no canonical definition to state claims against.
-/

/-! ## A044257.P17066472891219905288

`A054977(A088347(n))+A044637(n+1)`
-/

namespace A044257.P17066472891219905288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A088347 n).toNat + A044637 (n + 1)

end

end A044257.P17066472891219905288

/-! ## A044257.P3726039344816985638

`A325989(A226040(n))+A044637(n+1)`
-/

namespace A044257.P3726039344816985638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (A226040 n).toNat + A044637 (n + 1)

end

end A044257.P3726039344816985638

/-! ## A044257.P6927351380483723251

`A074206(A142164(n+1))+A044637(n+1)`
-/

namespace A044257.P6927351380483723251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A142164 (n + 1)).toNat + A044637 (n + 1)

end

end A044257.P6927351380483723251

/-! ## A044257.P14964203622014299809

`A158388(A106293(n+1))+A044637(n+1)`
-/

namespace A044257.P14964203622014299809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A106293 (n + 1)).toNat + A044637 (n + 1)

end

end A044257.P14964203622014299809

/-! ## A044257.P17613343696678377251

`A329888(A074822(n+1))+A044637(n+1)`
-/

namespace A044257.P17613343696678377251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A074822 (n + 1)).toNat + A044637 (n + 1)

end

end A044257.P17613343696678377251

/-! ## A044257.P3506138650040707206

`A342241(A342253(n+1))+A044637(n+1)`
-/

namespace A044257.P3506138650040707206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A342253 (n + 1)).toNat + A044637 (n + 1)

end

end A044257.P3506138650040707206

/-! ## A044257.P615701323466128324

`A044637(n+1)+A007913(A085986(n+1))`
-/

namespace A044257.P615701323466128324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044637 (n + 1) + A007913 (A085986 (n + 1)).toNat

end

end A044257.P615701323466128324

/-! ## A044257.P14616023394143780195

`A054977(A253644(n+1))+A044637(n+1)`
-/

namespace A044257.P14616023394143780195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A253644 (n + 1)).toNat + A044637 (n + 1)

end

end A044257.P14616023394143780195

/-! ## A044257.P1824068944247858518

`A044637(n+1)-A057428(∑[A061554(n)])`
-/

namespace A044257.P1824068944247858518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044637 (n + 1) - A057428 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044257.P1824068944247858518

/-!
# A044258: Numbers n such that string 0,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044258, there is no canonical definition to state claims against.
-/

/-! ## A044258.P12178044397508204764

`A054977((n+5)²)+A044638(n+1)`
-/

namespace A044258.P12178044397508204764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 ((n + 5) ^ 2) + A044638 (n + 1)

end

end A044258.P12178044397508204764

/-! ## A044258.P10883003361410319173

`A325989(A226040(abs(1-n)))+A044638(n+1)`
-/

namespace A044258.P10883003361410319173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (A226040 |1 - (n : ℤ)|.toNat).toNat + A044638 (n + 1)

end

end A044258.P10883003361410319173

/-! ## A044258.P14340347740376423758

`A074206(A023262(abs(1-n)+1))+A044638(n+1)`
-/

namespace A044258.P14340347740376423758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A023262 (|1 - (n : ℤ)| + 1).toNat).toNat + A044638 (n + 1)

end

end A044258.P14340347740376423758

/-! ## A044258.P16844180526713475039

`A044638(n+1)+A325989(A226040(n))²`
-/

namespace A044258.P16844180526713475039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044638 (n + 1) + A325989 (A226040 n).toNat ^ 2

end

end A044258.P16844180526713475039

/-! ## A044258.P7162891288978204863

`A329888(A074822(n+1))+A044638(n+1)`
-/

namespace A044258.P7162891288978204863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A074822 (n + 1)).toNat + A044638 (n + 1)

end

end A044258.P7162891288978204863

/-! ## A044258.P617508265556407143

`A304720(A304721(n+1))+A044638(n+1)`
-/

namespace A044258.P617508265556407143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304720 (A304721 (n + 1)).toNat + A044638 (n + 1)

end

end A044258.P617508265556407143

/-! ## A044258.P277114301184789587

`A044638(n+1)-A033999(A224499(n+1))`
-/

namespace A044258.P277114301184789587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044638 (n + 1) - A033999 (A224499 (n + 1)).toNat

end

end A044258.P277114301184789587

/-! ## A044258.P6215469467196159328

`A325989(A226040(n)+2)+A044638(n+1)`
-/

namespace A044258.P6215469467196159328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (A226040 n + 2).toNat + A044638 (n + 1)

end

end A044258.P6215469467196159328

/-!
# A044259: Numbers n such that string 0,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044259, there is no canonical definition to state claims against.
-/

/-! ## A044259.P13010268972561913765

`A044639(n+1)-A057428(A240027(n))`
-/

namespace A044259.P13010268972561913765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044639 (n + 1) - A057428 (A240027 n).toNat

end

end A044259.P13010268972561913765

/-! ## A044259.P9479014960607841443

`A044639(n+1)+A000035(A000355(n+1))`
-/

namespace A044259.P9479014960607841443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044639 (n + 1) + A000035 (A000355 (n + 1)).toNat

end

end A044259.P9479014960607841443

/-! ## A044259.P4154023417554862455

`A044639(n+1)+A000035(A080906(n+1))`
-/

namespace A044259.P4154023417554862455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044639 (n + 1) + A000035 (A080906 (n + 1)).toNat

end

end A044259.P4154023417554862455

/-! ## A044259.P7859203459479023642

`A044639(n+1)+A014963(A102478(n+1))`
-/

namespace A044259.P7859203459479023642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044639 (n + 1) + A014963 (A102478 (n + 1)).toNat

end

end A044259.P7859203459479023642

/-! ## A044259.P2452576337158066566

`A044639(n+1)+A014963(A005563(n+4))`
-/

namespace A044259.P2452576337158066566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044639 (n + 1) + A014963 (A005563 (n + 4)).toNat

end

end A044259.P2452576337158066566

/-! ## A044259.P11427204008408590555

`A057077(A000290(n+4))+A044639(n+1)`
-/

namespace A044259.P11427204008408590555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A000290 (n + 4)).toNat + A044639 (n + 1)

end

end A044259.P11427204008408590555

/-! ## A044259.P5652110591199177127

`(A044639(n+1)-A057428(A080906(n+1)))*A000034(2*n)`
-/

namespace A044259.P5652110591199177127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044639 (n + 1) - A057428 (A080906 (n + 1)).toNat) * A000034 (2 * n)

end

end A044259.P5652110591199177127

/-! ## A044259.P12239683310474628898

`A055457(A160239(n))+A044639(n+1)`
-/

namespace A044259.P12239683310474628898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (A160239 n).toNat + A044639 (n + 1)

end

end A044259.P12239683310474628898

/-! ## A044259.P4205187494508455529

`A319150(A319150(n))+A044639(n+1)`
-/

namespace A044259.P4205187494508455529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319150 (A319150 n).toNat + A044639 (n + 1)

end

end A044259.P4205187494508455529

/-! ## A044259.P3198689369345881022

`A325989(A226040(n))+A044639(n+1)`
-/

namespace A044259.P3198689369345881022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325989 (A226040 n).toNat + A044639 (n + 1)

end

end A044259.P3198689369345881022

/-!
# A044260: Numbers k such that string 1,0 occurs in the base 9 representation of k but not of k-1.

The programs for A044260, there is no canonical definition to state claims against.
-/

/-! ## A044260.P3062324637166198628

`filter[A043180(n+1), A366289(#)]`
-/

namespace A044260.P3062324637166198628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A044260.P3062324637166198628

/-! ## A044260.P5052855109399366544

`∩[A043180(n+1), A008591(n)]`
-/

namespace A044260.P5052855109399366544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P5052855109399366544

/-! ## A044260.P384480860451178487

`∩[A043180(n+1), A155504(n+1)]`
-/

namespace A044260.P384480860451178487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P384480860451178487

/-! ## A044260.P9391028613085294124

`∩[A043180(n+1), A261953(n)]`
-/

namespace A044260.P9391028613085294124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P9391028613085294124

/-! ## A044260.P6072378153833973301

`∩[A043180(n+1), A301291(n)]`
-/

namespace A044260.P6072378153833973301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P6072378153833973301

/-! ## A044260.P7766506074422245381

`∩[A043180(n+1), A301293(n)]`
-/

namespace A044260.P7766506074422245381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P7766506074422245381

/-! ## A044260.P626074154241308103

`∩[A043180(n+1), A312933(n)]`
-/

namespace A044260.P626074154241308103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P626074154241308103

/-! ## A044260.P15499848681266521106

`∩[A043180(n+1), A312941(n)]`
-/

namespace A044260.P15499848681266521106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312941 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P15499848681266521106

/-! ## A044260.P12389205943585441042

`∩[A043180(n+1), A312943(n)]`
-/

namespace A044260.P12389205943585441042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P12389205943585441042

/-! ## A044260.P7643290037155962523

`∩[A043180(n+1), A120740(n+1)]`
-/

namespace A044260.P7643290037155962523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P7643290037155962523

/-! ## A044260.P18081768167663465404

`∩[A043180(n+1), A130877(n+1)]`
-/

namespace A044260.P18081768167663465404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P18081768167663465404

/-! ## A044260.P15488688684330668517

`∩[A043180(n+1), A263941(n+1)]`
-/

namespace A044260.P15488688684330668517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P15488688684330668517

/-! ## A044260.P754676051761719502

`∩[A043180(n+1), A274406(n+1)]`
-/

namespace A044260.P754676051761719502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P754676051761719502

/-! ## A044260.P16508699742250649992

`∩[A043180(n+1), A228020(n+1)]`
-/

namespace A044260.P16508699742250649992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P16508699742250649992

/-! ## A044260.P14011820207604843238

`∩[A031193(n+1), A043180(n+1)]`
-/

namespace A044260.P14011820207604843238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P14011820207604843238

/-! ## A044260.P9950094216639591483

`∩[A043180(n+1), A008486(n)]`
-/

namespace A044260.P9950094216639591483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P9950094216639591483

/-! ## A044260.P11110422424726605412

`∩[A043180(n+1), A008585(n)]`
-/

namespace A044260.P11110422424726605412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P11110422424726605412

/-! ## A044260.P5356784073517088883

`∩[A043180(n+1), A140282(n)]`
-/

namespace A044260.P5356784073517088883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140282 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P5356784073517088883

/-! ## A044260.P10742494335275417552

`∩[A043180(n+1), A350666(n)]`
-/

namespace A044260.P10742494335275417552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350666 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P10742494335275417552

/-! ## A044260.P8475413917700614586

`∩[A043180(n+1), A204502(n+1)]`
-/

namespace A044260.P8475413917700614586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044260.P8475413917700614586

/-!
# A044261: Numbers k such that string 1,1 occurs in the base 9 representation of k but not of k-1.

The programs for A044261, there is no canonical definition to state claims against.
-/

/-! ## A044261.P14006823491315345457

`A004525(A044271(Δ[n²]))`
-/

namespace A044261.P14006823491315345457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A044271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A044261.P14006823491315345457

/-! ## A044261.P15630969969472898367

`record[A032742(A044271(n+1))]`
-/

namespace A044261.P15630969969472898367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044261.P15630969969472898367

/-! ## A044261.P9798020350216092518

`A004526(A044271(comp[2*n]))`
-/

namespace A044261.P9798020350216092518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044271 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A044261.P9798020350216092518

/-! ## A044261.P17535746627152201070

`A032742(A044271(2*n+1))`
-/

namespace A044261.P17535746627152201070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044271 (2 * n + 1)).toNat

end

end A044261.P17535746627152201070

/-! ## A044261.P6298397062534274658

`A004526(A044271(2*n+1)+1)`
-/

namespace A044261.P6298397062534274658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044271 (2 * n + 1) + 1).toNat

end

end A044261.P6298397062534274658

/-! ## A044261.P8172802843531039012

`A008619(A044271(2*n+1)-1)`
-/

namespace A044261.P8172802843531039012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A044271 (2 * n + 1) - 1).toNat

end

end A044261.P8172802843531039012

/-! ## A044261.P17945251897633139783

`A044271(2*n+1)/A326843(A065308(n+1))`
-/

namespace A044261.P17945251897633139783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044271 (2 * n + 1) : ℚ) / (A326843 (A065308 (n + 1)).toNat : ℚ)

end

end A044261.P17945251897633139783

/-! ## A044261.P4213146675799112957

`A044271(2*n+1)/A000005(A057749(n+1))`
-/

namespace A044261.P4213146675799112957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044271 (2 * n + 1) : ℚ) / (A000005 (A057749 (n + 1)).toNat : ℚ)

end

end A044261.P4213146675799112957

/-!
# A044262: Numbers n such that string 1,2 occurs in the base 9 representation of n but not of n-1.

The programs for A044262, there is no canonical definition to state claims against.
-/

/-! ## A044262.P18138063900406505390

`record[A025480(A044273(n+1))]`
-/

namespace A044262.P18138063900406505390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P18138063900406505390

/-! ## A044262.P8771686790974244801

`record[A142150(A044273(C(n+1, n)))]`
-/

namespace A044262.P8771686790974244801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A044273 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P8771686790974244801

/-! ## A044262.P18367586595678561088

`record[A142150(A044273(ceil((n+1)/2)))]`
-/

namespace A044262.P18367586595678561088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A044273 ⌈(n + 1 : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P18367586595678561088

/-! ## A044262.P12015273669974590125

`record[A032742(A044273(A008620(n)))]`
-/

namespace A044262.P12015273669974590125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044273 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P12015273669974590125

/-! ## A044262.P16249581718139936617

`record[A032742(A044273(A008621(n)))]`
-/

namespace A044262.P16249581718139936617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044273 (A008621 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P16249581718139936617

/-! ## A044262.P4620099359317384749

`record[A142150(A044273(n+1))]%A004771(n)²`
-/

namespace A044262.P4620099359317384749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A044273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004771 n ^ 2)

end

end A044262.P4620099359317384749

/-! ## A044262.P15589607293045472315

`record[A142150(A044273(n+1))%A044295(n+1)]`
-/

namespace A044262.P15589607293045472315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142150 (A044273 (n + 1)).toNat) (A044295 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P15589607293045472315

/-! ## A044262.P17561317593291182295

`record[A142150(A044273(n+1))]+A008683(72*n+32)`
-/

namespace A044262.P17561317593291182295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A044273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (72 * n + 32)

end

end A044262.P17561317593291182295

/-!
# A044263: Numbers k such that string 1,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044263, there is no canonical definition to state claims against.
-/

/-! ## A044263.P4959397602137582429

`record[A278537(A044275(n+1))]`
-/

namespace A044263.P4959397602137582429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044263.P4959397602137582429

/-! ## A044263.P7545119298610164837

`record[A038608(A044275(C(n+1, n)))]/2`
-/

namespace A044263.P7545119298610164837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A044275 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A044263.P7545119298610164837

/-! ## A044263.P8321669712841339644

`record[A038608(A044275(floor(n/2)+1))]/2`
-/

namespace A044263.P8321669712841339644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A044275 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A044263.P8321669712841339644

/-! ## A044263.P18000113709830497725

`record[A032742(A044275(A052938(n)))]`
-/

namespace A044263.P18000113709830497725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044275 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044263.P18000113709830497725

/-! ## A044263.P13628567597860028277

`A014682(record[A038608(A044275(n+1))])`
-/

namespace A044263.P13628567597860028277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A044275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044263.P13628567597860028277

/-! ## A044263.P12529022489556732048

`record[A032742(A044275(n+1)%A042896(n))]`
-/

namespace A044263.P12529022489556732048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.tmod (A044275 (n + 1)) (A042896 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044263.P12529022489556732048

/-!
# A044264: Numbers n such that string 1,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044264, there is no canonical definition to state claims against.
-/

/-! ## A044264.P14278677917731053482

`record[A025480(A044277(n+1))]`
-/

namespace A044264.P14278677917731053482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044264.P14278677917731053482

/-! ## A044264.P10929242930409095650

`record[A174571(A044303(n+1))]`
-/

namespace A044264.P10929242930409095650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A044303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044264.P10929242930409095650

/-! ## A044264.P5461300413193438914

`A044644(A077168(n))+1`
-/

namespace A044264.P5461300413193438914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044644 (A077168 n).toNat + 1

end

end A044264.P5461300413193438914

/-! ## A044264.P10058634273372011011

`A257646(A044644(n+1))`
-/

namespace A044264.P10058634273372011011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044644 (n + 1)).toNat

end

end A044264.P10058634273372011011

/-! ## A044264.P9510385234587530697

`A233583(A044644(n+1)+2)`
-/

namespace A044264.P9510385234587530697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044644 (n + 1) + 2).toNat

end

end A044264.P9510385234587530697

/-!
# A044265: Numbers n such that string 1,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044265, there is no canonical definition to state claims against.
-/

/-! ## A044265.P10299768518472992883

`record[A278529(A044279(n+1))]`
-/

namespace A044265.P10299768518472992883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P10299768518472992883

/-! ## A044265.P14400437902228592308

`record[A032742(A044279(-xor(n, -1)))]`
-/

namespace A044265.P14400437902228592308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044279 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P14400437902228592308

/-! ## A044265.P10426459323256596674

`record[A078898(A044279(A008619(n)))]`
-/

namespace A044265.P10426459323256596674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044279 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P10426459323256596674

/-! ## A044265.P2538458438037340924

`record[A032742(A044279(n+1))]^A033999(n)²`
-/

namespace A044265.P2538458438037340924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044279 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A044265.P2538458438037340924

/-! ## A044265.P6880463623428139730

`record[A032742(A344918(2*n)+A044659(n+1))]`
-/

namespace A044265.P6880463623428139730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A344918 (2 * n) + A044659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P6880463623428139730

/-!
# A044266: Numbers n such that string 1,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044266, there is no canonical definition to state claims against.
-/

/-! ## A044266.P8786335775547877031

`A113520(A044646(n+1)+2)`
-/

namespace A044266.P8786335775547877031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044646 (n + 1) + 2).toNat

end

end A044266.P8786335775547877031

/-! ## A044266.P13201719447727975974

`A044646(n+1)+A327450(n+1)!`
-/

namespace A044266.P13201719447727975974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044646 (n + 1) + (Nat.factorial (A327450 (n + 1)).toNat : ℤ)

end

end A044266.P13201719447727975974

/-! ## A044266.P1367687663433768809

`(A044646(n+1)+1)%A171643(3*n+4)`
-/

namespace A044266.P1367687663433768809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044646 (n + 1) + 1) (A171643 (3 * n + 4))

end

end A044266.P1367687663433768809

/-! ## A044266.P14068097950182578459

`A044646(n+1)+A000035(A188647(n))`
-/

namespace A044266.P14068097950182578459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044646 (n + 1) + A000035 (A188647 n).toNat

end

end A044266.P14068097950182578459

/-! ## A044266.P10384886224698549995

`A057427(A226717(n+1))+A044646(n+1)`
-/

namespace A044266.P10384886224698549995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A226717 (n + 1)).toNat + A044646 (n + 1)

end

end A044266.P10384886224698549995

/-!
# A044267: Numbers n such that string 1,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044267, there is no canonical definition to state claims against.
-/

/-! ## A044267.P13413085057188205456

`record[A032742(A044283(n+1))]`
-/

namespace A044267.P13413085057188205456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044267.P13413085057188205456

/-! ## A044267.P246094354368986348

`record[A057979(A044283(n+1)+1)]`
-/

namespace A044267.P246094354368986348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044283 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044267.P246094354368986348

/-! ## A044267.P10822556153695369524

`record[A027656(A044283(n+1)-2)]`
-/

namespace A044267.P10822556153695369524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A044283 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044267.P10822556153695369524

/-! ## A044267.P11472221298363317986

`record[A246277(A044283(A133310(n)))]`
-/

namespace A044267.P11472221298363317986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A044283 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044267.P11472221298363317986

/-! ## A044267.P9528285257629167204

`record[A174571(A044315(n+1))]`
-/

namespace A044267.P9528285257629167204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A044315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044267.P9528285257629167204

/-!
# A044268: Numbers n such that string 1,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044268, there is no canonical definition to state claims against.
-/

/-! ## A044268.P13224942623718170190

`record[A044285(n+1)/A077805(A044285(n+1))]`
-/

namespace A044268.P13224942623718170190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044285 (n + 1) : ℚ) / (A077805 (A044285 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P13224942623718170190

/-! ## A044268.P1780959704753259849

`record[A278537(A044285(n+1))]`
-/

namespace A044268.P1780959704753259849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P1780959704753259849

/-! ## A044268.P7297557091152819424

`record[A078898(A044285(C(n+1, n)))]`
-/

namespace A044268.P7297557091152819424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044285 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P7297557091152819424

/-! ## A044268.P2468383320537426941

`record[A078898(A044285(1-(n-2*n)))]`
-/

namespace A044268.P2468383320537426941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044285 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P2468383320537426941

/-! ## A044268.P8742045942716494766

`record[A025480(A044285(n+1))]%A044648(n+1)²`
-/

namespace A044268.P8742045942716494766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A044648 (n + 1) ^ 2)

end

end A044268.P8742045942716494766

/-!
# A044269: Numbers n such that string 2,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044269, there is no canonical definition to state claims against.
-/

/-! ## A044269.P10810753951841983323

`record[A278537(A044287(n+1))]`
-/

namespace A044269.P10810753951841983323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044269.P10810753951841983323

/-! ## A044269.P13121961399180070148

`∩[A043181(n+1), A376279(n+1)]`
-/

namespace A044269.P13121961399180070148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044269.P13121961399180070148

/-! ## A044269.P3424187747301630908

`record[A057979(A044287(n+1)+1)]`
-/

namespace A044269.P3424187747301630908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044287 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044269.P3424187747301630908

/-! ## A044269.P12759779521870167540

`∩[A043181(n+1), A173978(n+1)]`
-/

namespace A044269.P12759779521870167540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044269.P12759779521870167540

/-! ## A044269.P4126254300465896276

`∩[A043181(n+1), A366290(n+1)]`
-/

namespace A044269.P4126254300465896276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044269.P4126254300465896276

/-!
# A044270: Numbers k such that string 2,1 occurs in the base 9 representation of k but not of k-1.

The programs for A044270, there is no canonical definition to state claims against.
-/

/-! ## A044270.P2191434527918675002

`record[A260739(A044289(n+1))]`
-/

namespace A044270.P2191434527918675002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044270.P2191434527918675002

/-! ## A044270.P7563157072788133607

`record[A057979(A044289(n+1)+1)]`
-/

namespace A044270.P7563157072788133607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044289 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044270.P7563157072788133607

/-! ## A044270.P10912567299701585312

`record[A003602(A044289(n+1)-3)+1]`
-/

namespace A044270.P10912567299701585312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044289 (n + 1) - 3).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044270.P10912567299701585312

/-! ## A044270.P16400425074158335278

`record[A174571(A044327(n+1))]`
-/

namespace A044270.P16400425074158335278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A044327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044270.P16400425074158335278

/-! ## A044270.P351745986277400784

`record[A174571(2*A044289(n+1))]`
-/

namespace A044270.P351745986277400784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A044289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044270.P351745986277400784

/-!
# A044271: Numbers n such that string 2,2 occurs in the base 9 representation of n but not of n-1.

The programs for A044271, there is no canonical definition to state claims against.
-/

/-! ## A044271.P13190570306887062196

`(A044291(Δ[n²])/2)%A326234(A044291(Δ[n²])/2)`
-/

namespace A044271.P13190570306887062196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)) (A326234 (SequenceMachineLib.roundAway ((A044291 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2)).toNat)

end

end A044271.P13190570306887062196

/-! ## A044271.P13778666432946125925

`A044291(Δ[n²])/2*A054024(A112998(n+1))`
-/

namespace A044271.P13778666432946125925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 * (A054024 (A112998 (n + 1)).toNat : ℚ)

end

end A044271.P13778666432946125925

/-! ## A044271.P17970926891798128633

`(A044291(Δ[n²])/2)%A249212(n+1)`
-/

namespace A044271.P17970926891798128633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)) (A249212 (n + 1))

end

end A044271.P17970926891798128633

/-! ## A044271.P4521944358223494518

`A000035(A120350(n+3))+A044291(Δ[n²])/2`
-/

namespace A044271.P4521944358223494518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (A120350 (n + 3)).toNat : ℚ) + (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A044271.P4521944358223494518

/-! ## A044271.P12043727566544938811

`A358842((2*n+3)²)+A044291(Δ[n²])/2`
-/

namespace A044271.P12043727566544938811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358842 ((2 * n + 3) ^ 2) : ℚ) + (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A044271.P12043727566544938811

/-! ## A044271.P11325591069047560438

`A044291(Δ[n²])/A088873(A087880(n+1))`
-/

namespace A044271.P11325591069047560438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A088873 (A087880 (n + 1)).toNat : ℚ)

end

end A044271.P11325591069047560438

/-! ## A044271.P15818029055137784390

`A044291(Δ[n²])/2*A032742(A095073(n+1))`
-/

namespace A044271.P15818029055137784390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 * (A032742 (A095073 (n + 1)).toNat : ℚ)

end

end A044271.P15818029055137784390

/-! ## A044271.P15369480333650272369

`A044291(2*n+1)/A035214(∑[n])`
-/

namespace A044271.P15369480333650272369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 (2 * n + 1) : ℚ) / (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A044271.P15369480333650272369

/-! ## A044271.P8798156043420310068

`A044291(Δ[n²])/A000034(A061068(n+1))`
-/

namespace A044271.P8798156043420310068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A000034 (A061068 (n + 1)).toNat : ℚ)

end

end A044271.P8798156043420310068

/-! ## A044271.P14926705434681121638

`A028310(A044291(Δ[n²])/2)`
-/

namespace A044271.P14926705434681121638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A044271.P14926705434681121638

/-! ## A044271.P8674282304917197334

`A044291(Δ[n²])/A020639(A294873(2*(n+1)))`
-/

namespace A044271.P8674282304917197334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A020639 (A294873 (2 * (n + 1))).toNat : ℚ)

end

end A044271.P8674282304917197334

/-! ## A044271.P13173304910380125191

`A044291(Δ[n²])/A020639(A039720(2*(n+1)))`
-/

namespace A044271.P13173304910380125191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A020639 (A039720 (2 * (n + 1))).toNat : ℚ)

end

end A044271.P13173304910380125191

/-! ## A044271.P4092558947218445466

`A044291(Δ[n²])/A040001(2*(n+1)²)`
-/

namespace A044271.P4092558947218445466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A040001 (2 * (n + 1) ^ 2) : ℚ)

end

end A044271.P4092558947218445466

/-!
# A044272: Numbers k such that string 2,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044272, there is no canonical definition to state claims against.
-/

/-! ## A044272.P9196668564363830538

`record[A000217(A044293(n+1))%A044293(n+1)]`
-/

namespace A044272.P9196668564363830538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A044293 (n + 1)).toNat) (A044293 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P9196668564363830538

/-! ## A044272.P17718697314130080399

`record[A025480(A044293(n+1))]`
-/

namespace A044272.P17718697314130080399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P17718697314130080399

/-! ## A044272.P13898594738671041546

`record[A057979(A044293(n+1)+1)]`
-/

namespace A044272.P13898594738671041546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044293 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P13898594738671041546

/-! ## A044272.P8004925575934891951

`record[A001057(A044293(n+1)-1)]`
-/

namespace A044272.P8004925575934891951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A044293 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P8004925575934891951

/-! ## A044272.P4277869617173831712

`record[A158416(A044293(n+1)-2)]`
-/

namespace A044272.P4277869617173831712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A044293 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P4277869617173831712

/-! ## A044272.P1795153453706753321

`record[A032742(A044293(A052938(n)))]`
-/

namespace A044272.P1795153453706753321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044293 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P1795153453706753321

/-!
# A044273: Numbers n such that string 2,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044273, there is no canonical definition to state claims against.
-/

/-! ## A044273.P14466217049681656978

`record[A249122(A044295(n+1)+1)]`
-/

namespace A044273.P14466217049681656978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A044295 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044273.P14466217049681656978

/-! ## A044273.P7796098760392015277

`record[A142150(A044295(n+1))]`
-/

namespace A044273.P7796098760392015277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A044295 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044273.P7796098760392015277

/-! ## A044273.P13671811140076254950

`A123108(∩[A044295(n+1), A004277(n)])`
-/

namespace A044273.P13671811140076254950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044273.P13671811140076254950

/-! ## A044273.P11915117720437879689

`A103221(6*A044653(n+1))`
-/

namespace A044273.P11915117720437879689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A044653 (n + 1)).toNat

end

end A044273.P11915117720437879689

/-! ## A044273.P14706540785525235370

`A117910(6*A044653(n+1))`
-/

namespace A044273.P14706540785525235370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (6 * A044653 (n + 1)).toNat

end

end A044273.P14706540785525235370

/-!
# A044274: Numbers k such that the string 2,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044274, there is no canonical definition to state claims against.
-/

/-! ## A044274.P18034738891179376062

`record[A025480(A044297(n+1))]`
-/

namespace A044274.P18034738891179376062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044274.P18034738891179376062

/-! ## A044274.P16697961841557968426

`A044654(n+1)+A001222(A002231(n+1))`
-/

namespace A044274.P16697961841557968426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044654 (n + 1) + A001222 (A002231 (n + 1)).toNat

end

end A044274.P16697961841557968426

/-! ## A044274.P16730337764091010403

`A044654(n+1)+A035263(A054754(3*n+5))`
-/

namespace A044274.P16730337764091010403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044654 (n + 1) + A035263 (A054754 (3 * n + 5)).toNat

end

end A044274.P16730337764091010403

/-!
# A044275: Numbers n such that string 2,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044275, there is no canonical definition to state claims against.
-/

/-! ## A044275.P6013548348354239345

`∩[A044299(n+1), A004271(n)]/2`
-/

namespace A044275.P6013548348354239345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A044275.P6013548348354239345

/-! ## A044275.P12032048653315584304

`record[A278537(A044299(n+1))]`
-/

namespace A044275.P12032048653315584304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044275.P12032048653315584304

/-! ## A044275.P6307000047044518003

`A044655(n+1)+A097479(n+1)!`
-/

namespace A044275.P6307000047044518003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044655 (n + 1) + (Nat.factorial (A097479 (n + 1)).toNat : ℤ)

end

end A044275.P6307000047044518003

/-! ## A044275.P18048607612631428537

`A044655(n+1)+A000035(A052551(n))`
-/

namespace A044275.P18048607612631428537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044655 (n + 1) + A000035 (A052551 n).toNat

end

end A044275.P18048607612631428537

/-! ## A044275.P1461997105325906599

`A044655(n+1)+A001222(A020602(n+1))`
-/

namespace A044275.P1461997105325906599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044655 (n + 1) + A001222 (A020602 (n + 1)).toNat

end

end A044275.P1461997105325906599

/-!
# A044276: Numbers n such that string 2,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044276, there is no canonical definition to state claims against.
-/

/-! ## A044276.P15364580257648400836

`A044656(n+1)+A097479(n)!`
-/

namespace A044276.P15364580257648400836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044656 (n + 1) + (Nat.factorial (A097479 n).toNat : ℤ)

end

end A044276.P15364580257648400836

/-! ## A044276.P17292951493197756937

`A054977(A270613(n+1))+A044656(n+1)`
-/

namespace A044276.P17292951493197756937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A270613 (n + 1)).toNat + A044656 (n + 1)

end

end A044276.P17292951493197756937

/-! ## A044276.P8311530090742763790

`A097479(n*A097479(n))+A044656(n+1)`
-/

namespace A044276.P8311530090742763790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 ((n : ℤ) * A097479 n).toNat + A044656 (n + 1)

end

end A044276.P8311530090742763790

/-! ## A044276.P16238049350545977828

`A054977(A000070(n))+A044656(n+1)`
-/

namespace A044276.P16238049350545977828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000070 n).toNat + A044656 (n + 1)

end

end A044276.P16238049350545977828

/-!
# A044277: Numbers k such that the string 2,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044277, there is no canonical definition to state claims against.
-/

/-! ## A044277.P1887304795326138654

`record[A278529(A044303(n+1))]`
-/

namespace A044277.P1887304795326138654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P1887304795326138654

/-! ## A044277.P7273349036645889617

`record[A057979(A044303(n+1)+1)]`
-/

namespace A044277.P7273349036645889617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044303 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P7273349036645889617

/-! ## A044277.P5105017498708641068

`record[A003602(A044303(n+1)-1)]`
-/

namespace A044277.P5105017498708641068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044303 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P5105017498708641068

/-! ## A044277.P14346700474093435906

`record[A174571(2*A044303(n+1))]`
-/

namespace A044277.P14346700474093435906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A044303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P14346700474093435906

/-! ## A044277.P1761165234419002334

`A257646(A044657(n+1))`
-/

namespace A044277.P1761165234419002334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044657 (n + 1)).toNat

end

end A044277.P1761165234419002334

/-!
# A044278: Numbers k such that the string 3,0 occurs in the base 9 representation of k but not of k-1.

The programs for A044278, there is no canonical definition to state claims against.
-/

/-! ## A044278.P17677770251793838695

`record[A278529(A044305(n+1))]`
-/

namespace A044278.P17677770251793838695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P17677770251793838695

/-! ## A044278.P4136112333624611862

`record[A057979(A044305(n+1)+1)]`
-/

namespace A044278.P4136112333624611862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044305 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P4136112333624611862

/-! ## A044278.P5199356226132364424

`record[A027656(A044305(n+1)-2)]`
-/

namespace A044278.P5199356226132364424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A044305 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P5199356226132364424

/-! ## A044278.P10536770013669034696

`record[A110514(A044305(n+1)-2)]`
-/

namespace A044278.P10536770013669034696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A044305 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P10536770013669034696

/-! ## A044278.P5481029403490370485

`record[A032742(A044305(A052938(n)))]`
-/

namespace A044278.P5481029403490370485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044305 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P5481029403490370485

/-! ## A044278.P9153931910976049242

`record[A032742(A044305(A116966(n)))]`
-/

namespace A044278.P9153931910976049242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044305 (A116966 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P9153931910976049242

/-! ## A044278.P8061792127715858498

`record[A078898(A044305(n+1))]*A239700(n+1)`
-/

namespace A044278.P8061792127715858498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A239700 (n + 1)

end

end A044278.P8061792127715858498

/-! ## A044278.P7878533906406076442

`record[A044305(n+1)/A280560(A044313(n+1))]`
-/

namespace A044278.P7878533906406076442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044305 (n + 1) : ℚ) / (A280560 (A044313 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P7878533906406076442

/-! ## A044278.P13992919334361006710

`record[A078898(A044305(n+1)%A030091(n+1))]`
-/

namespace A044278.P13992919334361006710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A044305 (n + 1)) (A030091 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P13992919334361006710

/-! ## A044278.P12426338013330292039

`record[A078898(A044305(n+1))]+A008683(16*(n+1))`
-/

namespace A044278.P12426338013330292039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (16 * (n + 1))

end

end A044278.P12426338013330292039

/-!
# A044279: Numbers k such that string 3,1 occurs in the base 9 representation of k but not of k-1.

The programs for A044279, there is no canonical definition to state claims against.
-/

/-! ## A044279.P1004508507295301893

`record[A032742(A044307(n+1))]`
-/

namespace A044279.P1004508507295301893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044307 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044279.P1004508507295301893

/-! ## A044279.P7134162609614607493

`A344918(2*n)+A044659(n+1)`
-/

namespace A044279.P7134162609614607493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344918 (2 * n) + A044659 (n + 1)

end

end A044279.P7134162609614607493

/-! ## A044279.P3698439647872840910

`A044659(n+1)+A001222(A051962(n+1))`
-/

namespace A044279.P3698439647872840910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044659 (n + 1) + A001222 (A051962 (n + 1)).toNat

end

end A044279.P3698439647872840910

/-! ## A044279.P14341430497925082548

`A044659(n+1)+A001222(A064545(n+1))`
-/

namespace A044279.P14341430497925082548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044659 (n + 1) + A001222 (A064545 (n + 1)).toNat

end

end A044279.P14341430497925082548

/-! ## A044279.P17775790840195791998

`A010054(3*n+2)+A044659(n+1)+A010873(A051962(n+1))`
-/

namespace A044279.P17775790840195791998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) + (A044659 (n + 1) + A010873 (A051962 (n + 1)).toNat)

end

end A044279.P17775790840195791998

/-!
# A044280: Numbers k such that the string 3,2 occurs in the base 9 representation of k but not of k-1.

The programs for A044280, there is no canonical definition to state claims against.
-/

/-! ## A044280.P786687900557390309

`record[A000217(A044309(n+1))%A044309(n+1)]`
-/

namespace A044280.P786687900557390309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A044309 (n + 1)).toNat) (A044309 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044280.P786687900557390309

/-! ## A044280.P11065240228807849342

`record[A260739(A044309(n+1))]`
-/

namespace A044280.P11065240228807849342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044280.P11065240228807849342

/-! ## A044280.P10755995876868374080

`record[A057979(A044309(n+1)+1)]`
-/

namespace A044280.P10755995876868374080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044309 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044280.P10755995876868374080

/-! ## A044280.P10094483535061626301

`record[A001057(A044309(n+1)-1)]`
-/

namespace A044280.P10094483535061626301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A044309 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044280.P10094483535061626301

/-! ## A044280.P2373204585529304483

`A044660(n+1)+A151815(n)!`
-/

namespace A044280.P2373204585529304483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044660 (n + 1) + (Nat.factorial (A151815 n).toNat : ℤ)

end

end A044280.P2373204585529304483

/-!
# A044281: Numbers n such that string 3,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044281, there is no canonical definition to state claims against.
-/

/-! ## A044281.P9319483245180111516

`A175126(A044311(Δ[n²]))`
-/

namespace A044281.P9319483245180111516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A044311 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A044281.P9319483245180111516

/-! ## A044281.P12299729531669027351

`A175126(lcm(2, A044311(2*n+1)))`
-/

namespace A044281.P12299729531669027351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lcm 2 (A044311 (2 * n + 1)))

end

end A044281.P12299729531669027351

/-! ## A044281.P6759194417378169635

`A175126(record[A044311((lcm(64, n+1)/64)^(n%2))])`
-/

namespace A044281.P6759194417378169635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044311 (SequenceMachineLib.roundAway (((Nat.lcm 64 (n + 1) : ℚ) / 64) ^ (n % 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044281.P6759194417378169635

/-! ## A044281.P4695393324715557230

`A278537(record[A044311(n^(n%2))])`
-/

namespace A044281.P4695393324715557230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044311 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044281.P4695393324715557230

/-! ## A044281.P10158557352739322449

`record[A078898(A044311(n+1))]`
-/

namespace A044281.P10158557352739322449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044281.P10158557352739322449

/-! ## A044281.P15495861935093663216

`A004526(A044311(comp[2*n]))`
-/

namespace A044281.P15495861935093663216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044311 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A044281.P15495861935093663216

/-! ## A044281.P16317215335935078125

`A078898(A044311(record[xor(1, n)]))`
-/

namespace A044281.P16317215335935078125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044311 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A044281.P16317215335935078125

/-! ## A044281.P5814374200168628817

`A078898(A044311(abs(Δ[n²])))`
-/

namespace A044281.P5814374200168628817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044311 |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|.toNat).toNat

end

end A044281.P5814374200168628817

/-! ## A044281.P8372817696666179105

`A004525(A044311(2*n+1))`
-/

namespace A044281.P8372817696666179105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A044311 (2 * n + 1)).toNat

end

end A044281.P8372817696666179105

/-! ## A044281.P10378737149962317620

`A004526(A044311(2*n+1)+1)`
-/

namespace A044281.P10378737149962317620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A044311 (2 * n + 1) + 1).toNat

end

end A044281.P10378737149962317620

/-!
# A044282: Numbers n such that string 3,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044282, there is no canonical definition to state claims against.
-/

/-! ## A044282.P11949978933853705680

`record[A093178(A044313(n+1)+1)-1]/2`
-/

namespace A044282.P11949978933853705680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A044313 (n + 1) + 1).toNat - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A044282.P11949978933853705680

/-! ## A044282.P15844327838442702073

`record[A278529(A044313(n+1))]`
-/

namespace A044282.P15844327838442702073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044313 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P15844327838442702073

/-! ## A044282.P15256060840795845085

`record[A057979(A044313(n+1)+1)]`
-/

namespace A044282.P15256060840795845085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044313 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P15256060840795845085

/-! ## A044282.P2866500491348695146

`record[A027656(A044313(n+1)-2)]`
-/

namespace A044282.P2866500491348695146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A044313 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P2866500491348695146

/-! ## A044282.P18437223835090725468

`record[A110514(A044313(n+1)-2)]`
-/

namespace A044282.P18437223835090725468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A044313 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P18437223835090725468

/-! ## A044282.P10488929897504271069

`record[A044313(n+1)/A280560(A044305(n+1))]`
-/

namespace A044282.P10488929897504271069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044313 (n + 1) : ℚ) / (A280560 (A044305 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P10488929897504271069

/-! ## A044282.P2661942932318183358

`record[A078898(A044313(n+1)%A030091(n+1))]`
-/

namespace A044282.P2661942932318183358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A044313 (n + 1)) (A030091 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P2661942932318183358

/-!
# A044283: Numbers n such that string 3,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044283, there is no canonical definition to state claims against.
-/

/-! ## A044283.P18152276236590755970

`record[A032742(A044315(n+1))]`
-/

namespace A044283.P18152276236590755970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P18152276236590755970

/-! ## A044283.P9892779967838361837

`record[A057979(A044315(n+1)+1)]`
-/

namespace A044283.P9892779967838361837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044315 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P9892779967838361837

/-! ## A044283.P5961904625207571555

`record[A027656(A044315(n+1)-2)]`
-/

namespace A044283.P5961904625207571555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A044315 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P5961904625207571555

/-! ## A044283.P9987706984291966105

`record[A019303(A044315(n+1)-7)]`
-/

namespace A044283.P9987706984291966105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 (A044315 (n + 1) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P9987706984291966105

/-! ## A044283.P1482508645674223075

`record[A174571(2*A044315(n+1))]`
-/

namespace A044283.P1482508645674223075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A044315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P1482508645674223075

/-!
# A044284: Numbers n such that string 3,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044284, there is no canonical definition to state claims against.
-/

/-! ## A044284.P8905601745980666697

`record[A000217(A044317(n+1))%A044317(n+1)]`
-/

namespace A044284.P8905601745980666697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A044317 (n + 1)).toNat) (A044317 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044284.P8905601745980666697

/-! ## A044284.P8394022922907964339

`record[A025480(A044317(n+1))]`
-/

namespace A044284.P8394022922907964339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044317 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044284.P8394022922907964339

/-! ## A044284.P11199440185377017631

`record[A110514(A044317(n+1)-2)]`
-/

namespace A044284.P11199440185377017631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A044317 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044284.P11199440185377017631

/-! ## A044284.P6190312351049149473

`A044664(n+1)+A000034(8*n²)`
-/

namespace A044284.P6190312351049149473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044664 (n + 1) + A000034 (8 * n ^ 2)

end

end A044284.P6190312351049149473

/-! ## A044284.P4757224749591354438

`A044664(n+1)+A008966(A027642(n))`
-/

namespace A044284.P4757224749591354438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044664 (n + 1) + A008966 (A027642 n).toNat

end

end A044284.P4757224749591354438

/-!
# A044285: Numbers n such that string 3,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044285, there is no canonical definition to state claims against.
-/

/-! ## A044285.P476919085870874453

`record[A044319(n+1)/A077805(A044319(n+1))]`
-/

namespace A044285.P476919085870874453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044319 (n + 1) : ℚ) / (A077805 (A044319 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044285.P476919085870874453

/-! ## A044285.P13108568494456572931

`record[A032742(A044319(n+1))]`
-/

namespace A044285.P13108568494456572931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044285.P13108568494456572931

/-! ## A044285.P668220729065813698

`A044665(n+1)+A001221(A158089(n+1))`
-/

namespace A044285.P668220729065813698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044665 (n + 1) + A001221 (A158089 (n + 1)).toNat

end

end A044285.P668220729065813698

/-! ## A044285.P11270964987544690420

`A319021(A044284(n+1)-2)+A001221(A158089(n+1))`
-/

namespace A044285.P11270964987544690420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319021 (A044284 (n + 1) - 2).toNat + A001221 (A158089 (n + 1)).toNat

end

end A044285.P11270964987544690420

/-! ## A044285.P13439620635274554492

`A044665(n+1)+A001221(A100964(n+1))`
-/

namespace A044285.P13439620635274554492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044665 (n + 1) + A001221 (A100964 (n + 1)).toNat

end

end A044285.P13439620635274554492

/-!
# A044286: Numbers k such that the string 3,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044286, there is no canonical definition to state claims against.
-/

/-! ## A044286.P5097610443118748196

`A044666(n+1)+A042974(A094816(n))`
-/

namespace A044286.P5097610443118748196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044666 (n + 1) + A042974 (A094816 n).toNat

end

end A044286.P5097610443118748196

/-! ## A044286.P9119438727775155752

`A044666(n+1)+A007318(A185284(n))`
-/

namespace A044286.P9119438727775155752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044666 (n + 1) + A007318 (A185284 n).toNat

end

end A044286.P9119438727775155752

/-! ## A044286.P1434104953358927424

`A044666(n+1)+A001511(A069127(n+1))`
-/

namespace A044286.P1434104953358927424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044666 (n + 1) + A001511 (A069127 (n + 1)).toNat

end

end A044286.P1434104953358927424

/-! ## A044286.P7963961459111505428

`A044666(n+1)+A001055(A069802(n+5))`
-/

namespace A044286.P7963961459111505428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044666 (n + 1) + A001055 (A069802 (n + 5)).toNat

end

end A044286.P7963961459111505428

/-! ## A044286.P2008573828353487627

`A044666(n+1)-A057428(A051965(n+1))`
-/

namespace A044286.P2008573828353487627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044666 (n + 1) - A057428 (A051965 (n + 1)).toNat

end

end A044286.P2008573828353487627

/-!
# A044287: Numbers n such that string 4,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044287, there is no canonical definition to state claims against.
-/

/-! ## A044287.P5964244054625190369

`record[A078898(A044323(n+1))]`
-/

namespace A044287.P5964244054625190369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044287.P5964244054625190369

/-! ## A044287.P8350156664760937693

`∩[A043183(n+1), A376279(n+1)]`
-/

namespace A044287.P8350156664760937693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044287.P8350156664760937693

/-! ## A044287.P4283651980374554868

`A044667(n+1)+A001222(A093902(n+1))`
-/

namespace A044287.P4283651980374554868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044667 (n + 1) + A001222 (A093902 (n + 1)).toNat

end

end A044287.P4283651980374554868

/-! ## A044287.P11613849570402132022

`A044667(n+1)+A001222(A104043(n+1))`
-/

namespace A044287.P11613849570402132022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044667 (n + 1) + A001222 (A104043 (n + 1)).toNat

end

end A044287.P11613849570402132022

/-! ## A044287.P9492097774203466986

`A044667(n+1)-A057428(A046609(2*n+5))`
-/

namespace A044287.P9492097774203466986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044667 (n + 1) - A057428 (A046609 (2 * n + 5)).toNat

end

end A044287.P9492097774203466986

/-!
# A044288: Numbers n such that string 4,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044288, there is no canonical definition to state claims against.
-/

/-! ## A044288.P7087949679186684537

`record[A325563(A044325(n+1))]`
-/

namespace A044288.P7087949679186684537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A044325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044288.P7087949679186684537

/-! ## A044288.P486302835663248602

`A044668(n+1)+A001222(A117528(n+1))`
-/

namespace A044288.P486302835663248602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044668 (n + 1) + A001222 (A117528 (n + 1)).toNat

end

end A044288.P486302835663248602

/-! ## A044288.P8775150019854954893

`A044668(n+1)+A001222(A346023(n+1))`
-/

namespace A044288.P8775150019854954893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044668 (n + 1) + A001222 (A346023 (n + 1)).toNat

end

end A044288.P8775150019854954893

/-! ## A044288.P345140637811175536

`(A044668(n+1)+1)%A034302(3*n+5)`
-/

namespace A044288.P345140637811175536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044668 (n + 1) + 1) (A034302 (3 * n + 5))

end

end A044288.P345140637811175536

/-! ## A044288.P8322711438113211917

`A044668(n+1)+A003557(A115560(n+1))`
-/

namespace A044288.P8322711438113211917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044668 (n + 1) + A003557 (A115560 (n + 1)).toNat

end

end A044288.P8322711438113211917

/-!
# A044289: Numbers n such that string 4,2 occurs in the base 9 representation of n but not of n-1.

The programs for A044289, there is no canonical definition to state claims against.
-/

/-! ## A044289.P3884813560389390316

`record[A000217(A044327(n+1))%A044327(n+1)]`
-/

namespace A044289.P3884813560389390316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A044327 (n + 1)).toNat) (A044327 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P3884813560389390316

/-! ## A044289.P9253958583139281145

`record[A032742(A044327(n+1))]`
-/

namespace A044289.P9253958583139281145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P9253958583139281145

/-! ## A044289.P12510114424404651123

`record[A057979(A044327(n+1)+1)]`
-/

namespace A044289.P12510114424404651123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044327 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P12510114424404651123

/-! ## A044289.P8272408690556302728

`record[A003602(A044327(n+1)-1)]`
-/

namespace A044289.P8272408690556302728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044327 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P8272408690556302728

/-! ## A044289.P2261755587803140212

`record[A174571(2*A044327(n+1))]`
-/

namespace A044289.P2261755587803140212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A044327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P2261755587803140212

/-!
# A044290: Numbers k such that the string 4,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044290, there is no canonical definition to state claims against.
-/

/-! ## A044290.P10008019043428067236

`record[A025480(A044329(n+1))]`
-/

namespace A044290.P10008019043428067236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044329 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044290.P10008019043428067236

/-! ## A044290.P15170580306796764799

`A044670(n+1)+A001222(A162353(n+1))`
-/

namespace A044290.P15170580306796764799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044670 (n + 1) + A001222 (A162353 (n + 1)).toNat

end

end A044290.P15170580306796764799

/-! ## A044290.P16289644098360867155

`A329316(A329316(2*n))+A044670(n+1)`
-/

namespace A044290.P16289644098360867155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329316 (A329316 (2 * n)).toNat + A044670 (n + 1)

end

end A044290.P16289644098360867155

/-! ## A044290.P4047159033471340778

`A089723(A066401(2*n+5))+A044670(n+1)`
-/

namespace A044290.P4047159033471340778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A066401 (2 * n + 5)).toNat + A044670 (n + 1)

end

end A044290.P4047159033471340778

/-! ## A044290.P8995515806834627980

`A113484(A044670(n+1))`
-/

namespace A044290.P8995515806834627980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044670 (n + 1)).toNat

end

end A044290.P8995515806834627980

/-!
# A044291: Numbers k such that the string 4,4 occurs in the base 9 representation of k but not of k-1.

The programs for A044291, there is no canonical definition to state claims against.
-/

/-! ## A044291.P5280370715241081609

`A044672(n+1)-A242530(A059474(n))`
-/

namespace A044291.P5280370715241081609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044672 (n + 1) - A242530 (A059474 n).toNat

end

end A044291.P5280370715241081609

/-! ## A044291.P1992410141023128695

`A008615(3*A044632(2*n+1))-A242530(A059474(n))`
-/

namespace A044291.P1992410141023128695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A044632 (2 * n + 1)).toNat - A242530 (A059474 n).toNat

end

end A044291.P1992410141023128695

/-!
# A044292: Numbers k such that the string 4,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044292, there is no canonical definition to state claims against.
-/

/-! ## A044292.P9685769909992258600

`record[A054576(A044253(n+2))]`
-/

namespace A044292.P9685769909992258600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A044253 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044292.P9685769909992258600

/-! ## A044292.P1472192105709304410

`A310444(A044296(n+1))%A044297(n+1)`
-/

namespace A044292.P1472192105709304410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310444 (A044296 (n + 1)).toNat) (A044297 (n + 1))

end

end A044292.P1472192105709304410

/-! ## A044292.P3873824916773269228

`A044673(n+1)-A127886(A075324(3*n+2))`
-/

namespace A044292.P3873824916773269228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044673 (n + 1) - A127886 (A075324 (3 * n + 2)).toNat

end

end A044292.P3873824916773269228

/-!
# A044293: Numbers n such that string 4,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044293, there is no canonical definition to state claims against.
-/

/-! ## A044293.P8267545690411021569

`A008611(3*A044673(n+1))`
-/

namespace A044293.P8267545690411021569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A044673 (n + 1)).toNat

end

end A044293.P8267545690411021569

/-! ## A044293.P8889453763583561796

`A008620(3*A044673(n+1))`
-/

namespace A044293.P8889453763583561796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A044673 (n + 1)).toNat

end

end A044293.P8889453763583561796

/-! ## A044293.P4974297619478898975

`A008611(lcm(3, A044673(n+1)))`
-/

namespace A044293.P4974297619478898975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.lcm 3 (A044673 (n + 1)))

end

end A044293.P4974297619478898975

/-! ## A044293.P8126263434032339246

`A044673(n+1)+A001222(A227613(n+1))`
-/

namespace A044293.P8126263434032339246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044673 (n + 1) + A001222 (A227613 (n + 1)).toNat

end

end A044293.P8126263434032339246

/-! ## A044293.P9818274158419314097

`A044673(n+1)-A318656(A269784(n+1))`
-/

namespace A044293.P9818274158419314097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044673 (n + 1) - A318656 (A269784 (n + 1)).toNat

end

end A044293.P9818274158419314097

/-!
# A044294: Numbers n such that string 4,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044294, there is no canonical definition to state claims against.
-/

/-! ## A044294.P12353987771457911650

`(A044674(n+1)+1)%A244074(3*n+4)`
-/

namespace A044294.P12353987771457911650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044674 (n + 1) + 1) (A244074 (3 * n + 4))

end

end A044294.P12353987771457911650

/-! ## A044294.P6869055824868823409

`A049559(A087980(n+1))+A044674(n+1)`
-/

namespace A044294.P6869055824868823409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049559 (A087980 (n + 1)).toNat + A044674 (n + 1)

end

end A044294.P6869055824868823409

/-! ## A044294.P12107113482026716273

`A044674(n+1)+A000035(A185005(n+1))`
-/

namespace A044294.P12107113482026716273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044674 (n + 1) + A000035 (A185005 (n + 1)).toNat

end

end A044294.P12107113482026716273

/-! ## A044294.P17063793040978347887

`A044674(n+1)+A000035(A185006(n+1))`
-/

namespace A044294.P17063793040978347887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044674 (n + 1) + A000035 (A185006 (n + 1)).toNat

end

end A044294.P17063793040978347887

/-! ## A044294.P10985257889024585828

`A044674(n+1)+A000035(A185007(n+1))`
-/

namespace A044294.P10985257889024585828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044674 (n + 1) + A000035 (A185007 (n + 1)).toNat

end

end A044294.P10985257889024585828

/-!
# A044295: Numbers n such that string 4,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044295, there is no canonical definition to state claims against.
-/

/-! ## A044295.P8318831726706263531

`A296066(A044724(2*n+5))+A044675(n+1)`
-/

namespace A044295.P8318831726706263531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296066 (A044724 (2 * n + 5)).toNat + A044675 (n + 1)

end

end A044295.P8318831726706263531

/-! ## A044295.P7819662547909914974

`A284639(A097050(n))+A044675(n+1)`
-/

namespace A044295.P7819662547909914974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284639 (A097050 n).toNat + A044675 (n + 1)

end

end A044295.P7819662547909914974

/-! ## A044295.P16534810533636832597

`A055396(A033845(n+1))+A044675(n+1)`
-/

namespace A044295.P16534810533636832597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A033845 (n + 1)).toNat + A044675 (n + 1)

end

end A044295.P16534810533636832597

/-! ## A044295.P15441829590512415908

`A291448(2*n)+A044675(n+1)`
-/

namespace A044295.P15441829590512415908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291448 (2 * n) + A044675 (n + 1)

end

end A044295.P15441829590512415908

/-! ## A044295.P16988546521959789862

`A373403(2*(n+1))+A044675(n+1)`
-/

namespace A044295.P16988546521959789862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (2 * (n + 1)) + A044675 (n + 1)

end

end A044295.P16988546521959789862

/-!
# A044296: Numbers n such that string 5,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044296, there is no canonical definition to state claims against.
-/

/-! ## A044296.P2839665347290598205

`∩[A043184(n+1), A376279(n+1)]`
-/

namespace A044296.P2839665347290598205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044296.P2839665347290598205

/-! ## A044296.P14024673015826798532

`(A044676(n+1)+1)%A096011(n)²`
-/

namespace A044296.P14024673015826798532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044676 (n + 1) + 1) (A096011 n ^ 2)

end

end A044296.P14024673015826798532

/-! ## A044296.P3955280682029820934

`A044676(n+1)+A006519(A109861(n+1))`
-/

namespace A044296.P3955280682029820934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044676 (n + 1) + A006519 (A109861 (n + 1)).toNat

end

end A044296.P3955280682029820934

/-! ## A044296.P12834115669602862768

`A093178(A333101(n+1))+A044676(n+1)`
-/

namespace A044296.P12834115669602862768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A333101 (n + 1)).toNat + A044676 (n + 1)

end

end A044296.P12834115669602862768

/-! ## A044296.P15326336676456791511

`∩[A043184(n+1), A173978(n+1)]`
-/

namespace A044296.P15326336676456791511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044296.P15326336676456791511

/-!
# A044297: Numbers k such that the string 5,1 occurs in the base 9 representation of k but not of k-1.

The programs for A044297, there is no canonical definition to state claims against.
-/

/-! ## A044297.P1618602961626540254

`A057979((2*n)²)+A044677(n+1)`
-/

namespace A044297.P1618602961626540254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ((2 * n) ^ 2) + A044677 (n + 1)

end

end A044297.P1618602961626540254

/-! ## A044297.P7571883307032959853

`A103587(2*n+1)+A044677(n+1)`
-/

namespace A044297.P7571883307032959853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103587 (2 * n + 1) + A044677 (n + 1)

end

end A044297.P7571883307032959853

/-! ## A044297.P14580546516250389911

`A044677(n+1)+A014963(A091014(n))`
-/

namespace A044297.P14580546516250389911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044677 (n + 1) + A014963 (A091014 n).toNat

end

end A044297.P14580546516250389911

/-! ## A044297.P7807777223248928149

`A044677(n+1)+A001222(A272387(n+1))`
-/

namespace A044297.P7807777223248928149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044677 (n + 1) + A001222 (A272387 (n + 1)).toNat

end

end A044297.P7807777223248928149

/-!
# A044298: Numbers k such that the string 5,2 occurs in the base 9 representation of k but not of k-1.

The programs for A044298, there is no canonical definition to state claims against.
-/

/-! ## A044298.P598608714136417396

`A044678(n+1)+A000034(A002939(n))`
-/

namespace A044298.P598608714136417396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044678 (n + 1) + A000034 (A002939 n).toNat

end

end A044298.P598608714136417396

/-! ## A044298.P5877230458931015603

`A057427(A175043(n))+A044678(n+1)`
-/

namespace A044298.P5877230458931015603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A175043 n).toNat + A044678 (n + 1)

end

end A044298.P5877230458931015603

/-! ## A044298.P15438686128742156067

`A057427(A271004(n))+A044678(n+1)`
-/

namespace A044298.P15438686128742156067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A271004 n).toNat + A044678 (n + 1)

end

end A044298.P15438686128742156067

/-! ## A044298.P5993789209086960100

`A002517(A044297(n+1))%A175043(n)²`
-/

namespace A044298.P5993789209086960100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002517 (A044297 (n + 1)).toNat) (A175043 n ^ 2)

end

end A044298.P5993789209086960100

/-! ## A044298.P498111137045094282

`A057427(∑[A082137(n)])+A044678(n+1)`
-/

namespace A044298.P498111137045094282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A044678 (n + 1)

end

end A044298.P498111137045094282

/-! ## A044298.P6916376209182480491

`A002517(A044297(n+1))*A225246(∑[n+1])`
-/

namespace A044298.P6916376209182480491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A044297 (n + 1)).toNat * A225246 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044298.P6916376209182480491

/-!
# A044299: Numbers k such that the string 5,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044299, there is no canonical definition to state claims against.
-/

/-! ## A044299.P5063073478021692624

`A044679(n+1)+gcd(2, A249819(n+1))`
-/

namespace A044299.P5063073478021692624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044679 (n + 1) + (Int.gcd 2 (A249819 (n + 1)) : ℤ)

end

end A044299.P5063073478021692624

/-! ## A044299.P4358893605321172838

`A044679(n+1)+A000001(A086519(n))`
-/

namespace A044299.P4358893605321172838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044679 (n + 1) + A000001 (A086519 n).toNat

end

end A044299.P4358893605321172838

/-! ## A044299.P8886521146991099870

`A054977(A175772(n))+A044679(n+1)`
-/

namespace A044299.P8886521146991099870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A175772 n).toNat + A044679 (n + 1)

end

end A044299.P8886521146991099870

/-! ## A044299.P9794614034820013836

`A054977(A251072(n))+A044679(n+1)`
-/

namespace A044299.P9794614034820013836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A251072 n).toNat + A044679 (n + 1)

end

end A044299.P9794614034820013836

/-! ## A044299.P2317584300090091466

`A089026(A025475(n+1))+A044679(n+1)`
-/

namespace A044299.P2317584300090091466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A025475 (n + 1)).toNat + A044679 (n + 1)

end

end A044299.P2317584300090091466

/-! ## A044299.P17619817290539996513

`A044679(n+1)+A001222(A127430(n+1))`
-/

namespace A044299.P17619817290539996513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044679 (n + 1) + A001222 (A127430 (n + 1)).toNat

end

end A044299.P17619817290539996513

/-! ## A044299.P1932283391309108786

`A044679(n+1)+A040858(A249819(n+1))`
-/

namespace A044299.P1932283391309108786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044679 (n + 1) + A040858 (A249819 (n + 1)).toNat

end

end A044299.P1932283391309108786

/-! ## A044299.P14093022495200539192

`A044679(n+1)+A008683(2*A086519(n))`
-/

namespace A044299.P14093022495200539192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044679 (n + 1) + A008683 (2 * A086519 n).toNat

end

end A044299.P14093022495200539192

