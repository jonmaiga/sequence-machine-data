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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A044800: Numbers k such that string 8,7 occurs in the base 10 representation of k but not of k+1.

The programs for A044800, there is no canonical definition to state claims against.
-/

/-! ## A044800.P17385617588187991506

`or(A044419(n+1), A327858(A049889(n+1)))`
-/

namespace A044800.P17385617588187991506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044419 (n + 1)) (A327858 (A049889 (n + 1)).toNat)

end

end A044800.P17385617588187991506

/-! ## A044800.P4942794049491757059

`or(A044419(n+1), A130296(A130847(n)))`
-/

namespace A044800.P4942794049491757059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044419 (n + 1)) (A130296 (A130847 n).toNat)

end

end A044800.P4942794049491757059

/-! ## A044800.P6629339545797517483

`or(A044419(n+1), A268726(A162391(n+1)))`
-/

namespace A044800.P6629339545797517483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044419 (n + 1)) (A268726 (A162391 (n + 1)).toNat)

end

end A044800.P6629339545797517483

/-! ## A044800.P9744786037066032032

`or(A044419(n+1), A112367(A045872(n+2)))`
-/

namespace A044800.P9744786037066032032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044419 (n + 1)) (A112367 (A045872 (n + 2 + 10)).toNat)

end

end A044800.P9744786037066032032

/-! ## A044800.P3494394156460757367

`or(A044419(n+1), A048766(A077559(n+1)))`
-/

namespace A044800.P3494394156460757367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A044419 (n + 1)) (A048766 (A077559 (n + 1)).toNat)

end

end A044800.P3494394156460757367

/-!
# A044801: Numbers k such that string 8,8 occurs in the base 10 representation of k but not of k+1.

The programs for A044801, there is no canonical definition to state claims against.
-/

/-! ## A044801.P5554450029253592722

`A138904(A138925(n+1))+A067749(n+1)`
-/

namespace A044801.P5554450029253592722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A138925 (n + 1)).toNat + A067749 (n + 1)

end

end A044801.P5554450029253592722

/-! ## A044801.P9527665778594951192

`A138904(A060738(n))+A067749(n+1)`
-/

namespace A044801.P9527665778594951192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A060738 n).toNat + A067749 (n + 1)

end

end A044801.P9527665778594951192

/-! ## A044801.P11849614055185958742

`A044421(n+1)-A285960(A044432(n))`
-/

namespace A044801.P11849614055185958742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044421 (n + 1) - A285960 (A044432 n).toNat

end

end A044801.P11849614055185958742

/-! ## A044801.P17189650946876879963

`A124778(A309361(n+1))+A067749(n+1)`
-/

namespace A044801.P17189650946876879963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A309361 (n + 1)).toNat + A067749 (n + 1)

end

end A044801.P17189650946876879963

/-! ## A044801.P14468482291097806788

`A124778(∑[A124778(3*n+1)])+A067749(n+1)`
-/

namespace A044801.P14468482291097806788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A067749 (n + 1)

end

end A044801.P14468482291097806788

/-!
# A044802: Numbers k such that string 8,9 occurs in the base 10 representation of k but not of k+1.

The programs for A044802, there is no canonical definition to state claims against.
-/

/-! ## A044802.P11219305870632369467

`∩[A044040(n+1), A277596(n+1)]`
-/

namespace A044802.P11219305870632369467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P11219305870632369467

/-! ## A044802.P18237176354067089743

`filter[A044040(1+n), A035263(#)]`
-/

namespace A044802.P18237176354067089743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A044802.P18237176354067089743

/-! ## A044802.P1457840684382030035

`filter[A044040(1+n), A152822(#)]`
-/

namespace A044802.P1457840684382030035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A044802.P1457840684382030035

/-! ## A044802.P11988372973428297551

`∩[A044040(n+1), A016897(n)]`
-/

namespace A044802.P11988372973428297551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P11988372973428297551

/-! ## A044802.P5831835599929433215

`∩[A044040(n+1), A063093(n+1)]`
-/

namespace A044802.P5831835599929433215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P5831835599929433215

/-! ## A044802.P11155898090917172250

`∩[A044040(n+1), A090771(n+1)]`
-/

namespace A044802.P11155898090917172250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P11155898090917172250

/-! ## A044802.P4904301918995799332

`∩[A044040(n+1), A268044(n+1)]`
-/

namespace A044802.P4904301918995799332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P4904301918995799332

/-! ## A044802.P1494132689687115527

`∩[A044040(n+1), A273669(n+1)]`
-/

namespace A044802.P1494132689687115527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P1494132689687115527

/-! ## A044802.P8815324959706141868

`∩[A044040(n+1), A344375(n+1)]`
-/

namespace A044802.P8815324959706141868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P8815324959706141868

/-! ## A044802.P17586150384880077864

`∩[A044040(n+1), A277601(n+1)]`
-/

namespace A044802.P17586150384880077864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P17586150384880077864

/-! ## A044802.P11729730398100237487

`∩[A044040(n+1), A277548(n+1)]`
-/

namespace A044802.P11729730398100237487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P11729730398100237487

/-! ## A044802.P17209623683260586945

`∩[A044040(n+1), A047204(A047204(n+1)+2)]`
-/

namespace A044802.P17209623683260586945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047204 (A047204 (n + 1) + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P17209623683260586945

/-! ## A044802.P698053340888219914

`∩[A044040(n+1), A262389(A262389(n+1)+2)]`
-/

namespace A044802.P698053340888219914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262389 (A262389 (n + 1) + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P698053340888219914

/-! ## A044802.P11524209895907355152

`record[A093178(A044040(n+1))]`
-/

namespace A044802.P11524209895907355152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A044040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044802.P11524209895907355152

/-! ## A044802.P11004743950193287616

`∩[A044040(n+1), A315036(n)]`
-/

namespace A044802.P11004743950193287616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044802.P11004743950193287616

/-!
# A044803: Numbers k such that string 9,0 occurs in the base 10 representation of k but not of k+1.

The programs for A044803, there is no canonical definition to state claims against.
-/

/-! ## A044803.P7091947563912310875

`A276331(A044423(n+1))`
-/

namespace A044803.P7091947563912310875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044423 (n + 1)).toNat

end

end A044803.P7091947563912310875

/-! ## A044803.P15991356126474038779

`A113520(A044423(n+1))`
-/

namespace A044803.P15991356126474038779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044423 (n + 1)).toNat

end

end A044803.P15991356126474038779

/-!
# A044804: Numbers m such that string 9,1 occurs in the base 10 representation of m but not of m+1.

The programs for A044804, there is no canonical definition to state claims against.
-/

/-! ## A044804.P11285071712647456598

`A124741(A044424(n+1))`
-/

namespace A044804.P11285071712647456598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044424 (n + 1)).toNat

end

end A044804.P11285071712647456598

/-!
# A044805: Numbers k such that string 9,2 occurs in the base 10 representation of k but not of k+1.

The programs for A044805, there is no canonical definition to state claims against.
-/

/-! ## A044805.P740832077528541349

`A276331(A044425(n+1))`
-/

namespace A044805.P740832077528541349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044425 (n + 1)).toNat

end

end A044805.P740832077528541349

/-! ## A044805.P6891623725774827525

`A233583(A044425(n+1))`
-/

namespace A044805.P6891623725774827525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044425 (n + 1)).toNat

end

end A044805.P6891623725774827525

/-!
# A044806: Numbers k such that the digit string 9,3 occurs in the base-10 representation of k but not of k+1.

The programs for A044806, there is no canonical definition to state claims against.
-/

/-! ## A044806.P13382341937721854327

`A124741(A044426(n+1))`
-/

namespace A044806.P13382341937721854327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044426 (n + 1)).toNat

end

end A044806.P13382341937721854327

/-!
# A044807: Numbers k such that string 9,4 occurs in the base 10 representation of k but not of k+1.

The programs for A044807, there is no canonical definition to state claims against.
-/

/-! ## A044807.P12773693715626562320

`A276331(A044427(n+1))`
-/

namespace A044807.P12773693715626562320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A044427 (n + 1)).toNat

end

end A044807.P12773693715626562320

/-! ## A044807.P10679157641596905657

`A113520(A044427(n+1))`
-/

namespace A044807.P10679157641596905657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044427 (n + 1)).toNat

end

end A044807.P10679157641596905657

/-!
# A044808: Numbers k such that string 9,5 occurs in the base 10 representation of k but not of k+1.

The programs for A044808, there is no canonical definition to state claims against.
-/

/-! ## A044808.P9995904675136177865

`A023443(lcm(A044428(n+1), A122188(n+1)))`
-/

namespace A044808.P9995904675136177865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.lcm (A044428 (n + 1)) (A122188 (n + 1)))

end

end A044808.P9995904675136177865

/-! ## A044808.P13767195067395452750

`A083802(A044428(n+1))`
-/

namespace A044808.P13767195067395452750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083802 (A044428 (n + 1)).toNat

end

end A044808.P13767195067395452750

/-!
# A044809: Numbers k such that string 9,6 occurs in the base 10 representation of k but not of k+1.

The programs for A044809, there is no canonical definition to state claims against.
-/

/-! ## A044809.P1168876040263892222

`A113520(A044429(n+1))`
-/

namespace A044809.P1168876040263892222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A044429 (n + 1)).toNat

end

end A044809.P1168876040263892222

/-!
# A044810: Numbers n such that string 9,7 occurs in the base 10 representation of n but not of n+1.

The programs for A044810, there is no canonical definition to state claims against.
-/

/-! ## A044810.P12387030234260422576

`A124741(A044430(n+1))`
-/

namespace A044810.P12387030234260422576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A044430 (n + 1)).toNat

end

end A044810.P12387030234260422576

/-!
# A044811: Numbers n such that string 9,8 occurs in the base 10 representation of n but not of n+1.

The programs for A044811, there is no canonical definition to state claims against.
-/

/-! ## A044811.P18410947079192919997

`A233583(A044431(n+1))`
-/

namespace A044811.P18410947079192919997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A044431 (n + 1)).toNat

end

end A044811.P18410947079192919997

/-!
# A044812: Numbers n such that string 9,9 occurs in the base 10 representation of n but not of n+1.

The programs for A044812, there is no canonical definition to state claims against.
-/

/-! ## A044812.P9371471692604748057

`∩[A016825(n), A044811(n+1)]+1`
-/

namespace A044812.P9371471692604748057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A044812.P9371471692604748057

/-! ## A044812.P4690942591518612439

`record[A141310(A044811(1+n))]`
-/

namespace A044812.P4690942591518612439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A044811 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044812.P4690942591518612439

/-! ## A044812.P10050462567890331094

`record[A322015(A044430(1+n))]`
-/

namespace A044812.P10050462567890331094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (A044430 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044812.P10050462567890331094

/-! ## A044812.P2453014194580505593

`A141310(∩[A044430(n+1), A044811(n+1)])`
-/

namespace A044812.P2453014194580505593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044812.P2453014194580505593

/-! ## A044812.P12508984733393836682

`A322015(∩[A044430(n+1), A044811(n+1)])`
-/

namespace A044812.P12508984733393836682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044811 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A044812.P12508984733393836682

/-!
# A044813: Positive integers having distinct base-2 run lengths.

The programs for A044813, the canonical program `A044813.P18382586688093240220` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044813 has offset 1).

