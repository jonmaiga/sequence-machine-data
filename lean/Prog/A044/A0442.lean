import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A044200: Numbers n such that string 1,5 occurs in the base 8 representation of n but not of n-1.

The programs for A044200, there is no canonical definition to state claims against.
-/

/-! ## A044200.P17143703912227733991

`record[A135997(A044226(1+n))]`
-/

namespace A044200.P17143703912227733991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A044226 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044200.P17143703912227733991

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

/-! ## A044200.P13771287952412005415

`A044580(A001221(2^(n+3))+n)+1`
-/

namespace A044200.P13771287952412005415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044580 (A001221 (2 ^ (n + 3)) + (n : ℤ)).toNat + 1

end

end A044200.P13771287952412005415

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

/-! ## A044202.P17518155280014473335

`A044582(n+1)+and(1, A181141(n+1))`
-/

namespace A044202.P17518155280014473335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) + Int.land 1 (A181141 (n + 1))

end

end A044202.P17518155280014473335

/-! ## A044202.P15306666870770274620

`A044582(1+n*(A054900(n)+1)^n)+1`
-/

namespace A044202.P15306666870770274620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (1 + (n : ℤ) * (A054900 n + 1) ^ n).toNat + 1

end

end A044202.P15306666870770274620

/-! ## A044202.P16587455117362722501

`A044582(n+1)+A001222(A066195(n))`
-/

namespace A044202.P16587455117362722501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) + A001222 (A066195 n).toNat

end

end A044202.P16587455117362722501

/-! ## A044202.P18166695901703562329

`A044582(n+1)-A057428(A257621(n))`
-/

namespace A044202.P18166695901703562329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) - A057428 (A257621 n).toNat

end

end A044202.P18166695901703562329

/-! ## A044202.P10359714295512247776

`A044582(n+1)-A057428(A069798(n+1))`
-/

namespace A044202.P10359714295512247776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044582 (n + 1) - A057428 (A069798 (n + 1)).toNat

end

end A044202.P10359714295512247776

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

/-! ## A044203.P6944725497806681227

`A044584(n+1)-A135481(A044584(n+1))`
-/

namespace A044203.P6944725497806681227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044584 (n + 1) - A135481 (A044584 (n + 1)).toNat

end

end A044203.P6944725497806681227

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

/-! ## A044204.P13096003099129143448

`A044584(n+1)+A001055(A054570(n))`
-/

namespace A044204.P13096003099129143448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044584 (n + 1) + A001055 (A054570 n).toNat

end

end A044204.P13096003099129143448

/-! ## A044204.P17406840432563355455

`A250131(A185315(n))+A044584(n+1)`
-/

namespace A044204.P17406840432563355455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250131 (A185315 n).toNat + A044584 (n + 1)

end

end A044204.P17406840432563355455

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

/-! ## A044205.P15056700090414196546

`A129760(A044586(1+n)+1)`
-/

namespace A044205.P15056700090414196546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044586 (1 + n) + 1).toNat

end

end A044205.P15056700090414196546

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

/-! ## A044206.P2191210494225768060

`A243109(A044587(1+n)+2)`
-/

namespace A044206.P2191210494225768060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044587 (1 + n) + 2).toNat

end

end A044206.P2191210494225768060

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

/-! ## A044207.P7256075514518113739

`A044588(1+n)-A135481(A044588(n+1))`
-/

namespace A044207.P7256075514518113739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044588 (1 + n) - A135481 (A044588 (n + 1)).toNat

end

end A044207.P7256075514518113739

/-! ## A044207.P10019280909916058170

`A129760(A044588(n+1)+1)`
-/

namespace A044207.P10019280909916058170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044588 (n + 1) + 1).toNat

end

end A044207.P10019280909916058170

/-! ## A044207.P6825245084141071699

`A352729(A044588(n+1))`
-/

namespace A044207.P6825245084141071699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044588 (n + 1)).toNat

end

end A044207.P6825245084141071699

/-! ## A044207.P8522861252326339373

`A113484(A044587(n+1))`
-/

namespace A044207.P8522861252326339373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044587 (n + 1)).toNat

end

end A044207.P8522861252326339373

/-!
# A044208: Numbers k such that string 2,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044208, there is no canonical definition to state claims against.
-/

/-! ## A044208.P937440852685382084

`A110699(A044588(n+1))`
-/

namespace A044208.P937440852685382084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044588 (n + 1)).toNat

end

end A044208.P937440852685382084

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

/-! ## A044209.P12529097178118651840

`A044590(n+1)-A135481(A044590(n+1))`
-/

namespace A044209.P12529097178118651840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044590 (n + 1) - A135481 (A044590 (n + 1)).toNat

end

end A044209.P12529097178118651840

/-! ## A044209.P12952321928622181152

`A129760(A044590(1+n)+1)`
-/

namespace A044209.P12952321928622181152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044590 (1 + n) + 1).toNat

end

end A044209.P12952321928622181152

/-! ## A044209.P9055882325704448757

`A241816(A044590(n+1))+1`
-/

namespace A044209.P9055882325704448757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044590 (n + 1)).toNat + 1

end

end A044209.P9055882325704448757

/-! ## A044209.P9450308016515682966

`A164020(A044589(n+1))`
-/

namespace A044209.P9450308016515682966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044589 (n + 1)).toNat

end

end A044209.P9450308016515682966

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

/-! ## A044211.P12117026672528969637

`A322018(or(1, A044592(1+n)))`
-/

namespace A044211.P12117026672528969637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322018 (Int.lor 1 (A044592 (1 + n))).toNat

end

end A044211.P12117026672528969637

/-! ## A044211.P6613923805282186288

`A129760(A044592(1+n)+1)`
-/

namespace A044211.P6613923805282186288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044592 (1 + n) + 1).toNat

end

end A044211.P6613923805282186288

/-! ## A044211.P9229767862981506865

`A044592(n+1)+1-A006519(A044592(n+1)+1)`
-/

namespace A044211.P9229767862981506865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044592 (n + 1) + 1 - A006519 (A044592 (n + 1) + 1).toNat

end

end A044211.P9229767862981506865

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

/-! ## A044213.P12233881515209271603

`A044594(n+1)+1-A006519(A044594(n+1)+1)`
-/

namespace A044213.P12233881515209271603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044594 (n + 1) + 1 - A006519 (A044594 (n + 1) + 1).toNat

end

end A044213.P12233881515209271603

/-! ## A044213.P16225063173417826865

`A164020(A044593(n+1))`
-/

namespace A044213.P16225063173417826865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044593 (n + 1)).toNat

end

end A044213.P16225063173417826865

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

/-! ## A044215.P6177349192885531075

`A129760(A044596(1+n)+1)`
-/

namespace A044215.P6177349192885531075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044596 (1 + n) + 1).toNat

end

end A044215.P6177349192885531075

/-! ## A044215.P3569442948305608486

`A352729(A044596(n+1))`
-/

namespace A044215.P3569442948305608486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044596 (n + 1)).toNat

end

end A044215.P3569442948305608486

/-!
# A044216: Numbers n such that string 3,5 occurs in the base 8 representation of n but not of n-1.

The programs for A044216, there is no canonical definition to state claims against.
-/

/-! ## A044216.P17276413086429159467

`A243109(A044597(1+n)+1)`
-/

namespace A044216.P17276413086429159467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044597 (1 + n) + 1).toNat

end

end A044216.P17276413086429159467

/-! ## A044216.P16119780212857938775

`A110699(A044596(n+1))`
-/

namespace A044216.P16119780212857938775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044596 (n + 1)).toNat

end

end A044216.P16119780212857938775

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

/-! ## A044217.P15089748555233147833

`A129760(A044598(1+n)+1)`
-/

namespace A044217.P15089748555233147833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044598 (1 + n) + 1).toNat

end

end A044217.P15089748555233147833

/-! ## A044217.P6232729564395019535

`A164020(A044597(n+1))`
-/

namespace A044217.P6232729564395019535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044597 (n + 1)).toNat

end

end A044217.P6232729564395019535

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

/-! ## A044219.P12521632470396846157

`A129760(A044600(1+n)+1)`
-/

namespace A044219.P12521632470396846157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044600 (1 + n) + 1).toNat

end

end A044219.P12521632470396846157

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

/-!
# A044220: Numbers k such that string 4,1 occurs in the base 8 representation of k but not of k-1.

The programs for A044220, there is no canonical definition to state claims against.
-/

/-! ## A044220.P6786258248291320167

`A339597(floor(A044601(1+n)/2))`
-/

namespace A044220.P6786258248291320167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339597 ⌊(A044601 (1 + n) : ℚ) / 2⌋.toNat

end

end A044220.P6786258248291320167

/-! ## A044220.P522361464203009131

`A339597(A044601(1+n))/2`
-/

namespace A044220.P522361464203009131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339597 (A044601 (1 + n)).toNat : ℚ) / 2

end

end A044220.P522361464203009131

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

/-! ## A044221.P14606257047508184008

`A129760(A044602(1+n)+1)`
-/

namespace A044221.P14606257047508184008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044602 (1 + n) + 1).toNat

end

end A044221.P14606257047508184008

/-! ## A044221.P14344401910491785797

`A044602(n+1)+1-A006519(A044602(n+1)+1)`
-/

namespace A044221.P14344401910491785797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044602 (n + 1) + 1 - A006519 (A044602 (n + 1) + 1).toNat

end