The definition of A044813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044813.P18382586688093240220

`eq[1, A175465(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A044813

/-- `eq[1, A175465(n+1)]+1` -/
def P18382586688093240220.Spec : Prop :=
  ∀ n, (P18382586688093240220.a n : ℤ) = A044813 (n + 1)

theorem P18382586688093240220.correct : P18382586688093240220.Spec := by
  intro n
  simp only [A044813, Nat.add_sub_cancel]

end A044813

/-! ## A044813.P6673226716918500722

`eq[A005811(n+1), A165413(n+1)]+1`
-/

namespace A044813.P6673226716918500722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044813.P6673226716918500722

namespace A044813

/-- `eq[A005811(n+1), A165413(n+1)]+1` -/
def P6673226716918500722.Spec : Prop :=
  ∀ n, (P6673226716918500722.a n : ℤ) = A044813 (n + 1)

end A044813

/-! ## A044813.P9956057391390463402

`eq[A005811(n+1), A165414(n+1)]+1`
-/

namespace A044813.P9956057391390463402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044813.P9956057391390463402

namespace A044813

/-- `eq[A005811(n+1), A165414(n+1)]+1` -/
def P9956057391390463402.Spec : Prop :=
  ∀ n, (P9956057391390463402.a n : ℤ) = A044813 (n + 1)

end A044813

/-! ## A044813.P8936567772552121477

`eq[A165413(n+1), A165414(n+1)]+1`
-/

namespace A044813.P8936567772552121477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044813.P8936567772552121477

namespace A044813

/-- `eq[A165413(n+1), A165414(n+1)]+1` -/
def P8936567772552121477.Spec : Prop :=
  ∀ n, (P8936567772552121477.a n : ℤ) = A044813 (n + 1)

end A044813

/-! ## A044813.P13037293189999288653

`record[(n+1)/A297002(A175465(n+1)²)]`
-/

namespace A044813.P13037293189999288653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A297002 (A175465 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044813.P13037293189999288653

namespace A044813

/-- `record[(n+1)/A297002(A175465(n+1)²)]` -/
def P13037293189999288653.Spec : Prop :=
  ∀ n, P13037293189999288653.a n = (A044813 (n + 1) : ℚ)

end A044813

/-!
# A044814: Positive integers having distinct base-3 run lengths.

The programs for A044814, there is no canonical definition to state claims against.
-/

/-! ## A044814.P16132555260087550367

`record[A163528(A044820(n+1))]`
-/

namespace A044814.P16132555260087550367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A044820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044814.P16132555260087550367

/-!
# A044815: Positive integers having distinct base-4 run lengths.

The programs for A044815, there is no canonical definition to state claims against.
-/

/-! ## A044815.P12290242174535612309

`record[A289813(A044820(1+n))]`
-/

namespace A044815.P12290242174535612309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044820 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044815.P12290242174535612309

/-! ## A044815.P18380197023265493479

`record[A328749(A044820(n+2))]`
-/

namespace A044815.P18380197023265493479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A044820 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044815.P18380197023265493479

/-! ## A044815.P12391328525030315529

`record[A059905(A044827(n+1))]`
-/

namespace A044815.P12391328525030315529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A044827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044815.P12391328525030315529

/-!
# A044816: Positive integers having distinct base-5 run lengths.

The programs for A044816, there is no canonical definition to state claims against.
-/

/-! ## A044816.P2171670089893405968

`∩[A044954(n+1), A243903(n+1)]`
-/

namespace A044816.P2171670089893405968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044816.P2171670089893405968

/-!
# A044817: Positive integers having distinct base-6 run lengths.

The programs for A044817, there is no canonical definition to state claims against.
-/

/-! ## A044817.P10293454114156033516

`∩[A005496(n), A048303(n)]`
-/

namespace A044817.P10293454114156033516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048303 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044817.P10293454114156033516

/-! ## A044817.P13306915060480169943

`∩[A048303(n), A278827(n+1)]`
-/

namespace A044817.P13306915060480169943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044817.P13306915060480169943

/-! ## A044817.P2292301862629935389

`∩[A048303(n), A346130(n+1)]`
-/

namespace A044817.P2292301862629935389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044817.P2292301862629935389

/-! ## A044817.P17763014643644159271

`∩[A048303(n), A380573(n+1)]`
-/

namespace A044817.P17763014643644159271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044817.P17763014643644159271

/-!
# A044818: Positive integers having distinct base-7 run lengths.

The programs for A044818, there is no canonical definition to state claims against.
-/

/-! ## A044818.P2724192751610906641

`∩[A044956(n+1), A278827(n+1)]`
-/

namespace A044818.P2724192751610906641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044818.P2724192751610906641

/-! ## A044818.P12860221974635044550

`∩[A048304(n), A278827(n+1)]`
-/

namespace A044818.P12860221974635044550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044818.P12860221974635044550

/-! ## A044818.P15321296855638109217

`∩[A048304(n), A338555(n+1)]`
-/

namespace A044818.P15321296855638109217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044818.P15321296855638109217

/-! ## A044818.P2378066391191681367

`∩[A048304(n), A364960(n+1)]`
-/

namespace A044818.P2378066391191681367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044818.P2378066391191681367

/-!
# A044820: Positive integers having distinct base-9 run lengths.

The programs for A044820, there is no canonical definition to state claims against.
-/

/-! ## A044820.P6242695189713234249

`∩[A048306(n), A092629(n+1)]`
-/

namespace A044820.P6242695189713234249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044820.P6242695189713234249

/-! ## A044820.P16775956193877108621

`∩[A048306(n), A108549(n+1)]`
-/

namespace A044820.P16775956193877108621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044820.P16775956193877108621

/-! ## A044820.P5188824552343388581

`∩[A048306(n), A114886(n+1)]`
-/

namespace A044820.P5188824552343388581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044820.P5188824552343388581

/-! ## A044820.P6386218710959798373

`∩[A048306(n), A238368(n+1)]`
-/

namespace A044820.P6386218710959798373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044820.P6386218710959798373

/-!
# A044821: Positive integers having distinct base-10 run lengths.

The programs for A044821, there is no canonical definition to state claims against.
-/

/-! ## A044821.P1855397595866966042

`lt[A045918(n), A007094(A008592(n))]`
-/

namespace A044821.P1855397595866966042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A008592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044821.P1855397595866966042

/-! ## A044821.P6703407724330265559

`A067995(A322835(n+1))`
-/

namespace A044821.P6703407724330265559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067995 (A322835 (n + 1)).toNat

end

end A044821.P6703407724330265559

/-! ## A044821.P9655285179322220607

`∩[A048307(n), A238368(n+1)]`
-/

namespace A044821.P9655285179322220607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044821.P9655285179322220607

/-! ## A044821.P8581895702224385778

`∩[A048307(n), A254075(n+1)]`
-/

namespace A044821.P8581895702224385778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044821.P8581895702224385778

/-!
# A044822: Positive integers having distinct base-11 run lengths.

The programs for A044822, there is no canonical definition to state claims against.
-/

/-! ## A044822.P12631313609040273480

`A044960(∑[A088156(n)!])`
-/

namespace A044822.P12631313609040273480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044960 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A044822.P12631313609040273480

/-! ## A044822.P12738793569882877216

`A048308(n+1)-A068933(A025747(n))`
-/

namespace A044822.P12738793569882877216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 (n + 1) - A068933 (A025747 n).toNat

end

end A044822.P12738793569882877216

/-! ## A044822.P841807018194117736

`A048308(n+1)-A335520(A104446(n))`
-/

namespace A044822.P841807018194117736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 (n + 1) - A335520 (A104446 n).toNat

end

end A044822.P841807018194117736

/-! ## A044822.P7624866891819329495

`A185255(A002473(n+1))+A044960(n+1)`
-/

namespace A044822.P7624866891819329495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A002473 (n + 1)).toNat + A044960 (n + 1)

end

end A044822.P7624866891819329495

/-! ## A044822.P88783424178505639

`A297274(n+1)-A010052(A242184(n+1))`
-/

namespace A044822.P88783424178505639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297274 (n + 1) - A010052 (A242184 (n + 1)).toNat

end

end A044822.P88783424178505639

/-!
# A044823: Positive integers having distinct base-12 run lengths.

The programs for A044823, there is no canonical definition to state claims against.
-/

/-! ## A044823.P15381550484422156086

`∩[A044961(n+1), A296888(n+1)]`
-/

namespace A044823.P15381550484422156086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044823.P15381550484422156086

/-! ## A044823.P6141016144830396159

`∑[A118679(A025794(n)!)]`
-/

namespace A044823.P6141016144830396159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118679 (Nat.factorial (A025794 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044823.P6141016144830396159

/-! ## A044823.P17687506928888676098

`∩[A048336(n), A080197(n+1)]`
-/

namespace A044823.P17687506928888676098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044823.P17687506928888676098

/-!
# A044824: Positive integers having distinct base-13 run lengths.

The programs for A044824, there is no canonical definition to state claims against.
-/

/-! ## A044824.P8587029108717053653

`∩[A044962(1+n), A296891(n+1)]`
-/

namespace A044824.P8587029108717053653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044962 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044824.P8587029108717053653

/-! ## A044824.P16486373298551241459

`A048310(n+1)-A025430(A210709(n+4))`
-/

namespace A044824.P16486373298551241459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048310 (n + 1) - A025430 (A210709 (n + 4)).toNat

end

end A044824.P16486373298551241459

/-! ## A044824.P15453784060675374764

`∩[A032949(n+1), A048337(n)]`
-/

namespace A044824.P15453784060675374764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044824.P15453784060675374764

/-!
# A044825: Positive integers having distinct base-14 run lengths.

The programs for A044825, there is no canonical definition to state claims against.
-/

/-! ## A044825.P11402275091297503997

`∩[A044963(n+1), A296894(n+1)]`
-/

namespace A044825.P11402275091297503997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044825.P11402275091297503997

/-! ## A044825.P788848070545873721

`A048311(n+1)-A185284(A029053(n))`
-/

namespace A044825.P788848070545873721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048311 (n + 1) - A185284 (A029053 n).toNat

end

end A044825.P788848070545873721

/-! ## A044825.P16299841310699523176

`∩[A048338(n), A080197(n+1)]`
-/

namespace A044825.P16299841310699523176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044825.P16299841310699523176

/-!
# A044826: Positive integers having distinct base-15 run lengths.

The programs for A044826, there is no canonical definition to state claims against.
-/

/-! ## A044826.P18188696196080923979

`∩[A044964(n+1), A296897(n+1)]`
-/

namespace A044826.P18188696196080923979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044826.P18188696196080923979

/-! ## A044826.P117108303358446969

`A044964(A070915(n+1)%A233552(n+1))`
-/

namespace A044826.P117108303358446969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044964 (Int.tmod (A070915 (n + 1)) (A233552 (n + 1))).toNat

end

end A044826.P117108303358446969

/-! ## A044826.P8394946066078735494

`record[A044964(n+1)-A026800(A026800(n))]`
-/

namespace A044826.P8394946066078735494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044964 (n + 1) - A026800 (A026800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044826.P8394946066078735494

/-!
# A044827: Positive integers having distinct base-16 run lengths.

The programs for A044827, there is no canonical definition to state claims against.
-/

/-! ## A044827.P10738988416637478575

`A044965(record[A340791(A070915(n+1))])`
-/

namespace A044827.P10738988416637478575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340791 (A070915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044965 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A044827.P10738988416637478575

/-! ## A044827.P16167421557317281181

`record[gcd(A044965(n+1), A151660(n+1))]`
-/

namespace A044827.P16167421557317281181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044965 (n + 1)) (A151660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044827.P16167421557317281181

/-! ## A044827.P2641893508148800621

`A297289(n+1)-A019433(A185255(n))`
-/

namespace A044827.P2641893508148800621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297289 (n + 1) - A019433 (A185255 n).toNat

end

end A044827.P2641893508148800621

/-! ## A044827.P12817579815440420206

`A029730(n+2)-A056926(A185255(n))`
-/

namespace A044827.P12817579815440420206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 2) - A056926 (A185255 n).toNat

end

end A044827.P12817579815440420206

/-! ## A044827.P3945412410682507077

`record[A044965(n+1)-A185255(A325401(n))]`
-/

namespace A044827.P3945412410682507077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044965 (n + 1) - A185255 (A325401 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044827.P3945412410682507077

/-!
# A044828: Positive integers having more base-2 runs of even length than odd.

The programs for A044828, there is no canonical definition to state claims against.
-/

/-! ## A044828.P13778572152958490799

`lt[A162853(n), A026741(n)]`
-/

namespace A044828.P13778572152958490799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044828.P13778572152958490799

/-! ## A044828.P11009988107453103767

`lt[A162853(n), A029578(n)]`
-/

namespace A044828.P11009988107453103767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044828.P11009988107453103767

/-! ## A044828.P1009417338923435817

`lt[(2*A162853(n))², A001196(n)]`
-/

namespace A044828.P1009417338923435817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A162853 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044828.P1009417338923435817

/-! ## A044828.P16063788969228085600

`lt[2*A162853(n)², A224915(n)]`
-/

namespace A044828.P16063788969228085600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044828.P16063788969228085600

/-! ## A044828.P13026511410404709831

`lt[A222423(n)+A162853(n)², A001859(n)]`
-/

namespace A044828.P13026511410404709831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222423 n + A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044828.P13026511410404709831

/-! ## A044828.P14601808537474096026

`lt[A162853(n), A004524(A249693(n))]`
-/

namespace A044828.P14601808537474096026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A249693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044828.P14601808537474096026

/-!
# A044829: Positive integers having more base-3 runs of even length than odd.

The programs for A044829, there is no canonical definition to state claims against.
-/

/-! ## A044829.P9619324952064998836

`A338086(n+1)%A338103(A338053(n+1))`
-/

namespace A044829.P9619324952064998836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338086 (n + 1)) (A338103 (A338053 (n + 1)).toNat)

end

end A044829.P9619324952064998836

/-!
# A044830: Positive integers having more base-4 runs of even length than odd.

The programs for A044830, there is no canonical definition to state claims against.
-/

/-! ## A044830.P5254971138066089032

`5*eq[51-xor(51, n), round(1/acot(n))]`
-/

namespace A044830.P5254971138066089032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  51 - (Nat.xor 51 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044830.P5254971138066089032

/-! ## A044830.P4520129501496099563

`record[or(n+1, A126006(n+1))]`
-/

namespace A044830.P4520129501496099563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A126006 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044830.P4520129501496099563

/-! ## A044830.P12175447381930287689

`A126006(4*(n+1))+4*(n+1)`
-/

namespace A044830.P12175447381930287689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126006 (4 * (n + 1)) + (4 * (n + 1) : ℤ)

end

end A044830.P12175447381930287689

/-! ## A044830.P1605974973021288574

`record[A004470(A005041(n))]`
-/

namespace A044830.P1605974973021288574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004470 (A005041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044830.P1605974973021288574

/-! ## A044830.P11758592477273949265

`∑[A140138(Δ[A007090(n)])]`
-/

namespace A044830.P11758592477273949265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140138 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044830.P11758592477273949265

/-!
# A044831: Positive integers having more base-5 runs of even length than odd.

The programs for A044831, there is no canonical definition to state claims against.
-/

/-! ## A044831.P10480228525640376401

`∑[A256584(Δ[A007091(n)])]`
-/

namespace A044831.P10480228525640376401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256584 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044831.P10480228525640376401

/-! ## A044831.P3034296626988288936

`∑[A306647(Δ[A014263(n+1)])]`
-/

namespace A044831.P3034296626988288936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306647 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044831.P3034296626988288936

/-! ## A044831.P5710199890953003529

`∑[A023196(A000225(5^val(n+1, 5)))]`
-/

namespace A044831.P5710199890953003529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (A000225 (5 ^ SequenceMachineLib.valuation (n + 1) 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044831.P5710199890953003529

/-! ## A044831.P14471812431038312070

`∑[A106529(A032085(5^val(n+1, 5)))]`
-/

namespace A044831.P14471812431038312070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106529 (A032085 (5 ^ SequenceMachineLib.valuation (n + 1) 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044831.P14471812431038312070

/-! ## A044831.P10284647215889130284

`∑[A139249(A000045(5^val(n+1, 5)))]`
-/

namespace A044831.P10284647215889130284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (A000045 (5 ^ SequenceMachineLib.valuation (n + 1) 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044831.P10284647215889130284

/-!
# A044832: Positive integers having more base-6 runs of even length than odd.

The programs for A044832, there is no canonical definition to state claims against.
-/

/-! ## A044832.P3461603422792622911

`∑[A356704(A234959(n+1))]`
-/

namespace A044832.P3461603422792622911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356704 (A234959 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044832.P3461603422792622911

/-! ## A044832.P6452580685706629171

`∑[A003215(A000045(6^val(n+1, 6)))]`
-/

namespace A044832.P6452580685706629171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A000045 (6 ^ SequenceMachineLib.valuation (n + 1) 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044832.P6452580685706629171

/-! ## A044832.P433310858256796985

`∑[A236348(A038255(6^val(n+1, 6)))]`
-/

namespace A044832.P433310858256796985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A038255 (6 ^ SequenceMachineLib.valuation (n + 1) 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044832.P433310858256796985

/-! ## A044832.P14086738691512390879

`∑[A005408(A295951(6^val(n+1, 6)))]`
-/

namespace A044832.P14086738691512390879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A295951 (6 ^ SequenceMachineLib.valuation (n + 1) 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044832.P14086738691512390879

/-! ## A044832.P12875003246361763519

`∑[A356704(A014491(n+1)!)]`
-/

namespace A044832.P12875003246361763519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356704 (Nat.factorial (A014491 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044832.P12875003246361763519

/-!
# A044833: Positive integers having more base-7 runs of even length than odd.

The programs for A044833, there is no canonical definition to state claims against.
-/

/-! ## A044833.P4456375688365829

`eq[0, A044947(A028310(n))]`
-/

namespace A044833.P4456375688365829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044833.P4456375688365829

/-! ## A044833.P9109136571356922855

`∑[A034006(Δ[A037475(n)])]`
-/

namespace A044833.P9109136571356922855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034006 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044833.P9109136571356922855

/-! ## A044833.P13769541897689303853

`∑[A334333(Δ[A037475(n)])]`
-/

namespace A044833.P13769541897689303853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334333 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044833.P13769541897689303853

/-! ## A044833.P13301885884333675333

`A065475(eq[0, A044947(n+1)])`
-/

namespace A044833.P13301885884333675333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044833.P13301885884333675333

/-! ## A044833.P261924657712411669

`∑[A070672(A268354(7*(n+1))²)]`
-/

namespace A044833.P261924657712411669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070672 (A268354 (7 * (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044833.P261924657712411669

/-!
# A044834: Positive integers having more base-8 runs of even length than odd.

The programs for A044834, there is no canonical definition to state claims against.
-/

/-! ## A044834.P5922454942639829036

`eq[0, A044948(A028310(n))]`
-/

namespace A044834.P5922454942639829036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044948 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044834.P5922454942639829036

/-! ## A044834.P7566655686251983869

`∑[A070969(Δ[A007094(n)])]`
-/

namespace A044834.P7566655686251983869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070969 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044834.P7566655686251983869

/-! ## A044834.P1082165051598054646

`∑[A000051(A000051(3^val(n+1, 8)))]`
-/

namespace A044834.P1082165051598054646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000051 (3 ^ SequenceMachineLib.valuation (n + 1) 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044834.P1082165051598054646

/-! ## A044834.P6827279154400853836

`∩[A033021(n+1), A366290(n+1)]`
-/

namespace A044834.P6827279154400853836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044834.P6827279154400853836

/-! ## A044834.P15696422507374569284

`∩[A033021(n+1), A260042(n+1)]`
-/

namespace A044834.P15696422507374569284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044834.P15696422507374569284

/-!
# A044835: Positive integers having more base-9 runs of even length than odd.

The programs for A044835, there is no canonical definition to state claims against.
-/

/-! ## A044835.P922706412419033899

`eq[0, A044949(A028310(n))]`
-/

namespace A044835.P922706412419033899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044835.P922706412419033899

/-! ## A044835.P10259140631487042891

`A014681(eq[0, A044949(n+1)])`
-/

namespace A044835.P10259140631487042891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044835.P10259140631487042891

/-! ## A044835.P6718531187670396674

`eq[0, A044949(A065190(n+1))]`
-/

namespace A044835.P6718531187670396674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044835.P6718531187670396674

/-! ## A044835.P7364121579638206130

`A114637(eq[0, A044949(n+1)])`
-/

namespace A044835.P7364121579638206130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044835.P7364121579638206130

/-!
# A044836: Positive integers having more base-10 runs of even length than odd.

The programs for A044836, there is no canonical definition to state claims against.
-/

/-! ## A044836.P13694743301498893141

`filter[A338754(n), A014306(#)]`
-/

namespace A044836.P13694743301498893141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A044836.P13694743301498893141

/-! ## A044836.P5205661908845953259

`filter[A338754(n), A043545(#)]`
-/

namespace A044836.P5205661908845953259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A044836.P5205661908845953259

/-! ## A044836.P5266366936344261715

`∑[A000265(Δ[A338754(n)])]`
-/

namespace A044836.P5266366936344261715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044836.P5266366936344261715

/-! ## A044836.P14877507157493040191

`∑[A007947(Δ[A338754(n)])]`
-/

namespace A044836.P14877507157493040191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044836.P14877507157493040191

/-! ## A044836.P16582511777951980701

`∑[A022998(Δ[A338754(n)])]`
-/

namespace A044836.P16582511777951980701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044836.P16582511777951980701

/-! ## A044836.P6394389190569019536

`∑[A142149(Δ[A338754(n)])]`
-/

namespace A044836.P6394389190569019536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044836.P6394389190569019536

/-! ## A044836.P8973223605552915708

`∑[A222254(Δ[A338754(n)])]`
-/

namespace A044836.P8973223605552915708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044836.P8973223605552915708

/-! ## A044836.P12675087252530406247

`∩[A301708(n), A338754(n)]`
-/

namespace A044836.P12675087252530406247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044836.P12675087252530406247

/-! ## A044836.P7778848887016951680

`∩[A301710(n), A338754(n)]`
-/

namespace A044836.P7778848887016951680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338754 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044836.P7778848887016951680

/-!
# A044837: Positive integers having more base-11 runs of even length than odd.

The programs for A044837, there is no canonical definition to state claims against.
-/

/-! ## A044837.P5005565521676309765

`∩[A033024(n+1), A270571(n+1)]`
-/

namespace A044837.P5005565521676309765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044837.P5005565521676309765

/-! ## A044837.P17454587243199152533

`∑[A358346(∑[A008593(2*n+1)])]`
-/

namespace A044837.P17454587243199152533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358346 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044837.P17454587243199152533

/-! ## A044837.P10591729675244747238

`∑[A091733(11^A070670(n+1))]`
-/

namespace A044837.P10591729675244747238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A070670 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044837.P10591729675244747238

/-! ## A044837.P16071847561662280705

`∑[11^A139551(A048505(n))+1]`
-/

namespace A044837.P16071847561662280705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A139551 (A048505 n).toNat : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044837.P16071847561662280705

/-!
# A044838: Positive integers having more base-12 runs of even length than odd.

The programs for A044838, there is no canonical definition to state claims against.
-/

/-! ## A044838.P16249992943315993839

`∑[A158480(A005708(A257565(n)))]`
-/

namespace A044838.P16249992943315993839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 (A005708 (A257565 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044838.P16249992943315993839

/-!
# A044839: Positive integers having more base-13 runs of even length than odd.

The programs for A044839, there is no canonical definition to state claims against.
-/

/-! ## A044839.P17113502709698441819

`∑[A072390(A341743(n)!)]`
-/

namespace A044839.P17113502709698441819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072390 (Nat.factorial (A341743 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044839.P17113502709698441819

/-!
# A044840: Positive integers having more base-14 runs of even length than odd.

The programs for A044840, there is no canonical definition to state claims against.
-/

/-! ## A044840.P14410674905756890150

`A033027(∑[A032949(n+1)^A297240(n+1)])`
-/

namespace A044840.P14410674905756890150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032949 (n + 1) : ℚ) ^ (A297240 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033027 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A044840.P14410674905756890150

/-! ## A044840.P328505216442780716

`∑[15*A346037(A320606(n+1))]`
-/

namespace A044840.P328505216442780716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A346037 (A320606 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044840.P328505216442780716

/-!
# A044842: Positive integers having more base-16 runs of even length than odd.

The programs for A044842, there is no canonical definition to state claims against.
-/

/-! ## A044842.P12921167381486857670

`∑[A016813((2*A008835(n+1))²)]`
-/

namespace A044842.P12921167381486857670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 ((2 * A008835 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044842.P12921167381486857670

/-!
# A044843: Positive integers having no fewer base-2 runs of even length than odd.

The programs for A044843, there is no canonical definition to state claims against.
-/

/-! ## A044843.P2544004002223502417

`∪[A044828(n+1), A044858(n+1)]`
-/

namespace A044843.P2544004002223502417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044843.P2544004002223502417

/-! ## A044843.P10418697033197132772

`lt[A162853(n)², A001196(n)]`
-/

namespace A044843.P10418697033197132772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P10418697033197132772

/-! ## A044843.P1819738244450602825

`lt[A162853(n)², 2*A224915(n)]`
-/

namespace A044843.P1819738244450602825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P1819738244450602825

/-! ## A044843.P17022920702405890271

`lt[A162853(n)², 3*A000695(n)]`
-/

namespace A044843.P17022920702405890271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P17022920702405890271

/-! ## A044843.P1435843974001677427

`lt[A026741(n)*A162853(n), n²]`
-/

namespace A044843.P1435843974001677427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A162853 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A044843.P1435843974001677427

/-! ## A044843.P15669366615151368833

`lt[A162853(n)², 3*(A098871(n)-1)]`
-/

namespace A044843.P15669366615151368833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A098871 n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P15669366615151368833

/-! ## A044843.P12045235840564168983

`lt[A162853(n), sqrt(3/2*A062880(n))]`
-/

namespace A044843.P12045235840564168983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 : ℚ) / 2 * (A062880 n : ℚ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A044843.P12045235840564168983

/-! ## A044843.P6764666953271850660

`lt[A098871(n)+A162853(n)², A145818(n+1)]`
-/

namespace A044843.P6764666953271850660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n + A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P6764666953271850660

/-! ## A044843.P11443313892565696092

`lt[A162853(n)², A001859(2*n)-A222423(2*n)]`
-/

namespace A044843.P11443313892565696092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 (2 * n) - A222423 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P11443313892565696092

/-! ## A044843.P9930238398133509779

`lt[A162853(n)², A036779(A047209(n+1))]`
-/

namespace A044843.P9930238398133509779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (A047209 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P9930238398133509779

/-! ## A044843.P4097624923680551219

`lt[A162853(n)², A036779(A032769(2*(n+1)))]`
-/

namespace A044843.P4097624923680551219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036779 (A032769 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044843.P4097624923680551219

/-!
# A044844: Positive integers having no fewer base-3 runs of even length than odd.

The programs for A044844, there is no canonical definition to state claims against.
-/

/-! ## A044844.P7481662756553350014

`∪[A044829(n+1), A044859(n+1)]`
-/

namespace A044844.P7481662756553350014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044844.P7481662756553350014

/-! ## A044844.P10044457469560561017

`eq[A008350(A060585(n)), A088951(n)]`
-/

namespace A044844.P10044457469560561017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008350 (A060585 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044844.P10044457469560561017

/-!
# A044845: Positive integers having no fewer base-4 runs of even length than odd.

The programs for A044845, there is no canonical definition to state claims against.
-/

/-! ## A044845.P3088489251074175038

`∪[A044830(n+1), A044860(n+1)]`
-/

namespace A044845.P3088489251074175038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044845.P3088489251074175038

/-! ## A044845.P341253043188708070

`lt[A044944(n+1), A044935(n+1)+1]+1`
-/

namespace A044845.P341253043188708070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A044845.P341253043188708070

/-! ## A044845.P6510643673326401095

`record[A289813(A044850(1+n))]`
-/

namespace A044845.P6510643673326401095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044850 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044845.P6510643673326401095

/-!
# A044846: Positive integers having no fewer base-5 runs of even length than odd.

The programs for A044846, there is no canonical definition to state claims against.
-/

/-! ## A044846.P11939395215171440229

`∪[A044831(n+1), A044861(n+1)]`
-/

namespace A044846.P11939395215171440229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044846.P11939395215171440229

/-!
# A044847: Positive integers having no fewer base-6 runs of even length than odd.

The programs for A044847, there is no canonical definition to state claims against.
-/

/-! ## A044847.P10575668038266054356

`∪[A044832(n+1), A044862(n+1)]`
-/

namespace A044847.P10575668038266054356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044847.P10575668038266054356

/-! ## A044847.P10126118091647202262

`lt[A044946(n+1), A044937(n+1)+1]+1`
-/

namespace A044847.P10126118091647202262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044937 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A044847.P10126118091647202262

/-! ## A044847.P8091910494666811461

`lt[A044928(A233583(1+n)), 0]`
-/

namespace A044847.P8091910494666811461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A233583 (1 + n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A044847.P8091910494666811461

/-!
# A044848: Positive integers having no fewer base-7 runs of even length than odd.

The programs for A044848, there is no canonical definition to state claims against.
-/

/-! ## A044848.P17643459501009423650

`∪[A044833(n+1), A044863(n+1)]`
-/

namespace A044848.P17643459501009423650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044848.P17643459501009423650

/-! ## A044848.P12981477848590280581

`lt[A044947(n+1), A044938(n+1)+1]+1`
-/

namespace A044848.P12981477848590280581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044938 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A044848.P12981477848590280581

/-! ## A044848.P6470339616154079662

`lt[A044929(A233583(1+n)), 0]`
-/

namespace A044848.P6470339616154079662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A233583 (1 + n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A044848.P6470339616154079662

/-!
# A044849: Positive integers having no fewer base-8 runs of even length than odd.

The programs for A044849, there is no canonical definition to state claims against.
-/

/-! ## A044849.P1756168376419971548

`∪[A044834(n+1), A044864(n+1)]`
-/

namespace A044849.P1756168376419971548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044849.P1756168376419971548

/-!
# A044850: Positive integers having no fewer base-9 runs of even length than odd.

The programs for A044850, there is no canonical definition to state claims against.
-/

/-! ## A044850.P8914682855812448983

`∪[A044835(1+n), A044865(n+1)]`
-/

namespace A044850.P8914682855812448983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044835 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044850.P8914682855812448983

/-!
# A044851: Positive integers having no fewer base-10 runs of even length than odd.

The programs for A044851, there is no canonical definition to state claims against.
-/

/-! ## A044851.P4940380349914840143

`∪[A044836(n+1), A044866(n+1)]`
-/

namespace A044851.P4940380349914840143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044851.P4940380349914840143

/-!
# A044852: Positive integers having no fewer base-11 runs of even length than odd.

The programs for A044852, there is no canonical definition to state claims against.
-/

/-! ## A044852.P1522276038181553508

`∪[A044837(n+1), A044867(n+1)]`
-/

namespace A044852.P1522276038181553508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044852.P1522276038181553508

/-! ## A044852.P6474626785746112616

`eq[2, A043285(A233583(n+1))]`
-/

namespace A044852.P6474626785746112616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043285 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044852.P6474626785746112616

/-! ## A044852.P5773844369824027263

`A141259(A365886(n+1)%A162694(n+1))`
-/

namespace A044852.P5773844369824027263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141259 (Int.tmod (A365886 (n + 1)) (A162694 (n + 1))).toNat

end

end A044852.P5773844369824027263

/-! ## A044852.P11509786889391201049

`∩[A048308(n), A367612(n+1)]`
-/

namespace A044852.P11509786889391201049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044852.P11509786889391201049

/-! ## A044852.P14605231160157320266

`∩[A044822(n+1), A367612(n+1)]`
-/

namespace A044852.P14605231160157320266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044852.P14605231160157320266

/-!
# A044853: Positive integers having no fewer base-12 runs of even length than odd.

The programs for A044853, there is no canonical definition to state claims against.
-/

/-! ## A044853.P5322218334904791732

`∪[A044838(1+n), A044868(n+1)]`
-/

namespace A044853.P5322218334904791732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044838 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044853.P5322218334904791732

/-! ## A044853.P5541446863444486833

`eq[2, A043286(A233583(n+1))]`
-/

namespace A044853.P5541446863444486833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043286 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044853.P5541446863444486833

/-! ## A044853.P12230502520353531151

`(13-A185284(3*n+1))*(n+1)`
-/

namespace A044853.P12230502520353531151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 - A185284 (3 * n + 1)) * (n + 1 : ℤ)

end

end A044853.P12230502520353531151

/-! ## A044853.P3389107567902188208

`A044823(A077168(n+1)+10)`
-/

namespace A044853.P3389107567902188208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044823 (A077168 (n + 1) + 10).toNat

end

end A044853.P3389107567902188208

/-! ## A044853.P1535020945097971365

`A056239(A011782(n+2))*A112126(n+4)`
-/

namespace A044853.P1535020945097971365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A011782 (n + 2)).toNat * A112126 (n + 4)

end

end A044853.P1535020945097971365

/-!
# A044854: Positive integers having no fewer base-13 runs of even length than odd.

The programs for A044854, there is no canonical definition to state claims against.
-/

/-! ## A044854.P18444487723418861135

`∪[A044839(1+n), A044869(n+1)]`
-/

namespace A044854.P18444487723418861135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044839 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044854.P18444487723418861135

/-! ## A044854.P6214172867118918232

`eq[2, A043287(A233583(n+1))]`
-/

namespace A044854.P6214172867118918232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043287 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044854.P6214172867118918232

/-! ## A044854.P2616530959098183108

`A044824(A077168(n)+12)`
-/

namespace A044854.P2616530959098183108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044824 (A077168 n + 12).toNat

end

end A044854.P2616530959098183108

/-! ## A044854.P18404066406494164846

`(n+1)%A356709(A344876(n+1)*n+5)+13*(n+1)`
-/

namespace A044854.P18404066406494164846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A356709 (A344876 (n + 1) * (n : ℤ) + 5).toNat) + (13 * (n + 1) : ℤ)

end

end A044854.P18404066406494164846

/-!
# A044855: Positive integers having no fewer base-14 runs of even length than odd.

The programs for A044855, there is no canonical definition to state claims against.
-/

/-! ## A044855.P3630596842382493967

`∪[A044840(n+1), A044870(n+1)]`
-/

namespace A044855.P3630596842382493967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044855.P3630596842382493967

/-! ## A044855.P8274748484486087913

`eq[2, A043288(A233583(n+1))]`
-/

namespace A044855.P8274748484486087913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044855.P8274748484486087913

/-! ## A044855.P5259813232077257304

`eq[2, A043288(A088917(n²)+n)]`
-/

namespace A044855.P5259813232077257304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043288 (A088917 (n ^ 2) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044855.P5259813232077257304

/-! ## A044855.P3128331111849984204

`A044825(A187829(n+1)+13)`
-/

namespace A044855.P3128331111849984204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044825 (A187829 (n + 1) + 13).toNat

end

end A044855.P3128331111849984204

/-!
# A044856: Positive integers having no fewer base-15 runs of even length than odd.

The programs for A044856, there is no canonical definition to state claims against.
-/

/-! ## A044856.P17129782701200212406

`∪[A044841(n+1), A044871(n+1)]`
-/

namespace A044856.P17129782701200212406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044856.P17129782701200212406

/-! ## A044856.P50811131649874622

`eq[2, A043289(A233583(n+1))]`
-/

namespace A044856.P50811131649874622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043289 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044856.P50811131649874622

/-! ## A044856.P8568142364688116019

`(n+1)*(16-A005088(A081123(n)))`
-/

namespace A044856.P8568142364688116019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (16 - A005088 (A081123 n).toNat)

end

end A044856.P8568142364688116019

/-! ## A044856.P14932202776878433277

`(n+1)*(16-A143053(A185274(n)²))`
-/

namespace A044856.P14932202776878433277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (16 - A143053 (A185274 n ^ 2).toNat)

end

end A044856.P14932202776878433277

/-! ## A044856.P2927850125128135774

`∩[A048312(n), A359831(n+1)]`
-/

namespace A044856.P2927850125128135774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044856.P2927850125128135774

/-!
# A044857: Positive integers having no fewer base-16 runs of even length than odd.

The programs for A044857, there is no canonical definition to state claims against.
-/

/-! ## A044857.P8221627646329500955

`∪[A044842(n+1), A044872(n+1)]`
-/

namespace A044857.P8221627646329500955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A044857.P8221627646329500955

/-! ## A044857.P11906429890031437694

`eq[2, A043290(A233583(n+1))]`
-/

namespace A044857.P11906429890031437694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044857.P11906429890031437694

/-! ## A044857.P9157359082382088784

`(17-A107846(A038754(n)))*(n+1)`
-/

namespace A044857.P9157359082382088784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 - A107846 (A038754 n).toNat) * (n + 1 : ℤ)

end

end A044857.P9157359082382088784

/-! ## A044857.P1689079129488444851

`(n+1)*(17-A185294(A342191(n+1)))`
-/

namespace A044857.P1689079129488444851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (17 - A185294 (A342191 (n + 1)).toNat)

end

end A044857.P1689079129488444851

/-!
# A044858: Positive integers having the same number of base-2 runs of odd length as even.

The programs for A044858, the canonical program `A044858.P18319549135852801705` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044858 has offset 1).

The definition of A044858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044858.P18319549135852801705

`eq[A044933(n+1), A044942(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A044858

/-- `eq[A044933(n+1), A044942(n+1)]+1` -/
def P18319549135852801705.Spec : Prop :=
  ∀ n, (P18319549135852801705.a n : ℤ) = A044858 (n + 1)

theorem P18319549135852801705.correct : P18319549135852801705.Spec := by
  intro n
  simp only [A044858, Nat.add_sub_cancel]

end A044858

/-! ## A044858.P13303821296836926492

`A020725(eq[A044933(n+1), A044942(n+1)])`
-/

namespace A044858.P13303821296836926492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044858.P13303821296836926492

namespace A044858

/-- `A020725(eq[A044933(n+1), A044942(n+1)])` -/
def P13303821296836926492.Spec : Prop :=
  ∀ n, P13303821296836926492.a n = A044858 (n + 1)

end A044858

/-! ## A044858.P16797953571254927879

`A061767(eq[A044933(n+1), A044942(n+1)])`
-/

namespace A044858.P16797953571254927879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044858.P16797953571254927879

namespace A044858

/-- `A061767(eq[A044933(n+1), A044942(n+1)])` -/
def P16797953571254927879.Spec : Prop :=
  ∀ n, P16797953571254927879.a n = A044858 (n + 1)

end A044858

/-! ## A044858.P17002971002377310026

`A133265(eq[A044933(n+1), A044942(n+1)])`
-/

namespace A044858.P17002971002377310026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044858.P17002971002377310026

namespace A044858

/-- `A133265(eq[A044933(n+1), A044942(n+1)])` -/
def P17002971002377310026.Spec : Prop :=
  ∀ n, P17002971002377310026.a n = A044858 (n + 1)

end A044858

/-! ## A044858.P14944637021484425264

`record[A292371(A044860(n+1))]`
-/

namespace A044858.P14944637021484425264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A044860 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044858.P14944637021484425264

namespace A044858

/-- `record[A292371(A044860(n+1))]` -/
def P14944637021484425264.Spec : Prop :=
  ∀ n, P14944637021484425264.a n = A044858 (n + 1)

end A044858

/-!
# A044859: Positive integers having the same number of base-3 runs of odd length as even.

The programs for A044859, the canonical program `A044859.P6733352922850868918` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044859 has offset 1).

The definition of A044859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044859.P6733352922850868918

`eq[A044934(n+1), A044943(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A044859

/-- `eq[A044934(n+1), A044943(n+1)]+1` -/
def P6733352922850868918.Spec : Prop :=
  ∀ n, (P6733352922850868918.a n : ℤ) = A044859 (n + 1)

theorem P6733352922850868918.correct : P6733352922850868918.Spec := by
  intro n
  simp only [A044859, Nat.add_sub_cancel]

end A044859

/-! ## A044859.P2561097601863600147

`A020725(eq[A044934(n+1), A044943(n+1)])`
-/

namespace A044859.P2561097601863600147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A044859.P2561097601863600147

namespace A044859

/-- `A020725(eq[A044934(n+1), A044943(n+1)])` -/
def P2561097601863600147.Spec : Prop :=
  ∀ n, P2561097601863600147.a n = A044859 (n + 1)

end A044859

/-!
# A044860: Positive integers having the same number of base-4 runs of odd length as even.

The programs for A044860, there is no canonical definition to state claims against.
-/

/-! ## A044860.P14705998517832875481

`eq[A044935(n+1), A044944(n+1)]+1`
-/

namespace A044860.P14705998517832875481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044860.P14705998517832875481

/-! ## A044860.P3920651900892599141

`record[A289813(A044865(n+1))]`
-/

namespace A044860.P3920651900892599141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044860.P3920651900892599141

/-! ## A044860.P4384498261158260223

`record[A292371(A044872(n+1))]`
-/

namespace A044860.P4384498261158260223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A044872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044860.P4384498261158260223

/-! ## A044860.P11726762500793623651

`record[A044845(A304038(n+2)+3)]`
-/

namespace A044860.P11726762500793623651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044845 (A304038 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044860.P11726762500793623651

/-! ## A044860.P994812976654230134

`record[A043830(A186233(n+1)+10)]`
-/

namespace A044860.P994812976654230134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043830 (A186233 (n + 1) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044860.P994812976654230134

/-!
# A044861: Positive integers having the same number of base-5 runs of odd length as even.

The programs for A044861, there is no canonical definition to state claims against.
-/

/-! ## A044861.P3757767050698119526

`eq[A044936(n+1), A044945(n+1)]+1`
-/

namespace A044861.P3757767050698119526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044945 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044861.P3757767050698119526

/-! ## A044861.P7747742101847435547

`eq[-1, A044927(1+n)]+1`
-/

namespace A044861.P7747742101847435547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044861.P7747742101847435547

/-! ## A044861.P15884713618265295733

`lt[(A044927(n+2)+1)², 1]+2`
-/

namespace A044861.P15884713618265295733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A044927 (n + 2) + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A044861.P15884713618265295733

/-! ## A044861.P8158790387551592525

`eq[-1, A044927(A028310(n))]`
-/

namespace A044861.P8158790387551592525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044861.P8158790387551592525

/-! ## A044861.P11066110788373217390

`eq[A110592(n)+1, A043557(n)²]`
-/

namespace A044861.P11066110788373217390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044861.P11066110788373217390

/-!
# A044862: Positive integers having the same number of base-6 runs of odd length as even.

The programs for A044862, there is no canonical definition to state claims against.
-/

/-! ## A044862.P8057636270582169381

`eq[A044937(n+1), A044946(n+1)]+1`
-/

namespace A044862.P8057636270582169381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044862.P8057636270582169381

/-! ## A044862.P6858727117670779447

`eq[1, -A044928(1+n)]+1`
-/

namespace A044862.P6858727117670779447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A044928 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044862.P6858727117670779447

/-! ## A044862.P16832931910785767012

`eq[0, A044928(n+1)+1]+1`
-/

namespace A044862.P16832931910785767012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044862.P16832931910785767012

/-! ## A044862.P13891378315975445767

`eq[1, -A044928(A028310(n))]`
-/

namespace A044862.P13891378315975445767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A044928 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044862.P13891378315975445767

/-! ## A044862.P10153153996136328015

`eq[-1, A044928(A233583(n+1))]`
-/

namespace A044862.P10153153996136328015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044862.P10153153996136328015

/-! ## A044862.P13122856181821228955

`eq[-1, A044928(A138153(n+1))]`
-/

namespace A044862.P13122856181821228955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044862.P13122856181821228955

/-! ## A044862.P16862448511107036173

`A011760(eq[1, A044928(n+1)+2])`
-/

namespace A044862.P16862448511107036173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044862.P16862448511107036173

/-! ## A044862.P16390147084560796223

`A020725(eq[1, A044928(n+1)+2])`
-/

namespace A044862.P16390147084560796223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044862.P16390147084560796223

/-! ## A044862.P16205854122545150628

`eq[A044928(n+1), A057428(n)]+1`
-/

namespace A044862.P16205854122545150628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044862.P16205854122545150628

/-!
# A044863: Positive integers having the same number of base-7 runs of odd length as even.

The programs for A044863, there is no canonical definition to state claims against.
-/

/-! ## A044863.P14082798493560832886

`eq[1, A044929(n+4)+2]+4`
-/

namespace A044863.P14082798493560832886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (n + 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A044863.P14082798493560832886

/-! ## A044863.P18219170505220820488

`eq[1, A044929(A028310(n))+2]`
-/

namespace A044863.P18219170505220820488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044863.P18219170505220820488

/-! ## A044863.P14848227093727019439

`eq[1, A044929(A138153(n+1))+2]`
-/

namespace A044863.P14848227093727019439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A138153 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044863.P14848227093727019439

/-! ## A044863.P3212101569739506251

`eq[1, A044929(A233583(n+1))+2]`
-/

namespace A044863.P3212101569739506251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A233583 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044863.P3212101569739506251

/-! ## A044863.P16596116605698722744

`eq[A044929(n+1), A057428(n)]+1`
-/

namespace A044863.P16596116605698722744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044863.P16596116605698722744

/-! ## A044863.P13107363616605948709

`eq[A044929(A028310(n)), A057428(n)]`
-/

namespace A044863.P13107363616605948709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044863.P13107363616605948709

/-! ## A044863.P6121899931118012655

`eq[A044929(A138153(n+1)), A057428(n)]`
-/

namespace A044863.P6121899931118012655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A138153 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044863.P6121899931118012655

/-! ## A044863.P9925867113264596698

`eq[A044929(A233583(n+1)), A057428(n)]`
-/

namespace A044863.P9925867113264596698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044863.P9925867113264596698

/-! ## A044863.P5904588570061540563

`eq[1, A000007(n)-A044929(A028310(n))]`
-/

namespace A044863.P5904588570061540563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A044929 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044863.P5904588570061540563

/-!
# A044864: Positive integers having the same number of base-8 runs of odd length as even.

The programs for A044864, there is no canonical definition to state claims against.
-/

/-! ## A044864.P773799314162131837

`eq[1, A044930(A028310(n))+2]`
-/

namespace A044864.P773799314162131837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044864.P773799314162131837

/-! ## A044864.P12085793452786402401

`eq[-1, A044930(A233583(n+1))]`
-/

namespace A044864.P12085793452786402401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044864.P12085793452786402401

/-! ## A044864.P5919897999821720474

`eq[1, A044930(A138153(n+1))+2]`
-/

namespace A044864.P5919897999821720474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A138153 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044864.P5919897999821720474

/-! ## A044864.P6448312727932801436

`eq[A044930(n+1), A057428(n)]+1`
-/

namespace A044864.P6448312727932801436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044864.P6448312727932801436

/-! ## A044864.P209090861440660561

`eq[A044930(A028310(n)), A057428(n)]`
-/

namespace A044864.P209090861440660561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044864.P209090861440660561

/-! ## A044864.P3333895027330823351

`eq[A044930(A138153(n+1)), A057428(n)]`
-/

namespace A044864.P3333895027330823351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A138153 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044864.P3333895027330823351

/-!
# A044865: Positive integers having the same number of base-9 runs of odd length as even.

The programs for A044865, there is no canonical definition to state claims against.
-/

/-! ## A044865.P9993836900416386105

`eq[A044940(n+1), A044949(n+1)]+1`
-/

namespace A044865.P9993836900416386105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044865.P9993836900416386105

/-! ## A044865.P4957917675840774077

`eq[1, A044931(n+1)+2]+1`
-/

namespace A044865.P4957917675840774077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044865.P4957917675840774077

/-! ## A044865.P12979807895762655895

`eq[1, A044931(A028310(n))+2]`
-/

namespace A044865.P12979807895762655895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044865.P12979807895762655895

/-! ## A044865.P17554123269774414698

`eq[1, -A044931(A233583(n+1))]`
-/

namespace A044865.P17554123269774414698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A044931 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044865.P17554123269774414698

/-! ## A044865.P9188875712282124516

`A020725(eq[1, A044931(n+1)+2])`
-/

namespace A044865.P9188875712282124516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044865.P9188875712282124516

/-! ## A044865.P15846326935564583217

`eq[A044931(n+1), A057428(n)]+1`
-/

namespace A044865.P15846326935564583217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044865.P15846326935564583217

/-! ## A044865.P13690023224910797786

`eq[A044931(A028310(n)), A057428(n)]`
-/

namespace A044865.P13690023224910797786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044865.P13690023224910797786

/-! ## A044865.P136416114432727361

`eq[A044931(A233583(n+1)), A057428(n)]`
-/

namespace A044865.P136416114432727361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044865.P136416114432727361

/-!
# A044866: Positive integers having the same number of base-10 runs of odd length as even.

The programs for A044866, the canonical program `A044866.P1466294866591035898` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044866 has offset 1).

The definition of A044866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044866.P5289591229474775208

`eq[1, A064834(A139337(n))]`
-/

namespace A044866.P5289591229474775208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044866.P5289591229474775208

namespace A044866

/-- `eq[1, A064834(A139337(n))]` -/
def P5289591229474775208.Spec : Prop :=
  ∀ n, (P5289591229474775208.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P14185809084067834745

`eq[1, -A044932(A028310(n))]`
-/

namespace A044866.P14185809084067834745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A044932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044866.P14185809084067834745

namespace A044866

/-- `eq[1, -A044932(A028310(n))]` -/
def P14185809084067834745.Spec : Prop :=
  ∀ n, (P14185809084067834745.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P7896136813737455893

`eq[10, A076399(A139337(n)+17)]`
-/

namespace A044866.P7896136813737455893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076399 (A139337 n + 17).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044866.P7896136813737455893

namespace A044866

/-- `eq[10, A076399(A139337(n)+17)]` -/
def P7896136813737455893.Spec : Prop :=
  ∀ n, (P7896136813737455893.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P1466294866591035898

`eq[A055642(n)+1, A043562(n)²]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A044866

/-- `eq[A055642(n)+1, A043562(n)²]` -/
def P1466294866591035898.Spec : Prop :=
  ∀ n, (P1466294866591035898.a n : ℤ) = A044866 (n + 1)

theorem P1466294866591035898.correct : P1466294866591035898.Spec := by
  intro n
  simp only [A044866, Nat.add_sub_cancel]

end A044866

/-! ## A044866.P11239727271733027625

`A020725(eq[1, A044932(n+1)+2])`
-/

namespace A044866.P11239727271733027625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044866.P11239727271733027625

namespace A044866

/-- `A020725(eq[1, A044932(n+1)+2])` -/
def P11239727271733027625.Spec : Prop :=
  ∀ n, P11239727271733027625.a n = A044866 (n + 1)

end A044866

/-! ## A044866.P11826566045078788428

`A153152(eq[1, A044932(n+1)+2])`
-/

namespace A044866.P11826566045078788428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044866.P11826566045078788428

namespace A044866

/-- `A153152(eq[1, A044932(n+1)+2])` -/
def P11826566045078788428.Spec : Prop :=
  ∀ n, P11826566045078788428.a n = A044866 (n + 1)

end A044866

/-! ## A044866.P15131707107854805166

`eq[A044932(n+1), A057428(n)]+1`
-/

namespace A044866.P15131707107854805166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A044866.P15131707107854805166

namespace A044866

/-- `eq[A044932(n+1), A057428(n)]+1` -/
def P15131707107854805166.Spec : Prop :=
  ∀ n, (P15131707107854805166.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P15928413155557889556

`eq[A044932(A028310(n)), A057428(n)]`
-/

namespace A044866.P15928413155557889556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044866.P15928413155557889556

namespace A044866

/-- `eq[A044932(A028310(n)), A057428(n)]` -/
def P15928413155557889556.Spec : Prop :=
  ∀ n, (P15928413155557889556.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P8345355562122054410

`eq[A055642(n), A096915(A139337(n))]`
-/

namespace A044866.P8345355562122054410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044866.P8345355562122054410

namespace A044866

/-- `eq[A055642(n), A096915(A139337(n))]` -/
def P8345355562122054410.Spec : Prop :=
  ∀ n, (P8345355562122054410.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P16933953641861121478

`eq[A043562(n), A053204(A332550(n))]`
-/

namespace A044866.P16933953641861121478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044866.P16933953641861121478

namespace A044866

/-- `eq[A043562(n), A053204(A332550(n))]` -/
def P16933953641861121478.Spec : Prop :=
  ∀ n, (P16933953641861121478.a n : ℤ) = A044866 (n + 1)

end A044866

/-! ## A044866.P16091994521811057424

`eq[A107846(n), A321802(A139337(n))]`
-/

namespace A044866.P16091994521811057424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044866.P16091994521811057424

namespace A044866

/-- `eq[A107846(n), A321802(A139337(n))]` -/
def P16091994521811057424.Spec : Prop :=
  ∀ n, (P16091994521811057424.a n : ℤ) = A044866 (n + 1)

end A044866

/-!
# A044868: Positive integers having the same number of base-12 runs of odd length as even.

The programs for A044868, there is no canonical definition to state claims against.
-/

/-! ## A044868.P16283134123732033225

`A044853(A077168(n)+11)`
-/

namespace A044868.P16283134123732033225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044853 (A077168 n + 11).toNat

end

end A044868.P16283134123732033225

/-!
# A044869: Positive integers having the same number of base-13 runs of odd length as even.

The programs for A044869, there is no canonical definition to state claims against.
-/

/-! ## A044869.P9796080984285191332

`A044854(eq[5, A002260(n+1)]-A052905(n))`
-/

namespace A044869.P9796080984285191332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044854 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A052905 n).toNat

end

end A044869.P9796080984285191332

/-! ## A044869.P4522555252439347989

`A044854(A077168(n)+12)`
-/

namespace A044869.P4522555252439347989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044854 (A077168 n + 12).toNat

end

end A044869.P4522555252439347989

/-!
# A044870: Positive integers having the same number of base-14 runs of odd length as even.

The programs for A044870, there is no canonical definition to state claims against.
-/

/-! ## A044870.P1795069658237910803

`A044855(A187829(n+1)+13)`
-/

namespace A044870.P1795069658237910803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044855 (A187829 (n + 1) + 13).toNat

end

end A044870.P1795069658237910803

/-! ## A044870.P2405049787488191610

`∩[A044855(n+1), A114022(n)]`
-/

namespace A044870.P2405049787488191610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044870.P2405049787488191610

/-!
# A044873: Numbers having, in base 2, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044873, there is no canonical definition to state claims against.
-/

/-! ## A044873.P16777861256726876185

`eq[0, A044924(n+1)]+1`
-/

namespace A044873.P16777861256726876185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044873.P16777861256726876185

/-! ## A044873.P15477151634133716197

`eq[0, A044924(A028310(n))]`
-/

namespace A044873.P15477151634133716197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044924 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044873.P15477151634133716197

/-! ## A044873.P9925932953531800739

`A020725(eq[0, A044924(n+1)])`
-/

namespace A044873.P9925932953531800739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044873.P9925932953531800739

/-! ## A044873.P12725976426761409208

`A065475(eq[0, A044924(n+1)])`
-/

namespace A044873.P12725976426761409208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044873.P12725976426761409208

/-! ## A044873.P17919682243322850089

`eq[0, A044924(A123108(2*n))]`
-/

namespace A044873.P17919682243322850089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044924 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044873.P17919682243322850089

/-!
# A044874: Numbers having, in base 3, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044874, there is no canonical definition to state claims against.
-/

/-! ## A044874.P3967672211476336798

`eq[0, A044925(n+1)]+1`
-/

namespace A044874.P3967672211476336798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044874.P3967672211476336798

/-! ## A044874.P12072258411641601809

`eq[0, A044925(A028310(n))]`
-/

namespace A044874.P12072258411641601809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044874.P12072258411641601809

/-! ## A044874.P17719726249376842028

`A011760(eq[0, A044925(n+1)])`
-/

namespace A044874.P17719726249376842028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044874.P17719726249376842028

/-! ## A044874.P17105057558368517329

`A065475(eq[0, A044925(n+1)])`
-/

namespace A044874.P17105057558368517329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044874.P17105057558368517329

/-! ## A044874.P8970758782840266960

`eq[0, A044925(A123108(2*n))]`
-/

namespace A044874.P8970758782840266960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044925 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044874.P8970758782840266960

/-!
# A044875: Numbers having, in base 4, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044875, there is no canonical definition to state claims against.
-/

/-! ## A044875.P17958573409329664753

`eq[0, A044926(n+1)]+1`
-/

namespace A044875.P17958573409329664753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044875.P17958573409329664753

/-! ## A044875.P11448994066292377922

`eq[0, A044926(A028310(n))]`
-/

namespace A044875.P11448994066292377922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044875.P11448994066292377922

/-! ## A044875.P9517964991050702809

`A011760(eq[0, A044926(n+1)])`
-/

namespace A044875.P9517964991050702809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044875.P9517964991050702809

/-! ## A044875.P3135687902948154639

`A020725(eq[0, A044926(n+1)])`
-/

namespace A044875.P3135687902948154639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044875.P3135687902948154639

/-! ## A044875.P5635642397535579595

`A063660(eq[0, A044926(n+1)])`
-/

namespace A044875.P5635642397535579595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044875.P5635642397535579595

/-! ## A044875.P17501898155559528465

`A065475(eq[0, A044926(n+1)])`
-/

namespace A044875.P17501898155559528465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044875.P17501898155559528465

/-! ## A044875.P710278312422818317

`A153152(eq[0, A044926(n+1)])`
-/

namespace A044875.P710278312422818317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044875.P710278312422818317

/-! ## A044875.P16680194607612383142

`eq[0, A044926(A233583(n+1))]`
-/

namespace A044875.P16680194607612383142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044926 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044875.P16680194607612383142

/-! ## A044875.P301945429861300823

`eq[(1-A043556(n))², A110591(n)]`
-/

namespace A044875.P301945429861300823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A043556 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044875.P301945429861300823

/-!
# A044876: Numbers having, in base 5, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044876, the canonical program `A044876.P485283884108189588` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A044876 has offset 1).

The definition of A044876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A044876.P5179089066355260252

`eq[0, A044927(n+1)]+1`
-/

namespace A044876.P5179089066355260252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A044876.P5179089066355260252

namespace A044876

/-- `eq[0, A044927(n+1)]+1` -/
def P5179089066355260252.Spec : Prop :=
  ∀ n, (P5179089066355260252.a n : ℤ) = A044876 (n + 1)

end A044876

/-! ## A044876.P8139505791692712934

`eq[0, A044927(A028310(n))]`
-/

namespace A044876.P8139505791692712934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044876.P8139505791692712934

namespace A044876

/-- `eq[0, A044927(A028310(n))]` -/
def P8139505791692712934.Spec : Prop :=
  ∀ n, (P8139505791692712934.a n : ℤ) = A044876 (n + 1)

end A044876

/-! ## A044876.P6108451561721580774

`A011760(eq[0, A044927(n+1)])`
-/

namespace A044876.P6108451561721580774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044876.P6108451561721580774

namespace A044876

/-- `A011760(eq[0, A044927(n+1)])` -/
def P6108451561721580774.Spec : Prop :=
  ∀ n, P6108451561721580774.a n = A044876 (n + 1)

end A044876

/-! ## A044876.P8088253757672255011

`A020725(eq[0, A044927(n+1)])`
-/

namespace A044876.P8088253757672255011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044876.P8088253757672255011

namespace A044876

/-- `A020725(eq[0, A044927(n+1)])` -/
def P8088253757672255011.Spec : Prop :=
  ∀ n, P8088253757672255011.a n = A044876 (n + 1)

end A044876

/-! ## A044876.P15594500575539041277

`A065475(eq[0, A044927(n+1)])`
-/

namespace A044876.P15594500575539041277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044876.P15594500575539041277

namespace A044876

/-- `A065475(eq[0, A044927(n+1)])` -/
def P15594500575539041277.Spec : Prop :=
  ∀ n, P15594500575539041277.a n = A044876 (n + 1)

end A044876

/-! ## A044876.P6105146234778367098

`eq[0, A044927(A138153(n+1))]`
-/

namespace A044876.P6105146234778367098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044876.P6105146234778367098

namespace A044876

/-- `eq[0, A044927(A138153(n+1))]` -/
def P6105146234778367098.Spec : Prop :=
  ∀ n, (P6105146234778367098.a n : ℤ) = A044876 (n + 1)

end A044876

/-! ## A044876.P11745059882962199711

`eq[0, A044927(A233583(n+1))]`
-/

namespace A044876.P11745059882962199711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044876.P11745059882962199711

namespace A044876

/-- `eq[0, A044927(A233583(n+1))]` -/
def P11745059882962199711.Spec : Prop :=
  ∀ n, (P11745059882962199711.a n : ℤ) = A044876 (n + 1)

end A044876

/-! ## A044876.P3708918380408329551

`eq[0, A044927(A065033(2*n))]`
-/

namespace A044876.P3708918380408329551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044927 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044876.P3708918380408329551

namespace A044876

/-- `eq[0, A044927(A065033(2*n))]` -/
def P3708918380408329551.Spec : Prop :=
  ∀ n, (P3708918380408329551.a n : ℤ) = A044876 (n + 1)

end A044876

/-! ## A044876.P485283884108189588

`eq[(1-A043557(n))², A110592(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A044876

/-- `eq[(1-A043557(n))², A110592(n)]` -/
def P485283884108189588.Spec : Prop :=
  ∀ n, (P485283884108189588.a n : ℤ) = A044876 (n + 1)

theorem P485283884108189588.correct : P485283884108189588.Spec := by
  intro n
  simp only [A044876, Nat.add_sub_cancel]

end A044876

/-!
# A044877: Numbers having, in base 6, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044877, there is no canonical definition to state claims against.
-/

/-! ## A044877.P89995898642342929

`lt[A044928(n+1)², 1]+1`
-/

namespace A044877.P89995898642342929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A044877.P89995898642342929

/-! ## A044877.P16010572657009295499

`eq[0, A044928(A028310(n))]`
-/

namespace A044877.P16010572657009295499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044877.P16010572657009295499

/-! ## A044877.P17460718906518272791

`A011760(eq[0, A044928(n+1)])`
-/

namespace A044877.P17460718906518272791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044877.P17460718906518272791

/-! ## A044877.P10152012763820296665

`A020725(eq[0, A044928(n+1)])`
-/

namespace A044877.P10152012763820296665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044877.P10152012763820296665

/-! ## A044877.P16451966782036213248

`eq[0, A044928(A138153(n+1))]`
-/

namespace A044877.P16451966782036213248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044877.P16451966782036213248

/-! ## A044877.P4397786974642531494

`eq[0, A044928(A233583(n+1))]`
-/

namespace A044877.P4397786974642531494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044928 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044877.P4397786974642531494

/-!
# A044878: Numbers having, in base 7, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044878, there is no canonical definition to state claims against.
-/

/-! ## A044878.P13270549414860648536

`eq[0, A044929(A028310(n))]`
-/

namespace A044878.P13270549414860648536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044878.P13270549414860648536

/-! ## A044878.P14279387612538187060

`eq[0, A044929(A233583(n+1))]`
-/

namespace A044878.P14279387612538187060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044929 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044878.P14279387612538187060

/-! ## A044878.P2151777308213651911

`eq[7, A084938(A230257(n+1))]`
-/

namespace A044878.P2151777308213651911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (A230257 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044878.P2151777308213651911

/-!
# A044879: Numbers having, in base 8, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044879, there is no canonical definition to state claims against.
-/

/-! ## A044879.P4905405414093097727

`eq[0, A044930(round(acot(n)+n))]`
-/

namespace A044879.P4905405414093097727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044879.P4905405414093097727

/-! ## A044879.P15809996201614693568

`eq[0, A044930(A028310(n))]`
-/

namespace A044879.P15809996201614693568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044879.P15809996201614693568

/-! ## A044879.P367849855047124643

`eq[0, A044930(A233583(n+1))]`
-/

namespace A044879.P367849855047124643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044930 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044879.P367849855047124643

/-! ## A044879.P17517328900060272384

`A296706(A112820(n+1)+2)`
-/

namespace A044879.P17517328900060272384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296706 (A112820 (n + 1) + 2).toNat

end

end A044879.P17517328900060272384

/-! ## A044879.P15995916031459762625

`A296706(A112820(n+3))`
-/

namespace A044879.P15995916031459762625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296706 (A112820 (n + 3)).toNat

end

end A044879.P15995916031459762625

/-!
# A044880: In base 9, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044880, there is no canonical definition to state claims against.
-/

/-! ## A044880.P7285118778907107837

`eq[0, A044931(A028310(n))]`
-/

namespace A044880.P7285118778907107837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044880.P7285118778907107837

/-! ## A044880.P5786039296049114608

`A020725(eq[0, A044931(n+1)])`
-/

namespace A044880.P5786039296049114608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044880.P5786039296049114608

/-! ## A044880.P7208578554789464155

`eq[0, A044931(A233583(n+1))]`
-/

namespace A044880.P7208578554789464155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044931 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044880.P7208578554789464155

/-! ## A044880.P18377571035854774193

`A317492(n+1)+A054259(A077728(n+1))`
-/

namespace A044880.P18377571035854774193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1) + A054259 (A077728 (n + 1)).toNat

end

end A044880.P18377571035854774193

/-!
# A044881: Numbers having, in base 10, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044881, there is no canonical definition to state claims against.
-/

/-! ## A044881.P5674035420957632597

`eq[0, A044932(A028310(n))]`
-/

namespace A044881.P5674035420957632597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044881.P5674035420957632597

/-! ## A044881.P3878725350601624698

`A020725(eq[0, A044932(n+1)])`
-/

namespace A044881.P3878725350601624698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044881.P3878725350601624698

/-! ## A044881.P248914862113821352

`A153152(eq[0, A044932(n+1)])`
-/

namespace A044881.P248914862113821352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044881.P248914862113821352

/-! ## A044881.P5802618398575804016

`A296712(n+1)+A038459(A028896(3*n+1))`
-/

namespace A044881.P5802618398575804016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (n + 1) + A038459 (A028896 (3 * n + 1)).toNat

end

end A044881.P5802618398575804016

/-! ## A044881.P7992613793420623880

`A296712(n+1)+A038459(A169967(n+2))`
-/

namespace A044881.P7992613793420623880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (n + 1) + A038459 (A169967 (n + 2)).toNat

end

end A044881.P7992613793420623880

/-!
# A044885: Numbers having, in base 14, (sum of even run lengths)=(sum of odd run lengths).

The programs for A044885, there is no canonical definition to state claims against.
-/

/-! ## A044885.P17143240786771490037

`A114768(A165226(2*n+3))+A044825(n+1)`
-/

namespace A044885.P17143240786771490037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114768 (A165226 (2 * n + 3)).toNat + A044825 (n + 1)

end

end A044885.P17143240786771490037

/-!
# A044888: Numbers whose base-2 run lengths alternate: even, odd, even, ...

The programs for A044888, there is no canonical definition to state claims against.
-/

/-! ## A044888.P1924669888126534761

`eq[A000007(n), A309952(A266150(n))]`
-/

namespace A044888.P1924669888126534761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A266150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044888.P1924669888126534761

/-! ## A044888.P740461958465369248

`eq[A000038(n), A309952(A266150(n))]`
-/

namespace A044888.P740461958465369248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A266150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044888.P740461958465369248

/-! ## A044888.P8727540768435194332

`eq[A266151(n), A319419(A266150(n))]`
-/

namespace A044888.P8727540768435194332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (A266150 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044888.P8727540768435194332

/-! ## A044888.P3826275577369004961

`record[A292371(A044890(n+1))]`
-/

namespace A044888.P3826275577369004961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A044890 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044888.P3826275577369004961

/-!
# A044890: Base-4 run lengths alternate: even, odd, even,...

The programs for A044890, there is no canonical definition to state claims against.
-/

/-! ## A044890.P12659627926142041596

`record[A289813(A044895(n+1))]`
-/

namespace A044890.P12659627926142041596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A044895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044890.P12659627926142041596

/-! ## A044890.P12999761720306008664

`record[A292371(A044902(n+1))]`
-/

namespace A044890.P12999761720306008664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A044902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044890.P12999761720306008664

/-! ## A044890.P14252619696460749587

`∩[A037977(n+1), A048315(n)]`
-/

namespace A044890.P14252619696460749587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048315 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044890.P14252619696460749587

/-!
# A044891: Base-5 run lengths alternate: even, odd, even,...

The programs for A044891, there is no canonical definition to state claims against.
-/

/-! ## A044891.P110529593629794099

`∩[A037981(n+1), A048316(n)]`
-/

namespace A044891.P110529593629794099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048316 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044891.P110529593629794099

/-!
# A044892: Base-6 run lengths alternate: even, odd, even,...

The programs for A044892, there is no canonical definition to state claims against.
-/

/-! ## A044892.P13323932833394172138

`∩[A037985(n+1), A048317(n)]`
-/

namespace A044892.P13323932833394172138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044892.P13323932833394172138

/-! ## A044892.P3954039701544403731

`∑[A001204(∑[A241702(n+1)])]`
-/

namespace A044892.P3954039701544403731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241702 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044892.P3954039701544403731

/-! ## A044892.P11036967506729827521

`lt[A106608(n), lt[A109706(n), 6]]`
-/

namespace A044892.P11036967506729827521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109706 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A044892.P11036967506729827521

/-! ## A044892.P16565278061105363341

`∑[A038194(A324235(n+1)+4)]`
-/

namespace A044892.P16565278061105363341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (A324235 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044892.P16565278061105363341

/-! ## A044892.P15699750328302023040

`∑[A014963(A267408(n+1)+6)]`
-/

namespace A044892.P15699750328302023040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A267408 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044892.P15699750328302023040

/-!
# A044893: Base 7 run lengths alternate: even, odd, even,...

The programs for A044893, there is no canonical definition to state claims against.
-/

/-! ## A044893.P11108166064039313831

`∩[A037989(n+1), A048318(n)]`
-/

namespace A044893.P11108166064039313831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048318 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044893.P11108166064039313831

/-! ## A044893.P17815106439353124852

`∑[A071832(A006723(n)²)]`
-/

namespace A044893.P17815106439353124852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071832 (A006723 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044893.P17815106439353124852

/-! ## A044893.P13656802116004180377

`∑[A143025(∏[A100862(n)])]`
-/

namespace A044893.P13656802116004180377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044893.P13656802116004180377

/-! ## A044893.P8508158895543643571

`A031490(A031501(∑[n]))+1`
-/

namespace A044893.P8508158895543643571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031490 (A031501 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A044893.P8508158895543643571

/-! ## A044893.P9429268829145607500

`∑[A143025(∏[A271831(2*n)])]`
-/

namespace A044893.P9429268829145607500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271831 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044893.P9429268829145607500

/-!
# A044894: Base 8 run lengths alternate: even, odd, even,...

The programs for A044894, there is no canonical definition to state claims against.
-/

/-! ## A044894.P16095300407018338413

`∩[A037993(1+n), A048319(n)]`
-/

namespace A044894.P16095300407018338413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037993 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044894.P16095300407018338413

/-! ## A044894.P18057955072103120415

`A044849(A187829(comp[8*n]))`
-/

namespace A044894.P18057955072103120415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044849 (A187829 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A044894.P18057955072103120415

/-! ## A044894.P15089686910114744928

`A031495(A007306(2^n))+1`
-/

namespace A044894.P15089686910114744928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031495 (A007306 (2 ^ n)).toNat + 1

end

end A044894.P15089686910114744928

/-! ## A044894.P13418772345968085993

`A031495(n+1)+A000120(2^n)`
-/

namespace A044894.P13418772345968085993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031495 (n + 1) + A000120 (2 ^ n)

end

end A044894.P13418772345968085993

/-! ## A044894.P4654358872430814462

`A043284(2^n)+A031495(n+1)`
-/

namespace A044894.P4654358872430814462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043284 (2 ^ n) + A031495 (n + 1)

end

end A044894.P4654358872430814462

/-!
# A044895: Base 9 run lengths alternate: even, odd, even,...

The programs for A044895, there is no canonical definition to state claims against.
-/

/-! ## A044895.P1120924054678659758

`A048320(eq[1+n, A004728(n)])`
-/

namespace A044895.P1120924054678659758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044895.P1120924054678659758

/-! ## A044895.P782146406694857077

`∩[A037997(1+n), A048320(n)]`
-/

namespace A044895.P782146406694857077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037997 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044895.P782146406694857077

/-! ## A044895.P13280120915238991107

`∑[A010173(A009714(n)²)]`
-/

namespace A044895.P13280120915238991107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010173 (A009714 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044895.P13280120915238991107

/-! ## A044895.P12262390327011305516

`∩[A037997(n+1), A124257(n+1)]`
-/

namespace A044895.P12262390327011305516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044895.P12262390327011305516

/-! ## A044895.P14481469273186697377

`∩[A044850(n+1), A124257(n+1)]`
-/

namespace A044895.P14481469273186697377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044895.P14481469273186697377

/-!
# A044896: Base 10 run lengths alternate: even, odd, even,...

The programs for A044896, there is no canonical definition to state claims against.
-/

/-! ## A044896.P7881990075290873669

`eq[2, A000030(A321485(n))]`
-/

namespace A044896.P7881990075290873669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A321485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044896.P7881990075290873669

/-! ## A044896.P14982248698635734273

`eq[3, A230140(A139337(n))]`
-/

namespace A044896.P14982248698635734273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230140 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044896.P14982248698635734273

/-! ## A044896.P13263858408910403779

`eq[11, A321803(A123895(n))]`
-/

namespace A044896.P13263858408910403779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321803 (A123895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A044896.P13263858408910403779

/-! ## A044896.P9416258569098958906

`∩[A033283(n+1), A048321(n+1)]`
-/

namespace A044896.P9416258569098958906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A044896.P9416258569098958906

/-! ## A044896.P13428023268634148980

`eq[A040002(n), A069230(A139337(n))]`
-/

namespace A044896.P13428023268634148980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069230 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044896.P13428023268634148980

/-! ## A044896.P4018672339923514826

`eq[A137564(A233583(n+1)), A217657(n)]`
-/

namespace A044896.P4018672339923514826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A044896.P4018672339923514826

/-!
# A044897: Base 11 run lengths alternate: even, odd, even,...

The programs for A044897, there is no canonical definition to state claims against.
-/

/-! ## A044897.P14419286547388197054

`∑[A058306(∑[A241689(n+1)])]`
-/

namespace A044897.P14419286547388197054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241689 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044897.P14419286547388197054

/-! ## A044897.P16771619819049841390

`∑[A247511(A212389(n))]`
-/

namespace A044897.P16771619819049841390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247511 (A212389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044897.P16771619819049841390

/-! ## A044897.P9132001785527833161

`∑[A242591(A212369(n)!)]`
-/

namespace A044897.P9132001785527833161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242591 (Nat.factorial (A212369 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044897.P9132001785527833161

/-! ## A044897.P10473401837600857693

`∑[A242591(A242528(n+1)!)]`
-/

namespace A044897.P10473401837600857693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242591 (Nat.factorial (A242528 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044897.P10473401837600857693

/-! ## A044897.P14515648179538786950

`A136771(n+1)+A000003(A309864(n))`
-/

namespace A044897.P14515648179538786950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136771 (n + 1) + A000003 (A309864 n).toNat

end

end A044897.P14515648179538786950

/-!
# A044898: Base 12 run lengths alternate: even, odd, even,...

The programs for A044898, there is no canonical definition to state claims against.
-/

/-! ## A044898.P9760663846703636149

`∑[A010222(∑[A185213(n)])]`
-/

namespace A044898.P9760663846703636149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044898.P9760663846703636149

/-! ## A044898.P13269337324685063974

`∑[A014963(A034493(3*n+4)+13)]`
-/

namespace A044898.P13269337324685063974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A034493 (3 * n + 4) + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044898.P13269337324685063974

/-!
# A044899: Base 13 run lengths alternate: even, odd, even,...

The programs for A044899, there is no canonical definition to state claims against.
-/

/-! ## A044899.P15517730455220678179

`A044854(∑[A232088(A154867(n))])`
-/

namespace A044899.P15517730455220678179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232088 (A154867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044854 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A044899.P15517730455220678179

/-! ## A044899.P10338088251811090193

`record[A044854(n+1)/A232088(A154867(n))]`
-/

namespace A044899.P10338088251811090193
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044854 (n + 1) : ℚ) / (A232088 (A154867 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A044899.P10338088251811090193

/-! ## A044899.P11044738093875052640

`A048324(A080953(n)+A043701(n+1))`
-/

namespace A044899.P11044738093875052640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048324 (A080953 n + A043701 (n + 1)).toNat

end

end A044899.P11044738093875052640

/-! ## A044899.P12842549967654281466

`∑[A161914(A162780(n+1)^A162781(n+1))]`
-/

namespace A044899.P12842549967654281466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161914 (SequenceMachineLib.roundAway ((A162780 (n + 1) : ℚ) ^ (A162781 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A044899.P12842549967654281466

/-! ## A044899.P9095890552913490522

`A136773(n+1)+A029726(A006927(n))`
-/

namespace A044899.P9095890552913490522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136773 (n + 1) + A029726 (A006927 n).toNat

end

end A044899.P9095890552913490522