end A044221.P14344401910491785797

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

/-! ## A044225.P8701117729379709620

`A241816(A044606(1+n))+1`
-/

namespace A044225.P8701117729379709620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044606 (1 + n)).toNat + 1

end

end A044225.P8701117729379709620

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

/-! ## A044227.P5668800270510174339

`A352729(A044608(1+n))`
-/

namespace A044227.P5668800270510174339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044608 (1 + n)).toNat

end

end A044227.P5668800270510174339

/-! ## A044227.P10999995744799126511

`A164020(A044607(n+1))`
-/

namespace A044227.P10999995744799126511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044607 (n + 1)).toNat

end

end A044227.P10999995744799126511

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

/-! ## A044229.P6318272325470794847

`A164020(A044609(n+1))`
-/

namespace A044229.P6318272325470794847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A044609 (n + 1)).toNat

end

end A044229.P6318272325470794847

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

/-! ## A044231.P3173869334956179995

`A129760(A044612(1+n)+1)`
-/

namespace A044231.P3173869334956179995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044612 (1 + n) + 1).toNat

end

end A044231.P3173869334956179995

/-! ## A044231.P11757604887793691416

`A352729(A044612(n+1))`
-/

namespace A044231.P11757604887793691416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044612 (n + 1)).toNat

end

end A044231.P11757604887793691416

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

/-! ## A044232.P915968392897932590

`A044612(n+1)+A000272(A287764(n+1))`
-/

namespace A044232.P915968392897932590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044612 (n + 1) + A000272 (A287764 (n + 1)).toNat

end

end A044232.P915968392897932590

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

/-! ## A044233.P1139485468126095972

`A044614(1+n)-A135481(A044614(n+1))`
-/

namespace A044233.P1139485468126095972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044614 (1 + n) - A135481 (A044614 (n + 1)).toNat

end

end A044233.P1139485468126095972

/-! ## A044233.P11492556173487077386

`A129760(A044614(n+1)+1)`
-/

namespace A044233.P11492556173487077386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044614 (n + 1) + 1).toNat

end

end A044233.P11492556173487077386

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

/-! ## A044235.P16168892635268861218

`A129760(A044616(1+n)+1)`
-/

namespace A044235.P16168892635268861218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044616 (1 + n) + 1).toNat

end

end A044235.P16168892635268861218

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

/-!
# A044236: Numbers k such that string 6,1 occurs in the base 8 representation of k but not of k-1.

The programs for A044236, there is no canonical definition to state claims against.
-/

/-! ## A044236.P16778019451409373972

`A241816(A044617(1+n)+1)`
-/

namespace A044236.P16778019451409373972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044617 (1 + n) + 1).toNat

end

end A044236.P16778019451409373972

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

/-! ## A044237.P7948621203706387102

`A241816(A044618(1+n))+1`
-/

namespace A044237.P7948621203706387102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044618 (1 + n)).toNat + 1

end

end A044237.P7948621203706387102

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

/-!
# A044238: Numbers k such that string 6,3 occurs in the base 8 representation of k but not of k-1.

The programs for A044238, there is no canonical definition to state claims against.
-/

/-! ## A044238.P4771130077102302448

`A243109(A044619(1+n)+2)`
-/

namespace A044238.P4771130077102302448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044619 (1 + n) + 2).toNat

end

end A044238.P4771130077102302448

/-! ## A044238.P7786819525864041159

`record[A028903(A044395(1+n))]`
-/

namespace A044238.P7786819525864041159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A044395 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044238.P7786819525864041159

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

/-! ## A044240.P7045291701022543382

`A257646(A044620(n+1))`
-/

namespace A044240.P7045291701022543382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044620 (n + 1)).toNat

end

end A044240.P7045291701022543382

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

/-! ## A044242.P16799522276915851893

`or(a(n-1)+64, A001221(A128089(n+1)))` with `a(0)=55`
-/

namespace A044242.P16799522276915851893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [55] fun n a =>
  Int.lor (a (n - 1) + 64) (A001221 (A128089 (n + 1)).toNat)

end

end A044242.P16799522276915851893

/-! ## A044242.P16253682111787696712

`A046667(A296185(n+1))`
-/

namespace A044242.P16253682111787696712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A296185 (n + 1)).toNat

end

end A044242.P16253682111787696712

/-! ## A044242.P7487297200637149168

`A285712(A063354(n+3))`
-/

namespace A044242.P7487297200637149168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A063354 (n + 3)).toNat

end

end A044242.P7487297200637149168

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

/-! ## A044243.P2691265395428974657

`A129760(A044624(1+n)+1)`
-/

namespace A044243.P2691265395428974657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044624 (1 + n) + 1).toNat

end

end A044243.P2691265395428974657

/-! ## A044243.P9676682473628372489

`A352729(A044624(n+1))`
-/

namespace A044243.P9676682473628372489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352729 (A044624 (n + 1)).toNat

end

end A044243.P9676682473628372489

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

/-!
# A044244: Numbers n such that string 7,1 occurs in the base 8 representation of n but not of n-1.

The programs for A044244, there is no canonical definition to state claims against.
-/

/-! ## A044244.P17527915316478701320

`A241816(A044625(1+n)+1)`
-/

namespace A044244.P17527915316478701320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044625 (1 + n) + 1).toNat

end

end A044244.P17527915316478701320

/-! ## A044244.P9288262707936135003

`A243109(A044625(1+n)+1)`
-/

namespace A044244.P9288262707936135003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044625 (1 + n) + 1).toNat

end

end A044244.P9288262707936135003

/-! ## A044244.P10833566640121904427

`A257646(A044624(n+1))`
-/

namespace A044244.P10833566640121904427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044624 (n + 1)).toNat

end

end A044244.P10833566640121904427

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

/-! ## A044245.P2118162149757592566

`A044626(1+n)-A135481(A044626(n+1))`
-/

namespace A044245.P2118162149757592566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044626 (1 + n) - A135481 (A044626 (n + 1)).toNat

end

end A044245.P2118162149757592566

/-! ## A044245.P16689040044771685794

`A129760(A044626(1+n)+1)`
-/

namespace A044245.P16689040044771685794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044626 (1 + n) + 1).toNat

end

end A044245.P16689040044771685794

/-! ## A044245.P16357510933198525399

`A241816(A044626(n+1))+1`
-/

namespace A044245.P16357510933198525399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044626 (n + 1)).toNat + 1

end

end A044245.P16357510933198525399

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

/-! ## A044246.P1981139774632884386

`A243109(A044627(1+n)+2)`
-/

namespace A044246.P1981139774632884386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044627 (1 + n) + 2).toNat

end

end A044246.P1981139774632884386

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

/-! ## A044247.P9932567833782357183

`A044628(1+n)-A135481(A044628(n+1))`
-/

namespace A044247.P9932567833782357183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044628 (1 + n) - A135481 (A044628 (n + 1)).toNat

end

end A044247.P9932567833782357183

/-! ## A044247.P8202013675187237757

`A243109(A044628(1+n))+2`
-/

namespace A044247.P8202013675187237757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044628 (1 + n)).toNat + 2

end

end A044247.P8202013675187237757

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

/-!
# A044248: Numbers k such that string 7,5 occurs in the base 8 representation of k but not of k-1.

The programs for A044248, there is no canonical definition to state claims against.
-/

/-! ## A044248.P7255444846806176204

`A241816(A044629(1+n)+1)`
-/

namespace A044248.P7255444846806176204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241816 (A044629 (1 + n) + 1).toNat

end

end A044248.P7255444846806176204

/-! ## A044248.P16977599028353661428

`A243109(A044629(1+n)+1)`
-/

namespace A044248.P16977599028353661428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (A044629 (1 + n) + 1).toNat

end

end A044248.P16977599028353661428

/-! ## A044248.P7982704157918560087

`A110699(A044628(n+1))`
-/

namespace A044248.P7982704157918560087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044628 (n + 1)).toNat

end

end A044248.P7982704157918560087

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

/-! ## A044249.P751928003932274457

`A129760(A044630(1+n)+1)`
-/

namespace A044249.P751928003932274457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A044630 (1 + n) + 1).toNat

end

end A044249.P751928003932274457

/-! ## A044249.P5467431013796000967

`A140977(A044248(n+1))`
-/

namespace A044249.P5467431013796000967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140977 (A044248 (n + 1)).toNat

end

end A044249.P5467431013796000967

/-! ## A044249.P3179554359453519515

`A113484(A044629(n+1))`
-/

namespace A044249.P3179554359453519515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044629 (n + 1)).toNat

end

end A044249.P3179554359453519515

/-!
# A044250: Numbers n such that string 7,7 occurs in the base 8 representation of n but not of n-1.

The programs for A044250, there is no canonical definition to state claims against.
-/

/-! ## A044250.P3650881460187412524

`A044187(n+1)-A008834(A164020(n))`
-/

namespace A044250.P3650881460187412524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044187 (n + 1) - A008834 (A164020 n).toNat

end

end A044250.P3650881460187412524

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

/-! ## A044251.P17811597957802179208

`Δ[A305548(∑[3*n])]`
-/

namespace A044251.P17811597957802179208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A044251.P17811597957802179208

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

/-! ## A044252.P6160642854794201190

`record[A325641(A044253(2+n))]`
-/

namespace A044252.P6160642854794201190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A044253 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044252.P6160642854794201190

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

/-! ## A044253.P1396237400163084656

`A110699(A044633(n+1))`
-/

namespace A044253.P1396237400163084656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044633 (n + 1)).toNat

end

end A044253.P1396237400163084656

/-!
# A044254: Numbers n such that string 0,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044254, there is no canonical definition to state claims against.
-/

/-! ## A044254.P4383921542269500538

`A113484(A044634(n+1))`
-/

namespace A044254.P4383921542269500538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044634 (n + 1)).toNat

end

end A044254.P4383921542269500538

/-!
# A044255: Numbers n such that string 0,4 occurs in the base 9 representation of n but not of n-1.

The programs for A044255, there is no canonical definition to state claims against.
-/

/-! ## A044255.P16503996008686917862

`A257646(A044635(n+1))`
-/

namespace A044255.P16503996008686917862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044635 (n + 1)).toNat

end

end A044255.P16503996008686917862

/-!
# A044256: Numbers k such that string 0,5 occurs in the base 9 representation of k but not of k-1.

The programs for A044256, there is no canonical definition to state claims against.
-/

/-! ## A044256.P17332053402510872913

`A257646(A044636(n+1))`
-/

namespace A044256.P17332053402510872913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044636 (n + 1)).toNat

end

end A044256.P17332053402510872913

/-!
# A044257: Numbers n such that string 0,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044257, there is no canonical definition to state claims against.
-/

/-! ## A044257.P844061699764096397

`A113484(A044637(n+1))`
-/

namespace A044257.P844061699764096397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044637 (n + 1)).toNat

end

end A044257.P844061699764096397

/-!
# A044259: Numbers n such that string 0,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044259, there is no canonical definition to state claims against.
-/

/-! ## A044259.P14803038253905598738

`A257646(A044639(n+1))`
-/

namespace A044259.P14803038253905598738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044639 (n + 1)).toNat

end

end A044259.P14803038253905598738

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

/-! ## A044261.P4932913904049228546

`record[A278537(A044271(n+1)%A000355(2*(n+2)))]`
-/

namespace A044261.P4932913904049228546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (Int.tmod (A044271 (n + 1)) (A000355 (2 * (n + 2)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044261.P4932913904049228546

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

/-! ## A044261.P14879330498642518504

`record[A032742(A044271(1+n))]`
-/

namespace A044261.P14879330498642518504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044271 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044261.P14879330498642518504

/-! ## A044261.P9148013722412110954

`record[A078898(A044271(n+1))]`
-/

namespace A044261.P9148013722412110954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044271 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044261.P9148013722412110954

/-! ## A044261.P2294051842399714948

`A032742(A044271(1+2*n))`
-/

namespace A044261.P2294051842399714948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044271 (1 + 2 * n)).toNat

end

end A044261.P2294051842399714948

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

/-! ## A044262.P10379526925075718371

`record[A142150(A044273(1+n))]`
-/

namespace A044262.P10379526925075718371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A044273 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044262.P10379526925075718371

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

/-!
# A044263: Numbers k such that string 1,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044263, there is no canonical definition to state claims against.
-/

/-! ## A044263.P11586778754749273832

`record[A278537(A044275(1+n))]`
-/

namespace A044263.P11586778754749273832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044275 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044263.P11586778754749273832

/-! ## A044263.P4480761313523067343

`record[A038608(A044275(n+1))]/2`
-/

namespace A044263.P4480761313523067343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A044275 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A044263.P4480761313523067343

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

/-! ## A044264.P8120030089851631727

`record[A025480(A044277(1+n))]`
-/

namespace A044264.P8120030089851631727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044277 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044264.P8120030089851631727

/-! ## A044264.P2570850109844167150

`record[A032742(A044277(n+1))]`
-/

namespace A044264.P2570850109844167150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044264.P2570850109844167150

/-! ## A044264.P262517124879105944

`record[A174571(A044303(1+n))]`
-/

namespace A044264.P262517124879105944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A044303 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044264.P262517124879105944

/-! ## A044264.P5461300413193438914

`A044644(A077168(n))+1`
-/

namespace A044264.P5461300413193438914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044644 (A077168 n).toNat + 1

end

end A044264.P5461300413193438914

/-!
# A044265: Numbers n such that string 1,5 occurs in the base 9 representation of n but not of n-1.

The programs for A044265, there is no canonical definition to state claims against.
-/

/-! ## A044265.P11132426828094752111

`record[A278529(A044279(1+n))]`
-/

namespace A044265.P11132426828094752111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044279 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P11132426828094752111

/-! ## A044265.P3517130068685921376

`record[A032742(A044279(1+n))]`
-/

namespace A044265.P3517130068685921376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044279 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P3517130068685921376

/-! ## A044265.P2520405544435835733

`record[A078898(A044279(n+1))]`
-/

namespace A044265.P2520405544435835733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P2520405544435835733

/-! ## A044265.P1244290448992006557

`record[A057979(A044279(n+1)+1)]`
-/

namespace A044265.P1244290448992006557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044279 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044265.P1244290448992006557

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

/-! ## A044266.P17034122773957980349

`A113484(A044646(n+1))`
-/

namespace A044266.P17034122773957980349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044646 (n + 1)).toNat

end

end A044266.P17034122773957980349

/-!
# A044267: Numbers n such that string 1,7 occurs in the base 9 representation of n but not of n-1.

The programs for A044267, there is no canonical definition to state claims against.
-/

/-! ## A044267.P7128730493775543178

`record[A032742(A044283(1+n))]`
-/

namespace A044267.P7128730493775543178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044283 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044267.P7128730493775543178

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

/-! ## A044268.P1410303594042436260

`record[A278537(A044285(1+n))]`
-/

namespace A044268.P1410303594042436260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044285 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P1410303594042436260

/-! ## A044268.P3453207743459969007

`record[A025480(A044285(n+1))]`
-/

namespace A044268.P3453207743459969007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P3453207743459969007

/-! ## A044268.P16692782083695219635

`record[A078898(A044285(1+n))]`
-/

namespace A044268.P16692782083695219635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044285 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044268.P16692782083695219635

/-! ## A044268.P13953999773601164355

`A044648(n+1)+A007318(A069695(n+1))`
-/

namespace A044268.P13953999773601164355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044648 (n + 1) + A007318 (A069695 (n + 1)).toNat

end

end A044268.P13953999773601164355

/-!
# A044269: Numbers n such that string 2,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044269, there is no canonical definition to state claims against.
-/

/-! ## A044269.P1779954446784231188

`record[A278537(A044287(1+n))]`
-/

namespace A044269.P1779954446784231188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044287 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044269.P1779954446784231188

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

/-! ## A044269.P9541950071970741149

`record[A057979(A044287(1+n)+1)]`
-/

namespace A044269.P9541950071970741149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044287 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044269.P9541950071970741149

/-! ## A044269.P360649385655181492

`record[A174571(A044287(n+1)+A044287(n+1))]`
-/

namespace A044269.P360649385655181492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A044287 (n + 1) + A044287 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044269.P360649385655181492

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

/-! ## A044270.P32674567890624713

`record[A057979(A044289(1+n)+1)]`
-/

namespace A044270.P32674567890624713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044289 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044270.P32674567890624713

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

/-! ## A044272.P12166164719717694632

`record[A057979(A044293(1+n)+1)]`
-/

namespace A044272.P12166164719717694632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044293 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044272.P12166164719717694632

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

/-! ## A044273.P3927475895538686016

`record[A249122(A044295(1+n)+1)]`
-/

namespace A044273.P3927475895538686016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A044295 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044273.P3927475895538686016

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

/-! ## A044274.P13141605882219705597

`record[A025480(A044297(1+n))]`
-/

namespace A044274.P13141605882219705597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044297 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044274.P13141605882219705597

/-! ## A044274.P7105025078392074707

`A257646(A044654(n+1))`
-/

namespace A044274.P7105025078392074707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044654 (n + 1)).toNat

end

end A044274.P7105025078392074707

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

/-! ## A044275.P4730148236398878212

`record[A278537(A044299(1+n))]`
-/

namespace A044275.P4730148236398878212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A044299 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044275.P4730148236398878212

/-! ## A044275.P15602331752214293875

`A113484(A044655(n+1))`
-/

namespace A044275.P15602331752214293875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044655 (n + 1)).toNat

end

end A044275.P15602331752214293875

/-!
# A044277: Numbers k such that the string 2,8 occurs in the base 9 representation of k but not of k-1.

The programs for A044277, there is no canonical definition to state claims against.
-/

/-! ## A044277.P13891852172472919114

`record[A000217(A044303(n+1))%A044303(n+1)]`
-/

namespace A044277.P13891852172472919114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A044303 (n + 1)).toNat) (A044303 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P13891852172472919114

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

/-! ## A044277.P15994800556163628606

`record[A278537(A044303(n+1)%A044259(n+1))]`
-/

namespace A044277.P15994800556163628606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (Int.tmod (A044303 (n + 1)) (A044259 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P15994800556163628606

/-! ## A044277.P525055416557641425

`record[A278537(A044303(n+1))%A044287(n+1)]`
-/

namespace A044277.P525055416557641425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278537 (A044303 (n + 1)).toNat) (A044287 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P525055416557641425

/-! ## A044277.P9260319252437029668

`record[A078898(A044303(n+1))]`
-/

namespace A044277.P9260319252437029668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P9260319252437029668

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

/-! ## A044277.P4478764092060569717

`record[A003602(A044303(1+n)-1)]`
-/

namespace A044277.P4478764092060569717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044303 (1 + n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044277.P4478764092060569717

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

/-!
# A044278: Numbers k such that the string 3,0 occurs in the base 9 representation of k but not of k-1.

The programs for A044278, there is no canonical definition to state claims against.
-/

/-! ## A044278.P13615121929036854660

`record[A278529(A044305(1+n))]`
-/

namespace A044278.P13615121929036854660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (A044305 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P13615121929036854660

/-! ## A044278.P13641277935839380079

`record[A078898(A044305(n+1))]`
-/

namespace A044278.P13641277935839380079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P13641277935839380079

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

/-! ## A044278.P5474781518116207775

`record[A027656(A044305(1+n)-2)]`
-/

namespace A044278.P5474781518116207775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A044305 (1 + n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044278.P5474781518116207775

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

/-! ## A044280.P3319486015414392643

`record[A260739(A044309(1+n))]`
-/

namespace A044280.P3319486015414392643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A044309 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044280.P3319486015414392643

/-! ## A044280.P18017492569684875516

`record[A057979(A044309(1+n)+1)]`
-/

namespace A044280.P18017492569684875516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044309 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044280.P18017492569684875516

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

/-!
# A044281: Numbers n such that string 3,3 occurs in the base 9 representation of n but not of n-1.

The programs for A044281, there is no canonical definition to state claims against.
-/

/-! ## A044281.P7062592298810887370

`gcd(A000217(A044311(2*n+1)), A044311(2*n+1))`
-/

namespace A044281.P7062592298810887370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A044311 (2 * n + 1)).toNat) (A044311 (2 * n + 1))

end

end A044281.P7062592298810887370

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

/-! ## A044281.P1807060878478891812

`A078898(A044311(Δ[n²]))`
-/

namespace A044281.P1807060878478891812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044311 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A044281.P1807060878478891812

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

/-! ## A044282.P8248892961911397967

`record[A057979(A044313(1+n)+1)]`
-/

namespace A044282.P8248892961911397967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044313 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044282.P8248892961911397967

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

/-! ## A044283.P1672252849840237660

`record[A032742(A044315(1+n))]`
-/

namespace A044283.P1672252849840237660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044315 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P1672252849840237660

/-! ## A044283.P10931738413105515716

`record[A057979(A044315(1+n)+1)]`
-/

namespace A044283.P10931738413105515716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044315 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044283.P10931738413105515716

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

/-! ## A044284.P5940923285459906652

`record[A025480(A044317(1+n))]`
-/

namespace A044284.P5940923285459906652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044317 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044284.P5940923285459906652

/-! ## A044284.P16801789572530903458

`record[A110514(A044317(1+n)-2)]`
-/

namespace A044284.P16801789572530903458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A044317 (1 + n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044284.P16801789572530903458

/-! ## A044284.P3411024043660920203

`A113484(A044664(n+1))`
-/

namespace A044284.P3411024043660920203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044664 (n + 1)).toNat

end

end A044284.P3411024043660920203

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

/-! ## A044285.P4315654764503951277

`record[A032742(A044319(1+n))]`
-/

namespace A044285.P4315654764503951277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044319 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044285.P4315654764503951277

/-! ## A044285.P14988778997116227318

`A257646(A044665(n+1))`
-/

namespace A044285.P14988778997116227318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044665 (n + 1)).toNat

end

end A044285.P14988778997116227318

/-!
# A044287: Numbers n such that string 4,0 occurs in the base 9 representation of n but not of n-1.

The programs for A044287, there is no canonical definition to state claims against.
-/

/-! ## A044287.P6381366208368252669

`record[A078898(A044323(1+n))]`
-/

namespace A044287.P6381366208368252669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A044323 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044287.P6381366208368252669

/-! ## A044287.P8547581085122130465

`record[A003602(A044323(n+1)-1)]`
-/

namespace A044287.P8547581085122130465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A044323 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044287.P8547581085122130465

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

/-!
# A044288: Numbers n such that string 4,1 occurs in the base 9 representation of n but not of n-1.

The programs for A044288, there is no canonical definition to state claims against.
-/

/-! ## A044288.P2257084261101221692

`record[A325563(A044325(1+n))]`
-/

namespace A044288.P2257084261101221692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325563 (A044325 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044288.P2257084261101221692

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

/-! ## A044289.P16215820436670895259

`record[A032742(A044327(1+n))]`
-/

namespace A044289.P16215820436670895259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A044327 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P16215820436670895259

/-! ## A044289.P11319883706170226549

`record[A057979(A044327(1+n)+1)]`
-/

namespace A044289.P11319883706170226549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A044327 (1 + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044289.P11319883706170226549

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

/-! ## A044290.P15708252810876362595

`record[A025480(A044329(1+n))]`
-/

namespace A044290.P15708252810876362595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A044329 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044290.P15708252810876362595

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

/-! ## A044292.P9739418556759901050

`A044293(n+1)+A008611(3*A044673(n+1))-A044294(n+1)`
-/

namespace A044292.P9739418556759901050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044293 (n + 1) + A008611 (3 * A044673 (n + 1)).toNat - A044294 (n + 1)

end

end A044292.P9739418556759901050

/-! ## A044292.P10656841978369842051

`A044294(n+1)+A008611(3*A044673(n+1))-A044295(n+1)`
-/

namespace A044292.P10656841978369842051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) + A008611 (3 * A044673 (n + 1)).toNat - A044295 (n + 1)

end

end A044292.P10656841978369842051

/-! ## A044292.P13554096173123381469

`A044295(n+1)+A008611(3*A044673(n+1))-A044296(n+1)`
-/

namespace A044292.P13554096173123381469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1) + A008611 (3 * A044673 (n + 1)).toNat - A044296 (n + 1)

end

end A044292.P13554096173123381469

/-! ## A044292.P13280308685427162211

`A044293(n+1)+A008620(3*A044673(n+1))-A044294(n+1)`
-/

namespace A044292.P13280308685427162211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044293 (n + 1) + A008620 (3 * A044673 (n + 1)).toNat - A044294 (n + 1)

end

end A044292.P13280308685427162211

/-! ## A044292.P10003011531938519401

`A044294(n+1)+A008620(3*A044673(n+1))-A044295(n+1)`
-/

namespace A044292.P10003011531938519401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) + A008620 (3 * A044673 (n + 1)).toNat - A044295 (n + 1)

end

end A044292.P10003011531938519401

/-!
# A044293: Numbers n such that string 4,6 occurs in the base 9 representation of n but not of n-1.

The programs for A044293, there is no canonical definition to state claims against.
-/

/-! ## A044293.P11214091094805047753

`A113484(A044673(n+1))`
-/

namespace A044293.P11214091094805047753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044673 (n + 1)).toNat

end

end A044293.P11214091094805047753

/-!
# A044295: Numbers n such that string 4,8 occurs in the base 9 representation of n but not of n-1.

The programs for A044295, there is no canonical definition to state claims against.
-/

/-! ## A044295.P8654353353361928886

`A044294(n+1)+A044294(n+1)-A008611(3*A044673(n+1))`
-/

namespace A044295.P8654353353361928886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) + A044294 (n + 1) - A008611 (3 * A044673 (n + 1)).toNat

end

end A044295.P8654353353361928886

/-! ## A044295.P17469664514012999628

`A044294(n+1)+A044294(n+1)-A008620(3*A044673(n+1))`
-/

namespace A044295.P17469664514012999628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044294 (n + 1) + A044294 (n + 1) - A008620 (3 * A044673 (n + 1)).toNat

end

end A044295.P17469664514012999628

/-! ## A044295.P2820013848223847705

`A110699(A044675(n+1))`
-/

namespace A044295.P2820013848223847705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110699 (A044675 (n + 1)).toNat

end

end A044295.P2820013848223847705

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

/-! ## A044296.P5348913968585048930

`∩[A043184(n+1), A366290(n+1)]`
-/

namespace A044296.P5348913968585048930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044296.P5348913968585048930

/-! ## A044296.P2876526991864423695

`∩[A043184(n+1), A260042(n+1)]`
-/

namespace A044296.P2876526991864423695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044296.P2876526991864423695

/-!
# A044297: Numbers k such that the string 5,1 occurs in the base 9 representation of k but not of k-1.

The programs for A044297, there is no canonical definition to state claims against.
-/

/-! ## A044297.P5475843811322682782

`A044295(n+1)+A044295(n+1)-A008611(3*A044673(n+1))`
-/

namespace A044297.P5475843811322682782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044295 (n + 1) + A044295 (n + 1) - A008611 (3 * A044673 (n + 1)).toNat

end

end A044297.P5475843811322682782

/-!
# A044298: Numbers k such that the string 5,2 occurs in the base 9 representation of k but not of k-1.

The programs for A044298, there is no canonical definition to state claims against.
-/

/-! ## A044298.P6134114702140404710

`A257646(A044678(n+1))`
-/

namespace A044298.P6134114702140404710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257646 (A044678 (n + 1)).toNat

end

end A044298.P6134114702140404710

/-!
# A044299: Numbers k such that the string 5,3 occurs in the base 9 representation of k but not of k-1.

The programs for A044299, there is no canonical definition to state claims against.
-/

/-! ## A044299.P10508315209243878103

`A113484(A044679(n+1))`
-/

namespace A044299.P10508315209243878103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A044679 (n + 1)).toNat

end

end A044299.P10508315209243878103

