import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C001
import Seq.B012.C000
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
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A004802: Numbers that are the sum of 2 nonzero 10th powers.

The programs for A004802, there is no canonical definition to state claims against.
-/

/-! ## A004802.P5896224837221993337

`∩[A003347(n+1), A004897(n+1)]`
-/

namespace A004802.P5896224837221993337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004802.P5896224837221993337

/-! ## A004802.P12789784227831499312

`∩[A003347(n+1), A004898(n+1)]`
-/

namespace A004802.P12789784227831499312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004802.P12789784227831499312

/-! ## A004802.P15534472807148312425

`∩[A003347(n+1), A004899(n+1)]`
-/

namespace A004802.P15534472807148312425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004802.P15534472807148312425

/-! ## A004802.P7603704240994086676

`∩[A003347(n+1), A004900(n+1)]`
-/

namespace A004802.P7603704240994086676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004802.P7603704240994086676

/-! ## A004802.P13306062074256342822

`∩[A003347(n+1), A004901(n+1)]`
-/

namespace A004802.P13306062074256342822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004802.P13306062074256342822

/-!
# A004804: Numbers that are the sum of 4 nonzero 10th powers.

The programs for A004804, there is no canonical definition to state claims against.
-/

/-! ## A004804.P16970016162305758470

`∩[A004806(n+1)-2, A004900(n+1)]`
-/

namespace A004804.P16970016162305758470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004806 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004804.P16970016162305758470

/-! ## A004804.P3373364588647819275

`A004805(A302498(n+1))-A057427(A023881(n))`
-/

namespace A004804.P3373364588647819275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004805 (A302498 (n + 1)).toNat - A057427 (A023881 n).toNat

end

end A004804.P3373364588647819275

/-!
# A004805: Numbers that are the sum of 5 positive 10th powers.

The programs for A004805, there is no canonical definition to state claims against.
-/

/-! ## A004805.P6151188101655438809

`∩[A004806(n+1)-1, A004900(n+1)]`
-/

namespace A004805.P6151188101655438809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004806 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004805.P6151188101655438809

/-! ## A004805.P14149329124428965407

`∩[A003350(n+1), A004900(n+1)]`
-/

namespace A004805.P14149329124428965407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004805.P14149329124428965407

/-! ## A004805.P4306890538620379631

`A004806(A124455(n+1))-A119335(A005265(n+1))`
-/

namespace A004805.P4306890538620379631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004806 (A124455 (n + 1)).toNat - A119335 (A005265 (n + 1)).toNat

end

end A004805.P4306890538620379631

/-!
# A004806: Numbers that are the sum of 6 positive 10th powers.

The programs for A004806, there is no canonical definition to state claims against.
-/

/-! ## A004806.P7621939029531244108

`record[A004807(A124010(3*n+5))-1]`
-/

namespace A004806.P7621939029531244108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004807 (A124010 (3 * n + 5)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004806.P7621939029531244108

/-!
# A004808: Numbers that are the sum of 8 positive 10th powers.

The programs for A004808, there is no canonical definition to state claims against.
-/

/-! ## A004808.P8170401639238231614

`∩[A004810(n+1)-2, A004905(n+1)]`
-/

namespace A004808.P8170401639238231614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004810 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004808.P8170401639238231614

/-!
# A004809: Numbers that are the sum of 9 positive 10th powers.

The programs for A004809, there is no canonical definition to state claims against.
-/

/-! ## A004809.P4511714275214559169

`∩[A004810(n+1)-1, A004905(n+1)]`
-/

namespace A004809.P4511714275214559169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004810 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004809.P4511714275214559169

/-! ## A004809.P7355230498015265841

`A004810(A020753(n+1))-1`
-/

namespace A004809.P7355230498015265841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004810 (A020753 (n + 1)).toNat - 1

end

end A004809.P7355230498015265841

/-! ## A004809.P215230708112061815

`A004810(record[A169992(n)])-1`
-/

namespace A004809.P215230708112061815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A004809.P215230708112061815

/-!
# A004810: Numbers that are the sum of 10 positive 10th powers.

The programs for A004810, there is no canonical definition to state claims against.
-/

/-! ## A004810.P5332539451747941022

`A336725(A000124(n+10)-10)`
-/

namespace A004810.P5332539451747941022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000124 (n + 10) - 10).toNat

end

end A004810.P5332539451747941022

/-! ## A004810.P3474863953647423892

`A336725(A134869(n+10)-10)`
-/

namespace A004810.P3474863953647423892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A134869 (n + 10) - 10).toNat

end

end A004810.P3474863953647423892

/-! ## A004810.P16939988475021651424

`A336725(A000217(n+9)+n+1)`
-/

namespace A004810.P16939988475021651424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000217 (n + 9) + (n + 1 : ℤ)).toNat

end

end A004810.P16939988475021651424

/-! ## A004810.P3206277783838851479

`A336725(eq[8, A219347(n)])`
-/

namespace A004810.P3206277783838851479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004810.P3206277783838851479

/-! ## A004810.P15488674204787439658

`A336725(eq[9, A193592(n)])`
-/

namespace A004810.P15488674204787439658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004810.P15488674204787439658

/-!
# A004813: Numbers that are the sum of 2 positive 11th powers.

The programs for A004813, there is no canonical definition to state claims against.
-/

/-! ## A004813.P3201164092541728261

`A004909(3*n+2)-A010815(A001147(n))`
-/

namespace A004813.P3201164092541728261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004909 (3 * n + 2) - A010815 (A001147 n).toNat

end

end A004813.P3201164092541728261

/-!
# A004814: Numbers that are the sum of 3 positive 11th powers.

The programs for A004814, there is no canonical definition to state claims against.
-/

/-! ## A004814.P17092685148548323379

`∩[A004816(n+1)-2, A004911(n+1)]`
-/

namespace A004814.P17092685148548323379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004814.P17092685148548323379

/-! ## A004814.P9258904592376265123

`∩[A004816(n+1)-2, A004914(n+1)]`
-/

namespace A004814.P9258904592376265123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004814.P9258904592376265123

/-! ## A004814.P14018162609757488323

`∩[A004816(n+1)-2, A004915(n+1)]`
-/

namespace A004814.P14018162609757488323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004814.P14018162609757488323

/-! ## A004814.P925677980912198578

`∩[A004816(n+1)-2, A004917(n+1)]`
-/

namespace A004814.P925677980912198578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004814.P925677980912198578

/-! ## A004814.P7204561733107612982

`∩[A004816(n+1)-2, A004918(n+1)]`
-/

namespace A004814.P7204561733107612982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004814.P7204561733107612982

/-!
# A004815: Numbers that are the sum of 4 positive 11th powers.

The programs for A004815, there is no canonical definition to state claims against.
-/

/-! ## A004815.P2650793416500123364

`∩[A004816(n+1)-1, A004911(n+1)]`
-/

namespace A004815.P2650793416500123364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P2650793416500123364

/-! ## A004815.P17171840036477051130

`∩[A004816(n+1)-1, A004914(n+1)]`
-/

namespace A004815.P17171840036477051130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P17171840036477051130

/-! ## A004815.P6853823860369939547

`∩[A004816(n+1)-1, A004915(n+1)]`
-/

namespace A004815.P6853823860369939547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P6853823860369939547

/-! ## A004815.P8403818578123606338

`∩[A004816(n+1)-1, A004917(n+1)]`
-/

namespace A004815.P8403818578123606338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P8403818578123606338

/-! ## A004815.P17374763306361689784

`∩[A004823(n+1)-8, A004917(n+1)]`
-/

namespace A004815.P17374763306361689784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P17374763306361689784

/-! ## A004815.P7395019661526709651

`∩[A004816(n+1)-1, A004918(n+1)]`
-/

namespace A004815.P7395019661526709651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P7395019661526709651

/-! ## A004815.P2594079500081347818

`∩[A004823(n+1)-8, A004918(n+1)]`
-/

namespace A004815.P2594079500081347818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004815.P2594079500081347818

/-!
# A004816: Numbers that are the sum of 5 positive 11th powers.

The programs for A004816, there is no canonical definition to state claims against.
-/

/-! ## A004816.P1034313419268867718

`∩[A004819(n+1)-3, A004918(n+1)]`
-/

namespace A004816.P1034313419268867718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004819 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004816.P1034313419268867718

/-!
# A004817: Numbers that are the sum of 6 positive 11th powers.

The programs for A004817, there is no canonical definition to state claims against.
-/

/-! ## A004817.P7737898824646932563

`∩[A004823(n+1)-6, A004917(n+1)]`
-/

namespace A004817.P7737898824646932563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004817.P7737898824646932563

/-! ## A004817.P15136640770745181588

`∩[A004819(n+1)-2, A004918(n+1)]`
-/

namespace A004817.P15136640770745181588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004819 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004817.P15136640770745181588

/-! ## A004817.P9793958437065031364

`∩[A004823(n+1)-6, A004918(n+1)]`
-/

namespace A004817.P9793958437065031364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004817.P9793958437065031364

/-!
# A004818: Numbers that are the sum of 7 positive 11th powers.

The programs for A004818, there is no canonical definition to state claims against.
-/

/-! ## A004818.P16511493589900434408

`∩[A004823(n+1)-5, A004917(n+1)]`
-/

namespace A004818.P16511493589900434408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004818.P16511493589900434408

/-! ## A004818.P4470739255373624864

`∩[A004819(n+1)-1, A004918(n+1)]`
-/

namespace A004818.P4470739255373624864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004819 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004818.P4470739255373624864

/-! ## A004818.P16601976346388292127

`∩[A004823(n+1)-5, A004918(n+1)]`
-/

namespace A004818.P16601976346388292127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004818.P16601976346388292127

/-!
# A004819: Numbers that are the sum of 8 positive 11th powers.

The programs for A004819, there is no canonical definition to state claims against.
-/

/-! ## A004819.P5590635443327162083

`∩[A004823(n+1)-4, A004917(n+1)]`
-/

namespace A004819.P5590635443327162083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004819.P5590635443327162083

/-! ## A004819.P16572532128240034107

`∩[A004823(n+1)-4, A004918(n+1)]`
-/

namespace A004819.P16572532128240034107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004819.P16572532128240034107

/-! ## A004819.P8793128324499581033

`A004820(A133810(n+1))-A001055(A052089(n+1))`
-/

namespace A004819.P8793128324499581033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004820 (A133810 (n + 1)).toNat - A001055 (A052089 (n + 1)).toNat

end

end A004819.P8793128324499581033

/-!
# A004820: Numbers that are the sum of 9 positive 11th powers.

The programs for A004820, there is no canonical definition to state claims against.
-/

/-! ## A004820.P2045904751015325022

`∩[A004823(n+1)-3, A004917(n+1)]`
-/

namespace A004820.P2045904751015325022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004820.P2045904751015325022

/-! ## A004820.P6693360678387833202

`∩[A004823(n+1)-3, A004918(n+1)]`
-/

namespace A004820.P6693360678387833202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004820.P6693360678387833202

/-! ## A004820.P17020299382078790618

`A004821(A020753(n+1))-1`
-/

namespace A004820.P17020299382078790618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004821 (A020753 (n + 1)).toNat - 1

end

end A004820.P17020299382078790618

/-!
# A004821: Numbers that are the sum of 10 positive 11th powers.

The programs for A004821, there is no canonical definition to state claims against.
-/

/-! ## A004821.P2633741638446780080

`∩[A004823(n+1)-2, A004917(n+1)]`
-/

namespace A004821.P2633741638446780080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004821.P2633741638446780080

/-! ## A004821.P17958153562725824754

`∩[A004823(n+1)-2, A004918(n+1)]`
-/

namespace A004821.P17958153562725824754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004821.P17958153562725824754

/-!
# A004822: Numbers that are the sum of 11 positive 11th powers.

The programs for A004822, there is no canonical definition to state claims against.
-/

/-! ## A004822.P7868663771892096407

`∩[A004823(n+1)-1, A004917(n+1)]`
-/

namespace A004822.P7868663771892096407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004822.P7868663771892096407

/-! ## A004822.P7239126171546745769

`∩[A004823(n+1)-1, A004918(n+1)]`
-/

namespace A004822.P7239126171546745769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004823 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004822.P7239126171546745769

/-! ## A004822.P1027537559448786253

`A336725(A134869(n+11)-11)`
-/

namespace A004822.P1027537559448786253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A134869 (n + 11) - 11).toNat

end

end A004822.P1027537559448786253

/-! ## A004822.P678458483868463687

`A336725(A000217(n+10)+n+1)`
-/

namespace A004822.P678458483868463687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A004822.P678458483868463687

/-! ## A004822.P10299149496547426547

`A336725(A167614(n+8)+A005843(n+4))`
-/

namespace A004822.P10299149496547426547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A167614 (n + 8) + A005843 (n + 4)).toNat

end

end A004822.P10299149496547426547

/-! ## A004822.P2492495772957515078

`A336725(A052905(n+10)-A005843(n+15))`
-/

namespace A004822.P2492495772957515078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (A052905 (n + 10) - A005843 (n + 15)).toNat

end

end A004822.P2492495772957515078

/-! ## A004822.P6252930756883065190

`A336725(eq[10, A193592(n)])`
-/

namespace A004822.P6252930756883065190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004822.P6252930756883065190

/-! ## A004822.P3654606748649523138

`A336725(eq[18, A185782(n+1)])`
-/

namespace A004822.P3654606748649523138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004822.P3654606748649523138

/-!
# A004824: Denominator of 2^n*(3*n-3)!/( ((n-1)!)^3 * (2*n)! ).

The programs for A004824, there is no canonical definition to state claims against.
-/

/-! ## A004824.P7911520260323592287

`∏[∏{e}[(n*(n-2))^n, #]]`
-/

namespace A004824.P7911520260323592287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 2)) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A004824.P7911520260323592287

/-! ## A004824.P8764900658433178903

`A110655(floor((n!+1)/2)²)`
-/

namespace A004824.P8764900658433178903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (⌊(Nat.factorial n + 1 : ℚ) / 2⌋ ^ 2).toNat

end

end A004824.P8764900658433178903

/-!
# A004825: Numbers that are the sum of at most 3 positive cubes.

The programs for A004825, there is no canonical definition to state claims against.
-/

/-! ## A004825.P8313728424125945764

`∪[A003072(n+1), A004999(n+1)]`
-/

namespace A004825.P8313728424125945764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004825.P8313728424125945764

/-! ## A004825.P466426082083763588

`∪[A004999(n+1), A047702(n+1)]`
-/

namespace A004825.P466426082083763588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004825.P466426082083763588

/-! ## A004825.P13703999969768081618

`lt[0, A025447(n)]`
-/

namespace A004825.P13703999969768081618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004825.P13703999969768081618

/-! ## A004825.P5411535869396110360

`lt[0, A051343(n)]`
-/

namespace A004825.P5411535869396110360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004825.P5411535869396110360

/-! ## A004825.P1572891082061282595

`lt[0, A175365(n)]`
-/

namespace A004825.P1572891082061282595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004825.P1572891082061282595

/-! ## A004825.P8499358518440489850

`eq[1, A351199(n)]`
-/

namespace A004825.P8499358518440489850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004825.P8499358518440489850

/-! ## A004825.P4097699828533603873

`eq[0, A051344(A051343(n)+3)]`
-/

namespace A004825.P4097699828533603873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A051343 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004825.P4097699828533603873

/-! ## A004825.P5923457732470021697

`lt[A002376(A028310(n))-2, 2]`
-/

namespace A004825.P5923457732470021697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A028310 n).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004825.P5923457732470021697

/-! ## A004825.P16663823437721578783

`eq[0, A051343(5*A051343(n))]`
-/

namespace A004825.P16663823437721578783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 (5 * A051343 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004825.P16663823437721578783

/-! ## A004825.P16455980387554315353

`eq[2, A000122(A175365(n)²)]`
-/

namespace A004825.P16455980387554315353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A175365 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004825.P16455980387554315353

/-! ## A004825.P11814225173958570678

`A336820(∑[n+3]+1)`
-/

namespace A004825.P11814225173958570678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004825.P11814225173958570678

/-!
# A004826: Numbers that are the sum of at most 4 positive cubes.

The programs for A004826, there is no canonical definition to state claims against.
-/

/-! ## A004826.P10055422336794318003

`comp[A022566(n+1)]`
-/

namespace A004826.P10055422336794318003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004826.P10055422336794318003

/-! ## A004826.P15319808468109038654

`∪[A003327(n+1), A004825(n+1)]`
-/

namespace A004826.P15319808468109038654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004826.P15319808468109038654

/-! ## A004826.P11458799133814936962

`∪[A004825(n+1), A047703(n+1)]`
-/

namespace A004826.P11458799133814936962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004826.P11458799133814936962

/-! ## A004826.P546835848054943962

`lt[0, A173678(n)]`
-/

namespace A004826.P546835848054943962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004826.P546835848054943962

/-! ## A004826.P6809824656200902815

`lt[0, A175368(n)]`
-/

namespace A004826.P6809824656200902815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175368 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004826.P6809824656200902815

/-! ## A004826.P9704834661488957068

`lt[0, A025448(n)]`
-/

namespace A004826.P9704834661488957068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004826.P9704834661488957068

/-! ## A004826.P5617404652110249284

`eq[1, gcd(A173678(n), A242517(n+1))]`
-/

namespace A004826.P5617404652110249284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173678 n) (A242517 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004826.P5617404652110249284

/-! ## A004826.P17060981028867484547

`eq[1, A178489(A051343(n)+A025448(n))]`
-/

namespace A004826.P17060981028867484547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A051343 n + A025448 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004826.P17060981028867484547

/-! ## A004826.P16611788800320415426

`eq[A000007(n+1), A000007(A173678(n))]`
-/

namespace A004826.P16611788800320415426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004826.P16611788800320415426

/-! ## A004826.P6696904644173960249

`eq[A057427(n+1), A057427(A173678(n))]`
-/

namespace A004826.P6696904644173960249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A173678 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004826.P6696904644173960249

/-! ## A004826.P965871659077343311

`eq[1, A222047(n^A015824(A173678(n)))]`
-/

namespace A004826.P965871659077343311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222047 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A015824 (A173678 n).toNat : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004826.P965871659077343311

/-! ## A004826.P2297264130296990368

`eq[0, A089807(17*A175368(n))]`
-/

namespace A004826.P2297264130296990368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (17 * A175368 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004826.P2297264130296990368

/-! ## A004826.P3401290011353012416

`eq[2, A279060(A025448(n)*A031927(n))]`
-/

namespace A004826.P3401290011353012416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A025448 n * A031927 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004826.P3401290011353012416

/-!
# A004827: Numbers that are the sum of at most 5 positive cubes.

The programs for A004827, there is no canonical definition to state claims against.
-/

/-! ## A004827.P15328636128327481896

`comp[A069136(n+1)]`
-/

namespace A004827.P15328636128327481896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004827.P15328636128327481896

/-! ## A004827.P7391118312757883066

`∪[A003328(n+1), A004826(n+1)]`
-/

namespace A004827.P7391118312757883066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004827.P7391118312757883066

/-! ## A004827.P3170363743271963374

`∪[A004826(n+1), A047704(n+1)]`
-/

namespace A004827.P3170363743271963374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004827.P3170363743271963374

/-! ## A004827.P14150197611435421188

`lt[0, A173679(n)]`
-/

namespace A004827.P14150197611435421188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004827.P14150197611435421188

/-! ## A004827.P13946828910933046801

`eq[0, A000038(A173679(n)+A010057(n))]`
-/

namespace A004827.P13946828910933046801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A173679 n + A010057 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004827.P13946828910933046801

/-! ## A004827.P8841252562315750420

`eq[n*A000038(n), A000038(A173679(n))]`
-/

namespace A004827.P8841252562315750420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A173679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004827.P8841252562315750420

/-! ## A004827.P12416271233185166051

`eq[2*A173679(n), A028310(2*A173679(n))]`
-/

namespace A004827.P12416271233185166051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A173679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004827.P12416271233185166051

/-! ## A004827.P2000883448347452356

`lt[0, A025449(n)]`
-/

namespace A004827.P2000883448347452356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004827.P2000883448347452356

/-! ## A004827.P3206971497614732314

`eq[A000038(n+1), A000038(A173679(n))]`
-/

namespace A004827.P3206971497614732314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A173679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004827.P3206971497614732314

/-! ## A004827.P2665564678244039608

`eq[n*A000007(n), A000007(A173679(n))]`
-/

namespace A004827.P2665564678244039608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004827.P2665564678244039608

/-! ## A004827.P9267888610156874013

`eq[A000007(n+1), A000007(A173679(n))]`
-/

namespace A004827.P9267888610156874013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004827.P9267888610156874013

/-!
# A004828: Numbers that are the sum of at most 6 positive cubes.

The programs for A004828, there is no canonical definition to state claims against.
-/

/-! ## A004828.P1567723004906040916

`∪[A003329(n+1), A004827(n+1)]`
-/

namespace A004828.P1567723004906040916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004828.P1567723004906040916

/-! ## A004828.P3354526903235450950

`lt[0, A173680(n)]`
-/

namespace A004828.P3354526903235450950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004828.P3354526903235450950

/-! ## A004828.P673739626002035366

`eq[0, A105700(a(n-1))^A173680(n)]` with `a(0)=0`
-/

namespace A004828.P673739626002035366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  (A105700 (SequenceMachineLib.roundAway (f2 (n - 1))).toNat : ℚ) ^ (A173680 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A004828.P673739626002035366

/-! ## A004828.P8914619044318511458

`eq[0, A273650(a(n-1)+1)^A173680(n)]` with `a(0)=0`
-/

namespace A004828.P8914619044318511458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  (A273650 (SequenceMachineLib.roundAway (f2 (n - 1) + 1)).toNat : ℚ) ^ (A173680 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A004828.P8914619044318511458

/-! ## A004828.P10535636051724319015

`lt[0, A025450(n)]`
-/

namespace A004828.P10535636051724319015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004828.P10535636051724319015

/-! ## A004828.P3147427939657801675

`eq[n*A000007(n), A000007(A025450(n))]`
-/

namespace A004828.P3147427939657801675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025450 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004828.P3147427939657801675

/-! ## A004828.P15273920032224816764

`eq[A000007(n+1), A000007(A025450(n))]`
-/

namespace A004828.P15273920032224816764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025450 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004828.P15273920032224816764

/-! ## A004828.P10786820169064459760

`comp[A069137(n+1)]`
-/

namespace A004828.P10786820169064459760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004828.P10786820169064459760

/-! ## A004828.P8395828892213733067

`eq[2, A134451(2*A173680(n))]`
-/

namespace A004828.P8395828892213733067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004828.P8395828892213733067

/-! ## A004828.P2447188528562661839

`eq[0, A000038(A173680(n)+A010057(n))]`
-/

namespace A004828.P2447188528562661839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A173680 n + A010057 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004828.P2447188528562661839

/-! ## A004828.P10809641651088660143

`eq[A000007(n+1), A000007(A173680(n))]`
-/

namespace A004828.P10809641651088660143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004828.P10809641651088660143

/-! ## A004828.P2000688442982570599

`eq[A000038(n+1), A000038(A173680(n))]`
-/

namespace A004828.P2000688442982570599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004828.P2000688442982570599

/-! ## A004828.P13156627622542000417

`eq[n*A000007(n), A000007(A173680(n))]`
-/

namespace A004828.P13156627622542000417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004828.P13156627622542000417

/-! ## A004828.P6994811002555060718

`eq[n*A000038(n), A000038(A173680(n))]`
-/

namespace A004828.P6994811002555060718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A173680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004828.P6994811002555060718

/-!
# A004829: Numbers that are the sum of at most 7 positive cubes.

The programs for A004829, there is no canonical definition to state claims against.
-/

/-! ## A004829.P1431960024762583321

`lt[A024941(A259578(n+1)), A173676(n)]`
-/

namespace A004829.P1431960024762583321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024941 (A259578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004829.P1431960024762583321

/-!
# A004830: Numbers that are the sum of at most 8 positive cubes.

The programs for A004830, there is no canonical definition to state claims against.
-/

/-! ## A004830.P5686328608778387361

`record[n%A328850(A328827(n+1))]`
-/

namespace A004830.P5686328608778387361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A328850 (A328827 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004830.P5686328608778387361

/-!
# A004831: Numbers that are the sum of at most 2 nonzero 4th powers.

The programs for A004831, there is no canonical definition to state claims against.
-/

/-! ## A004831.P15622786657535608564

`∪[n^4, A003336(n+1)]`
-/

namespace A004831.P15622786657535608564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004831.P15622786657535608564

/-! ## A004831.P18309426141420334194

`∪[A003336(n+1), A000583(n)]`
-/

namespace A004831.P18309426141420334194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004831.P18309426141420334194

/-! ## A004831.P839699082590456512

`∪[A003336(n+1), A000290(n)²]`
-/

namespace A004831.P839699082590456512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004831.P839699082590456512

/-! ## A004831.P15363201993718929423

`eq[1, A216280(round(acot(n)+n))]`
-/

namespace A004831.P15363201993718929423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004831.P15363201993718929423

/-! ## A004831.P6451159541844198428

`eq[0, A351341(n)]`
-/

namespace A004831.P6451159541844198428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004831.P6451159541844198428

/-! ## A004831.P2379007576973597936

`lt[0, A175372(n)]`
-/

namespace A004831.P2379007576973597936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004831.P2379007576973597936

/-! ## A004831.P17649680043874818967

`eq[1, A216280(A028310(n))]`
-/

namespace A004831.P17649680043874818967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216280 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004831.P17649680043874818967

/-! ## A004831.P8036893932801664932

`eq[A000038(n)^A175372(n), A000038(n)]`
-/

namespace A004831.P8036893932801664932
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A175372 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A004831.P8036893932801664932

/-!
# A004832: Numbers that are the sum of at most 3 nonzero 4th powers.

The programs for A004832, there is no canonical definition to state claims against.
-/

/-! ## A004832.P10045220271826850064

`∪[A003337(n+1), A004831(n+1)]`
-/

namespace A004832.P10045220271826850064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004832.P10045220271826850064

/-! ## A004832.P16300138494298721287

`lt[1, A175375(n)+1]`
-/

namespace A004832.P16300138494298721287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175375 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004832.P16300138494298721287

/-! ## A004832.P5331861939757226492

`eq[0, A000007(A175375(n))]`
-/

namespace A004832.P5331861939757226492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A175375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004832.P5331861939757226492

/-! ## A004832.P17282167599943936880

`eq[2, A000122(A175375(n)²)]`
-/

namespace A004832.P17282167599943936880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A175375 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004832.P17282167599943936880

/-! ## A004832.P3146520168527093373

`eq[2, A317641(A175375(n)²)]`
-/

namespace A004832.P3146520168527093373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A175375 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004832.P3146520168527093373

/-! ## A004832.P8725402501312035432

`lt[A002377(A028310(n))-2, 2]`
-/

namespace A004832.P8725402501312035432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004832.P8725402501312035432

/-! ## A004832.P17427296780686312567

`eq[A000038(n), A000122(A175375(n))]`
-/

namespace A004832.P17427296780686312567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A175375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004832.P17427296780686312567

/-! ## A004832.P17950176781708986698

`eq[A000038(n+1), A000038(A175375(n))]`
-/

namespace A004832.P17950176781708986698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A175375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004832.P17950176781708986698

/-! ## A004832.P5446649166023124754

`eq[A175372(n+2), A175372(A175375(n))]`
-/

namespace A004832.P5446649166023124754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175372 (A175375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004832.P5446649166023124754

/-! ## A004832.P15206159748065568899

`eq[A000122(2*n+1), A000122(A175375(n))]`
-/

namespace A004832.P15206159748065568899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A175375 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004832.P15206159748065568899

/-!
# A004833: Numbers that are the sum of at most 4 nonzero 4th powers.

The programs for A004833, there is no canonical definition to state claims against.
-/

/-! ## A004833.P12391641014305459628

`∪[A003338(n+1), A004832(n+1)]`
-/

namespace A004833.P12391641014305459628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004833.P12391641014305459628

/-! ## A004833.P1205574223720071751

`∪[A004832(n+1), A047715(n+1)]`
-/

namespace A004833.P1205574223720071751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004833.P1205574223720071751

/-! ## A004833.P11152485488736951225

`lt[A002377(round(acot(n)+n)), 5]`
-/

namespace A004833.P11152485488736951225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004833.P11152485488736951225

/-! ## A004833.P4699146617524637796

`lt[A002377(A028310(n)), 5]`
-/

namespace A004833.P4699146617524637796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004833.P4699146617524637796

/-! ## A004833.P6562329988165179329

`A336820(∑[n+3]+n+4)`
-/

namespace A004833.P6562329988165179329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A004833.P6562329988165179329

/-! ## A004833.P731445305667805745

`record[A336820(A027379(n))]`
-/

namespace A004833.P731445305667805745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004833.P731445305667805745

/-!
# A004834: Numbers that are the sum of at most 5 nonzero 4th powers.

The programs for A004834, there is no canonical definition to state claims against.
-/

/-! ## A004834.P9054372471000400623

`∪[A003339(n+1), A004833(n+1)]`
-/

namespace A004834.P9054372471000400623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004834.P9054372471000400623

/-! ## A004834.P8245807198040469902

`∪[A004833(n+1), A047716(n+1)]`
-/

namespace A004834.P8245807198040469902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004834.P8245807198040469902

/-! ## A004834.P4105023891615817092

`lt[A002377(round(acot(n)+n)), 6]`
-/

namespace A004834.P4105023891615817092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004834.P4105023891615817092

/-! ## A004834.P10312330245387734529

`lt[A002377(round(sqrt(n²+1))), 6]`
-/

namespace A004834.P10312330245387734529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004834.P10312330245387734529

/-! ## A004834.P6537820284603150577

`lt[A002377(A028310(n))-1, 5]`
-/

namespace A004834.P6537820284603150577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004834.P6537820284603150577

/-! ## A004834.P16536800478806894043

`lt[A002377(A233583(n+1))-2, 4]`
-/

namespace A004834.P16536800478806894043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004834.P16536800478806894043

/-!
# A004835: Numbers that are the sum of at most 6 nonzero 4th powers.

The programs for A004835, there is no canonical definition to state claims against.
-/

/-! ## A004835.P12397576547301773166

`∪[A003340(n+1), A004834(n+1)]`
-/

namespace A004835.P12397576547301773166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004835.P12397576547301773166

/-! ## A004835.P12265216058388129943

`∪[A004834(n+1), A047717(n+1)]`
-/

namespace A004835.P12265216058388129943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004835.P12265216058388129943

/-! ## A004835.P2818452596143621836

`lt[A002377(round(acot(n)+n)), 7]`
-/

namespace A004835.P2818452596143621836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004835.P2818452596143621836

/-! ## A004835.P4328545306676347946

`lt[A002377(round(sqrt(n²+1))), 7]`
-/

namespace A004835.P4328545306676347946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004835.P4328545306676347946

/-! ## A004835.P6207774335721036157

`lt[A002377(A028310(n))-6, 1]`
-/

namespace A004835.P6207774335721036157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat - 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004835.P6207774335721036157

/-!
# A004836: Numbers that are the sum of at most 7 nonzero 4th powers.

The programs for A004836, there is no canonical definition to state claims against.
-/

/-! ## A004836.P15943575054393941473

`∪[A003341(n+1), A004835(n+1)]`
-/

namespace A004836.P15943575054393941473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004836.P15943575054393941473

/-! ## A004836.P2462649985014198574

`∪[A004835(n+1), A047718(n+1)]`
-/

namespace A004836.P2462649985014198574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004836.P2462649985014198574

/-! ## A004836.P11303352593252020040

`lt[A002377(round(acot(n)+n)), 8]`
-/

namespace A004836.P11303352593252020040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004836.P11303352593252020040

/-! ## A004836.P11985044730638323507

`lt[A002377(round(sqrt(n²+1))), 8]`
-/

namespace A004836.P11985044730638323507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004836.P11985044730638323507

/-! ## A004836.P5671729267790457514

`eq[7, or(7, A002377(A065033(2*n)))]`
-/

namespace A004836.P5671729267790457514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A002377 (A065033 (2 * n)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004836.P5671729267790457514

/-!
# A004837: Numbers that are the sum of at most 8 nonzero 4th powers.

The programs for A004837, there is no canonical definition to state claims against.
-/

/-! ## A004837.P2665695795393012098

`∪[A003342(n+1), A004836(n+1)]`
-/

namespace A004837.P2665695795393012098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004837.P2665695795393012098

/-! ## A004837.P14411751179371253086

`∪[A004836(n+1), A047719(n+1)]`
-/

namespace A004837.P14411751179371253086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004837.P14411751179371253086

/-! ## A004837.P1467122644239542477

`lt[A002377(round(acot(n)+n)), 9]`
-/

namespace A004837.P1467122644239542477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004837.P1467122644239542477

/-! ## A004837.P3193335319795387394

`lt[A002377(round(sqrt(n²+1))), 9]`
-/

namespace A004837.P3193335319795387394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004837.P3193335319795387394

/-! ## A004837.P13867758112200623979

`lt[6, 15-A002377(A028310(n))]`
-/

namespace A004837.P13867758112200623979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - A002377 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004837.P13867758112200623979

/-!
# A004838: Numbers that are the sum of at most 9 nonzero 4th powers.

The programs for A004838, there is no canonical definition to state claims against.
-/

/-! ## A004838.P12672850137044432041

`∪[A003343(n+1), A004837(n+1)]`
-/

namespace A004838.P12672850137044432041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004838.P12672850137044432041

/-! ## A004838.P4121943843670714688

`∪[A004837(n+1), A047720(n+1)]`
-/

namespace A004838.P4121943843670714688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004838.P4121943843670714688

/-! ## A004838.P5721398153736805296

`lt[A002377(round(acot(n)+n)), 10]`
-/

namespace A004838.P5721398153736805296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004838.P5721398153736805296

/-! ## A004838.P9019942058933857856

`lt[A002377(round(sqrt(n²+1))), 10]`
-/

namespace A004838.P9019942058933857856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004838.P9019942058933857856

/-! ## A004838.P16158434540938836362

`lt[(A002377(A028310(n))-10)/19, 0]`
-/

namespace A004838.P16158434540938836362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002377 (A028310 n).toNat - 10 : ℚ) / 19

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004838.P16158434540938836362

/-! ## A004838.P13564370557960841902

`lt[(A002377(A233583(n+1))-1)/9, 1]`
-/

namespace A004838.P13564370557960841902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002377 (A233583 (n + 1)).toNat - 1 : ℚ) / 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004838.P13564370557960841902

/-!
# A004839: Numbers that are the sum of at most 10 nonzero 4th powers.

The programs for A004839, there is no canonical definition to state claims against.
-/

/-! ## A004839.P10912559250003302891

`∪[A003344(n+1), A004838(n+1)]`
-/

namespace A004839.P10912559250003302891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004839.P10912559250003302891

/-! ## A004839.P5423020030051082069

`∪[A004838(n+1), A047721(n+1)]`
-/

namespace A004839.P5423020030051082069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004839.P5423020030051082069

/-! ## A004839.P16148831961680754910

`lt[A002377(round(acot(n)+n)), 11]`
-/

namespace A004839.P16148831961680754910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004839.P16148831961680754910

/-! ## A004839.P8356136984802204131

`lt[A002377(round(sqrt(n²+1))), 11]`
-/

namespace A004839.P8356136984802204131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004839.P8356136984802204131

/-! ## A004839.P743057728074273435

`lt[A002377(A028310(n))-6, 5]`
-/

namespace A004839.P743057728074273435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat - 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004839.P743057728074273435

/-! ## A004839.P11889790379168099135

`A004905(n+1)%A062330(A016754(n))`
-/

namespace A004839.P11889790379168099135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004905 (n + 1)) (A062330 (A016754 n).toNat)

end

end A004839.P11889790379168099135

/-!
# A004840: Numbers that are the sum of at most 11 nonzero 4th powers.

The programs for A004840, there is no canonical definition to state claims against.
-/

/-! ## A004840.P14867495873836031728

`∪[A003345(n+1), A004839(n+1)]`
-/

namespace A004840.P14867495873836031728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004840.P14867495873836031728

/-! ## A004840.P963113019837629093

`∪[A004839(n+1), A047722(n+1)]`
-/

namespace A004840.P963113019837629093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004840.P963113019837629093

/-! ## A004840.P151943035810205529

`lt[A002377(round(acot(n+1)+n))-9, 3]`
-/

namespace A004840.P151943035810205529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ))).toNat - 9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004840.P151943035810205529

/-! ## A004840.P9168326899606669992

`lt[A002377(round(acot(2*n)+n))/2, 6]`
-/

namespace A004840.P9168326899606669992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 * n : ℝ) + (n : ℝ))).toNat : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004840.P9168326899606669992

/-! ## A004840.P7286924710609619692

`lt[A171765(A002377(round(acot(n)+n))), 2]`
-/

namespace A004840.P7286924710609619692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004840.P7286924710609619692

/-! ## A004840.P4735558716669895341

`lt[A002377(A028310(n)), 12]`
-/

namespace A004840.P4735558716669895341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004840.P4735558716669895341

/-! ## A004840.P2847853919013071471

`lt[A002377(A233583(n+1)), 12]`
-/

namespace A004840.P2847853919013071471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004840.P2847853919013071471

/-! ## A004840.P4613451448875269059

`eq[0, A006927(A053836(n))]`
-/

namespace A004840.P4613451448875269059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 (A053836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004840.P4613451448875269059

/-! ## A004840.P6466295127795976791

`lt[A053836(n), A329514(A043308(n+1))]`
-/

namespace A004840.P6466295127795976791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329514 (A043308 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004840.P6466295127795976791

/-! ## A004840.P13084821613336333247

`lt[A053836(n), A329514(A102363(n+2))]`
-/

namespace A004840.P13084821613336333247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329514 (A102363 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004840.P13084821613336333247

/-!
# A004841: Numbers that are the sum of at most 12 nonzero 4th powers.

The programs for A004841, there is no canonical definition to state claims against.
-/

/-! ## A004841.P15128387105819295475

`lt[A002377(round(acot(n)+n)), 13]`
-/

namespace A004841.P15128387105819295475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004841.P15128387105819295475

/-! ## A004841.P17086621237118080457

`lt[A002377(round(sqrt(n²+1))), 13]`
-/

namespace A004841.P17086621237118080457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004841.P17086621237118080457

/-! ## A004841.P13638621254523020959

`∪[A003346(n+1), A004840(n+1)]`
-/

namespace A004841.P13638621254523020959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004841.P13638621254523020959

/-! ## A004841.P1931422488598917943

`∪[A004840(n+1), A047723(n+1)]`
-/

namespace A004841.P1931422488598917943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004841.P1931422488598917943

/-! ## A004841.P6817419261136472558

`lt[A171765(A002377(abs(1-n)+1)), 3]`
-/

namespace A004841.P6817419261136472558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 (A002377 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004841.P6817419261136472558

/-! ## A004841.P9609014801817519902

`A023808(A023782(n+2))%A023789(2*(n+1))`
-/

namespace A004841.P9609014801817519902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023808 (A023782 (n + 2)).toNat) (A023789 (2 * (n + 1)))

end

end A004841.P9609014801817519902

/-! ## A004841.P15872060599491205871

`A023808(A023782(n+2))%A023788(n+2)`
-/

namespace A004841.P15872060599491205871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023808 (A023782 (n + 2)).toNat) (A023788 (n + 2))

end

end A004841.P15872060599491205871

/-! ## A004841.P10436328367596479100

`A004896(n+1)%A096166(n+1)`
-/

namespace A004841.P10436328367596479100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004896 (n + 1)) (A096166 (n + 1))

end

end A004841.P10436328367596479100

/-!
# A004842: Numbers that are the sum of at most 2 positive 5th powers.

The programs for A004842, there is no canonical definition to state claims against.
-/

/-! ## A004842.P2591344697163874742

`∪[A003347(n+1), n^5]`
-/

namespace A004842.P2591344697163874742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A004842.P2591344697163874742

/-! ## A004842.P5797322107708565030

`∪[A000584(n), A003347(n+1)]`
-/

namespace A004842.P5797322107708565030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004842.P5797322107708565030

/-! ## A004842.P10414277340844946541

`∩[A004843(n+1), A247099(n+1)]`
-/

namespace A004842.P10414277340844946541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004842.P10414277340844946541

/-! ## A004842.P11298216352026246782

`∩[A004844(n+1), A247099(n+1)]`
-/

namespace A004842.P11298216352026246782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004842.P11298216352026246782

/-! ## A004842.P1133477024030830197

`A055014(A329447(n))%A141214(n)²`
-/

namespace A004842.P1133477024030830197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055014 (A329447 n).toNat) (A141214 n ^ 2)

end

end A004842.P1133477024030830197

/-!
# A004843: Numbers that are the sum of at most 3 positive 5th powers.

The programs for A004843, there is no canonical definition to state claims against.
-/

/-! ## A004843.P126345858355245232

`lt[A188462(round(acot(n)+n)), 4]`
-/

namespace A004843.P126345858355245232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004843.P126345858355245232

/-! ## A004843.P12675395596665688054

`lt[A188462(round(sqrt(n²+1))), 4]`
-/

namespace A004843.P12675395596665688054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004843.P12675395596665688054

/-! ## A004843.P421248953238085677

`lt[A188462(A028310(n))-2, 2]`
-/

namespace A004843.P421248953238085677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004843.P421248953238085677

/-! ## A004843.P18270071718171340797

`lt[A188462(A065033(2*n))+1, 5]`
-/

namespace A004843.P18270071718171340797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004843.P18270071718171340797

/-!
# A004844: Numbers that are the sum of at most 4 positive 5th powers.

The programs for A004844, there is no canonical definition to state claims against.
-/

/-! ## A004844.P16498520157563155046

`∪[A003349(n+1), A004843(n+1)]`
-/

namespace A004844.P16498520157563155046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004844.P16498520157563155046

/-! ## A004844.P18077685781254626911

`lt[A188462(round(acot(n)+n)), 5]`
-/

namespace A004844.P18077685781254626911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004844.P18077685781254626911

/-! ## A004844.P18395363241939813740

`lt[A188462(A028310(n)), 5]`
-/

namespace A004844.P18395363241939813740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004844.P18395363241939813740

/-! ## A004844.P12513926138833966176

`∩[A004845(n+1), A023443(A004845(n+1))]`
-/

namespace A004844.P12513926138833966176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004845 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004844.P12513926138833966176

/-! ## A004844.P10633353169727417093

`lt[A188462(A065033(2*n)), 5]`
-/

namespace A004844.P10633353169727417093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004844.P10633353169727417093

/-!
# A004845: Numbers that are the sum of at most 5 positive 5th powers.

The programs for A004845, there is no canonical definition to state claims against.
-/

/-! ## A004845.P13883663860944084379

`∪[A003350(n+1), A004844(n+1)]`
-/

namespace A004845.P13883663860944084379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004845.P13883663860944084379

/-! ## A004845.P973377091432366866

`A336820(Δ[A264443(n)])`
-/

namespace A004845.P973377091432366866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (f1 (n + 1) - f1 n).toNat

end

end A004845.P973377091432366866

/-! ## A004845.P8050337704879143708

`A336820(A046691(n+3))`
-/

namespace A004845.P8050337704879143708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A046691 (n + 3)).toNat

end

end A004845.P8050337704879143708

/-! ## A004845.P8589865411478570390

`A336820(Δ[A023545(n+1)])`
-/

namespace A004845.P8589865411478570390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (f1 (n + 1) - f1 n).toNat

end

end A004845.P8589865411478570390

/-! ## A004845.P4760612632102779905

`A336820(A167499(n+4)-9)`
-/

namespace A004845.P4760612632102779905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A167499 (n + 4) - 9).toNat

end

end A004845.P4760612632102779905

/-! ## A004845.P13709295975504038926

`A336820(A000096(n+3)+n+2)`
-/

namespace A004845.P13709295975504038926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A004845.P13709295975504038926

/-! ## A004845.P6033387814780489400

`A336820(A167487(n)+A004767(n))`
-/

namespace A004845.P6033387814780489400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A167487 n + A004767 n).toNat

end

end A004845.P6033387814780489400

/-! ## A004845.P2839110685832292391

`A336820(A264443(n+1)-A264443(n))`
-/

namespace A004845.P2839110685832292391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A264443 (n + 1) - A264443 n).toNat

end

end A004845.P2839110685832292391

/-! ## A004845.P7891289525340876923

`A336820(A000217(n+9)-A016825(n+8))`
-/

namespace A004845.P7891289525340876923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000217 (n + 9) - A016825 (n + 8)).toNat

end

end A004845.P7891289525340876923

/-! ## A004845.P4037692179470623818

`A336820(A167487(n+6)-A005843(n+12))`
-/

namespace A004845.P4037692179470623818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A167487 (n + 6) - A005843 (n + 12)).toNat

end

end A004845.P4037692179470623818

/-! ## A004845.P2995658868487369462

`A336820(eq[4, A054123(n)])`
-/

namespace A004845.P2995658868487369462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004845.P2995658868487369462

/-!
# A004846: Numbers that are the sum of at most 6 positive 5th powers.

The programs for A004846, there is no canonical definition to state claims against.
-/

/-! ## A004846.P7664759859223246458

`∪[A003351(n+1), A004845(n+1)]`
-/

namespace A004846.P7664759859223246458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004846.P7664759859223246458

/-! ## A004846.P9730574536037998605

`lt[A188462(round(acot(n)+n)), 7]`
-/

namespace A004846.P9730574536037998605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004846.P9730574536037998605

/-! ## A004846.P6574638816519712093

`lt[A188462(A028310(n)), 7]`
-/

namespace A004846.P6574638816519712093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004846.P6574638816519712093

/-! ## A004846.P15231879114433890298

`lt[A188462(A065033(2*n)), 7]`
-/

namespace A004846.P15231879114433890298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004846.P15231879114433890298

/-! ## A004846.P17759530061394919475

`lt[A188462(A233583(n+1)), 7]`
-/

namespace A004846.P17759530061394919475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004846.P17759530061394919475

/-!
# A004847: Numbers that are the sum of at most 7 positive 5th powers.

The programs for A004847, there is no canonical definition to state claims against.
-/

/-! ## A004847.P2655755024654570751

`∪[A003352(n+1), A004846(n+1)]`
-/

namespace A004847.P2655755024654570751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004847.P2655755024654570751

/-! ## A004847.P4436600516714645280

`lt[A188462(round(acot(n)+n)), 8]`
-/

namespace A004847.P4436600516714645280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004847.P4436600516714645280

/-! ## A004847.P16942262194966554154

`lt[A188462(A065033(2*n)), 8]`
-/

namespace A004847.P16942262194966554154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004847.P16942262194966554154

/-! ## A004847.P16351720813808297088

`lt[A188462(A233583(n+1)), 8]`
-/

namespace A004847.P16351720813808297088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004847.P16351720813808297088

/-! ## A004847.P10106219789437149381

`A004913(n+1)%A259953(A019427(A001504(n)))`
-/

namespace A004847.P10106219789437149381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004913 (n + 1)) (A259953 (A019427 (A001504 n).toNat).toNat)

end

end A004847.P10106219789437149381

/-!
# A004848: Numbers that are the sum of at most 8 positive 5th powers.

The programs for A004848, there is no canonical definition to state claims against.
-/

/-! ## A004848.P8054322192919635739

`∪[A003353(n+1), A004847(n+1)]`
-/

namespace A004848.P8054322192919635739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004848.P8054322192919635739

/-! ## A004848.P3977556239360475163

`lt[A188462(round(acot(n)+n)), 9]`
-/

namespace A004848.P3977556239360475163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004848.P3977556239360475163

/-! ## A004848.P8386742334091634969

`lt[A188462(a(2%n)+n), 9]` with `a(0)=4, a(1)=-2, a(2)=0, a(3)=2, a(4)=3, a(5)=0, a(6)=2, a(7)=2`
-/

namespace A004848.P8386742334091634969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -2, 0, 2, 3, 0, 2, 2] fun n f1 =>
  A188462 (f1 (2 % n) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004848.P8386742334091634969

/-! ## A004848.P6334853683075677264

`lt[A188462(A028310(n)), 9]`
-/

namespace A004848.P6334853683075677264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004848.P6334853683075677264

/-! ## A004848.P16782177995479118550

`lt[A188462(A065033(2*n)), 9]`
-/

namespace A004848.P16782177995479118550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004848.P16782177995479118550

/-! ## A004848.P2050555479698931771

`lt[A188462(A233583(n+1)), 9]`
-/

namespace A004848.P2050555479698931771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004848.P2050555479698931771

/-!
# A004849: Numbers that are the sum of at most 9 positive 5th powers.

The programs for A004849, there is no canonical definition to state claims against.
-/

/-! ## A004849.P67846992791183357

`∪[A003354(n+1), A004848(n+1)]`
-/

namespace A004849.P67846992791183357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004849.P67846992791183357

/-! ## A004849.P1052716248613351190

`lt[A188462(round(acot(n)+n)), 10]`
-/

namespace A004849.P1052716248613351190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004849.P1052716248613351190

/-! ## A004849.P13992383155914557652

`lt[A188462(A028310(n)), 10]`
-/

namespace A004849.P13992383155914557652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004849.P13992383155914557652

/-! ## A004849.P9514154627870048642

`lt[A188462(A065033(2*n)), 10]`
-/

namespace A004849.P9514154627870048642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004849.P9514154627870048642

/-! ## A004849.P15872803329795324242

`lt[A188462(A233583(n+1)), 10]`
-/

namespace A004849.P15872803329795324242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004849.P15872803329795324242

/-!
# A004850: Numbers that are the sum of at most 10 positive 5th powers.

The programs for A004850, there is no canonical definition to state claims against.
-/

/-! ## A004850.P7425544095824065693

`∪[A003355(n+1), A004849(n+1)]`
-/

namespace A004850.P7425544095824065693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004850.P7425544095824065693

/-! ## A004850.P17671250618877030000

`lt[A188462(round(acot(n)+n))-6, 5]`
-/

namespace A004850.P17671250618877030000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004850.P17671250618877030000

/-! ## A004850.P3168794817452667038

`lt[A188462(A028310(n)), 11]`
-/

namespace A004850.P3168794817452667038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004850.P3168794817452667038

/-! ## A004850.P16099185024223810636

`lt[A188462(A065033(2*n)), 12-sqrt(2)]`
-/

namespace A004850.P16099185024223810636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A065033 (2 * n)).toNat

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  12 - Real.sqrt (2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004850.P16099185024223810636

/-! ## A004850.P1800896008939348628

`A374249(∑[A089170(n)])`
-/

namespace A004850.P1800896008939348628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004850.P1800896008939348628

/-!
# A004851: Numbers that are the sum of at most 11 positive 5th powers.

The programs for A004851, there is no canonical definition to state claims against.
-/

/-! ## A004851.P9539509529659844851

`∪[A003356(n+1), A004850(n+1)]`
-/

namespace A004851.P9539509529659844851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004851.P9539509529659844851

/-! ## A004851.P13667959002519558938

`lt[A188462(round(acot(n)+n)), 12]`
-/

namespace A004851.P13667959002519558938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004851.P13667959002519558938

/-! ## A004851.P9199561010902935134

`lt[A188462(round(sqrt(n²+1))), 12]`
-/

namespace A004851.P9199561010902935134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004851.P9199561010902935134

/-! ## A004851.P9298988828234592604

`lt[C(A188462(A028310(n)), 11), 9]`
-/

namespace A004851.P9298988828234592604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A188462 (A028310 n).toNat).toNat 11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004851.P9298988828234592604

/-! ## A004851.P12448097203874281823

`∑[A355924(A007094(3*n+2))]-1`
-/

namespace A004851.P12448097203874281823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355924 (A007094 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004851.P12448097203874281823

/-!
# A004852: Numbers that are the sum of at most 12 positive 5th powers.

The programs for A004852, there is no canonical definition to state claims against.
-/

/-! ## A004852.P14970610181614823274

`∪[A003357(n+1), A004851(n+1)]`
-/

namespace A004852.P14970610181614823274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004852.P14970610181614823274

/-! ## A004852.P6746733474338672611

`lt[A188462(round(acot(n)+n)), 13]`
-/

namespace A004852.P6746733474338672611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004852.P6746733474338672611

/-! ## A004852.P13861730767714858768

`lt[A188462(A028310(n)), 25/2]`
-/

namespace A004852.P13861730767714858768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A004852.P13861730767714858768

/-! ## A004852.P14835101849366115062

`lt[(A188462(A065033(2*n))/5)²-4, 2]`
-/

namespace A004852.P14835101849366115062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A188462 (A065033 (2 * n)).toNat : ℚ) / 5) ^ 2 - 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004852.P14835101849366115062

/-! ## A004852.P15760253160219479227

`lt[A188462(A233583(n+1)), 13]`
-/

namespace A004852.P15760253160219479227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004852.P15760253160219479227

/-! ## A004852.P9254781513451392909

`A004918(n+1)%lcm(14, A339486(n))`
-/

namespace A004852.P9254781513451392909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004918 (n + 1)) (Int.lcm 14 (A339486 n) : ℤ)

end

end A004852.P9254781513451392909

/-! ## A004852.P6737775279978477903

`A004907(n+1)%A096166(n+1)`
-/

namespace A004852.P6737775279978477903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004907 (n + 1)) (A096166 (n + 1))

end

end A004852.P6737775279978477903

/-!
# A004853: Numbers that are the sum of at most 2 nonzero 6th powers.

The programs for A004853, there is no canonical definition to state claims against.
-/

/-! ## A004853.P5115632371088973646

`∪[A003358(n+1), A001014(n)]`
-/

namespace A004853.P5115632371088973646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P5115632371088973646

/-! ## A004853.P15603620632049731497

`∪[A003358(n+1), A000578(n)²]`
-/

namespace A004853.P15603620632049731497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P15603620632049731497

/-! ## A004853.P15596749367986485358

`∪[A003358(n+1), n*A000584(n)]`
-/

namespace A004853.P15596749367986485358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000584 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P15596749367986485358

/-! ## A004853.P2401791905170678965

`∩[A004854(n+1)-1, A004854(n+1)]`
-/

namespace A004853.P2401791905170678965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P2401791905170678965

/-! ## A004853.P1185637919657203609

`A004854(eq[1, A004854(n+2)-A004854(n+1)]+1)`
-/

namespace A004853.P1185637919657203609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 2) - A004854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004853.P1185637919657203609

/-! ## A004853.P9390940486451788455

`∩[A004854(n+1), A230314(n+1)]`
-/

namespace A004853.P9390940486451788455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P9390940486451788455

/-! ## A004853.P10756643982117238010

`∩[A004855(n+1), A230314(n+1)]`
-/

namespace A004853.P10756643982117238010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P10756643982117238010

/-! ## A004853.P6090076252105549751

`∩[A004854(n+1), A004999(n+1)]`
-/

namespace A004853.P6090076252105549751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P6090076252105549751

/-! ## A004853.P15405913084272764561

`∩[A004855(n+1), A004999(n+1)]`
-/

namespace A004853.P15405913084272764561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004853.P15405913084272764561

/-! ## A004853.P11066481158788463369

`A055015(A329447(n))+A007949(A040984(n+1))`
-/

namespace A004853.P11066481158788463369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 (A329447 n).toNat + A007949 (A040984 (n + 1)).toNat

end

end A004853.P11066481158788463369

/-!
# A004854: Numbers that are the sum of at most 3 nonzero 6th powers.

The programs for A004854, there is no canonical definition to state claims against.
-/

/-! ## A004854.P8924031635172352238

`∪[A003359(n+1), A004853(n+1)]`
-/

namespace A004854.P8924031635172352238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004854.P8924031635172352238

/-! ## A004854.P549270733435373527

`∩[A004856(n+1)-2, A004857(n+1)]`
-/

namespace A004854.P549270733435373527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004854.P549270733435373527

/-! ## A004854.P1143680561471095013

`∩[A004856(n+1)-2, A004860(n+1)]`
-/

namespace A004854.P1143680561471095013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004854.P1143680561471095013

/-! ## A004854.P1947004433719240746

`∩[A004855(n+1)-1, A004861(n+1)]`
-/

namespace A004854.P1947004433719240746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004854.P1947004433719240746

/-! ## A004854.P8720869592685109190

`∩[A004855(n+1), A047361(n+1)]`
-/

namespace A004854.P8720869592685109190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004854.P8720869592685109190

/-!
# A004855: Numbers that are the sum of at most 4 nonzero 6th powers.

The programs for A004855, there is no canonical definition to state claims against.
-/

/-! ## A004855.P6870545193569040665

`∪[A003360(n+1), A004854(n+1)]`
-/

namespace A004855.P6870545193569040665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P6870545193569040665

/-! ## A004855.P485279283403444519

`∩[A004856(n+1), A004857(n+1)-2]`
-/

namespace A004855.P485279283403444519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P485279283403444519

/-! ## A004855.P11428934781294468166

`∩[A004856(n+1)-1, A004860(n+1)]`
-/

namespace A004855.P11428934781294468166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P11428934781294468166

/-! ## A004855.P8028265192965660065

`∩[A004856(n+1)-1, A004861(n+1)]`
-/

namespace A004855.P8028265192965660065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P8028265192965660065

/-! ## A004855.P4238640848279493186

`∩[A004856(n+1), A047337(n+1)]`
-/

namespace A004855.P4238640848279493186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P4238640848279493186

/-! ## A004855.P10586870355871263957

`∩[A004857(n+1), A047337(n+1)]`
-/

namespace A004855.P10586870355871263957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P10586870355871263957

/-! ## A004855.P11406239258288902582

`∩[A004856(n+1), A047303(n+1)]`
-/

namespace A004855.P11406239258288902582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004855.P11406239258288902582

/-!
# A004856: Numbers that are the sum of at most 5 nonzero 6th powers.

The programs for A004856, there is no canonical definition to state claims against.
-/

/-! ## A004856.P15457351075417284433

`∪[A003361(n+1), A004855(n+1)]`
-/

namespace A004856.P15457351075417284433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004856.P15457351075417284433

/-! ## A004856.P11524868255555924537

`A004857(eq[1, Δ[A004857(n+1)]]+1)`
-/

namespace A004856.P11524868255555924537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004856.P11524868255555924537

/-! ## A004856.P2837972837010006928

`A004857(eq[1, A004857(n+2)-A004857(n+1)]+1)`
-/

namespace A004856.P2837972837010006928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 2) - A004857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004856.P2837972837010006928

/-! ## A004856.P9411727959044004692

`A004857(lt[A004857(n+2)-A004857(n+1), 2]+1)`
-/

namespace A004856.P9411727959044004692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 2) - A004857 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A004856.P9411727959044004692

/-! ## A004856.P13471515203390020990

`∩[A004857(n+1), A047368(n+1)]`
-/

namespace A004856.P13471515203390020990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004856.P13471515203390020990

/-! ## A004856.P15231534816641711604

`∩[A004859(n+1), A023443(A004859(n+1))-2]`
-/

namespace A004856.P15231534816641711604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004859 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004856.P15231534816641711604

/-!
# A004857: Numbers that are the sum of at most 6 nonzero 6th powers.

The programs for A004857, there is no canonical definition to state claims against.
-/

/-! ## A004857.P2704233851685865736

`∪[A003362(n+1), A004856(n+1)]`
-/

namespace A004857.P2704233851685865736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004857.P2704233851685865736

/-! ## A004857.P14457226711517255549

`∩[A004858(n+1)-1, A004861(n+1)]`
-/

namespace A004857.P14457226711517255549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004857.P14457226711517255549

/-! ## A004857.P9416751345502739619

`record[A106608(A004858(n+1))]`
-/

namespace A004857.P9416751345502739619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A004858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004857.P9416751345502739619

/-! ## A004857.P7425309690531554891

`A336820(A052905(n+3))`
-/

namespace A004857.P7425309690531554891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A052905 (n + 3)).toNat

end

end A004857.P7425309690531554891

/-! ## A004857.P7622662681598267457

`A336820(A055999(n+3)+1)`
-/

namespace A004857.P7622662681598267457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A055999 (n + 3) + 1).toNat

end

end A004857.P7622662681598267457

/-! ## A004857.P8595009719436317751

`A336820(A056000(n+2)+5)`
-/

namespace A004857.P8595009719436317751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A056000 (n + 2) + 5).toNat

end

end A004857.P8595009719436317751

/-! ## A004857.P5622610890266158143

`A336820(A000217(n+6)-5)`
-/

namespace A004857.P5622610890266158143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000217 (n + 6) - 5).toNat

end

end A004857.P5622610890266158143

/-! ## A004857.P3009824429598842293

`A336820(A000124(n+6)-6)`
-/

namespace A004857.P3009824429598842293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000124 (n + 6) - 6).toNat

end

end A004857.P3009824429598842293

/-! ## A004857.P14278428853709857269

`A336820(Δ[A264443(n+1)]-1)`
-/

namespace A004857.P14278428853709857269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (f1 (n + 1) - f1 n - 1).toNat

end

end A004857.P14278428853709857269

/-! ## A004857.P15436358779747935292

`A336820(Δ[A023545(n+2)]-1)`
-/

namespace A004857.P15436358779747935292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (f1 (n + 1) - f1 n - 1).toNat

end

end A004857.P15436358779747935292

/-!
# A004858: Numbers that are the sum of at most 7 nonzero 6th powers.

The programs for A004858, there is no canonical definition to state claims against.
-/

/-! ## A004858.P9594377409560221349

`∪[A003363(n+1), A004857(n+1)]`
-/

namespace A004858.P9594377409560221349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004858.P9594377409560221349

/-! ## A004858.P17218903854470249306

`∩[A004859(n+1), A023443(A004859(n+1))]`
-/

namespace A004858.P17218903854470249306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004859 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004858.P17218903854470249306

/-! ## A004858.P1455611461572888710

`∩[A004861(n+1), A023443(A004861(n+1))-2]`
-/

namespace A004858.P1455611461572888710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004861 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004858.P1455611461572888710

/-! ## A004858.P4483818944166151282

`A004913(n+1)%A096166(A004277(n))`
-/

namespace A004858.P4483818944166151282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004913 (n + 1)) (A096166 (A004277 n).toNat)

end

end A004858.P4483818944166151282

/-! ## A004858.P17706775208019629403

`A004902(n+1)%A103505(A247343(A006094(n+1)))`
-/

namespace A004858.P17706775208019629403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004902 (n + 1)) (A103505 (A247343 (A006094 (n + 1)).toNat).toNat)

end

end A004858.P17706775208019629403

/-!
# A004859: Numbers that are the sum of at most 8 nonzero 6th powers.

The programs for A004859, there is no canonical definition to state claims against.
-/

/-! ## A004859.P12813665790243447154

`∪[A003364(n+1), A004858(n+1)]`
-/

namespace A004859.P12813665790243447154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004859.P12813665790243447154

/-! ## A004859.P5007307620264167231

`∩[A004860(n+1), A023443(A004860(n+1))]`
-/

namespace A004859.P5007307620264167231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004860 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004859.P5007307620264167231

/-! ## A004859.P1044573968923261973

`∩[A004861(n+1), A023444(A004861(n+1))]`
-/

namespace A004859.P1044573968923261973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004861 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004859.P1044573968923261973

/-! ## A004859.P6186937311635107685

`∩[A004862(n+1), A023443(A004862(n+1))-2]`
-/

namespace A004859.P6186937311635107685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004862 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004859.P6186937311635107685

/-! ## A004859.P5112513623654268962

`eq[A024652(A053832(n)), A057946(n)]`
-/

namespace A004859.P5112513623654268962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024652 (A053832 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004859.P5112513623654268962

/-!
# A004860: Numbers that are the sum of at most 9 nonzero 6th powers.

The programs for A004860, there is no canonical definition to state claims against.
-/

/-! ## A004860.P6835717063306807952

`∪[A003365(n+1), A004859(n+1)]`
-/

namespace A004860.P6835717063306807952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004860.P6835717063306807952

/-! ## A004860.P730157478300576381

`∩[A004861(n+1), A023443(A004861(n+1))]`
-/

namespace A004860.P730157478300576381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004861 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004860.P730157478300576381

/-! ## A004860.P16461722133266960469

`A004915(n+1)%A096166(A072154(n))`
-/

namespace A004860.P16461722133266960469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004915 (n + 1)) (A096166 (A072154 n).toNat)

end

end A004860.P16461722133266960469

/-! ## A004860.P11829175812356106033

`A004904(n+1)%A119872(A137688(n))`
-/

namespace A004860.P11829175812356106033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004904 (n + 1)) (A119872 (A137688 n).toNat)

end

end A004860.P11829175812356106033

/-!
# A004861: Numbers that are the sum of at most 10 nonzero 6th powers.

The programs for A004861, there is no canonical definition to state claims against.
-/

/-! ## A004861.P4244450655406358014

`∪[A003366(n+1), A004860(n+1)]`
-/

namespace A004861.P4244450655406358014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004861.P4244450655406358014

/-! ## A004861.P2696931390657202546

`∩[A004862(n+1), A023443(A004862(n+1))]`
-/

namespace A004861.P2696931390657202546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004862 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004861.P2696931390657202546

/-! ## A004861.P15557934146265609201

`∩[A004863(n+1), A023444(A004863(n+1))]`
-/

namespace A004861.P15557934146265609201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004863 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004861.P15557934146265609201

/-! ## A004861.P17630329996290979634

`A004916(n+1)%A066446(A046391(n+1))`
-/

namespace A004861.P17630329996290979634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004916 (n + 1)) (A066446 (A046391 (n + 1)).toNat)

end

end A004861.P17630329996290979634

/-! ## A004861.P6014595719471078204

`∑[A127648(∑[A329865(3*n+5)]+n)]+n`
-/

namespace A004861.P6014595719471078204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329865 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A004861.P6014595719471078204

/-!
# A004862: Numbers that are the sum of at most 11 nonzero 6th powers.

The programs for A004862, there is no canonical definition to state claims against.
-/

/-! ## A004862.P14409063204222184247

`∪[A003367(n+1), A004861(n+1)]`
-/

namespace A004862.P14409063204222184247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004862.P14409063204222184247

/-! ## A004862.P13768128888984458537

`∩[A004863(n+1), A023443(A004863(n+1))]`
-/

namespace A004862.P13768128888984458537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004863 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004862.P13768128888984458537

/-! ## A004862.P1533006873180071249

`∩[A023444(A004863(n+1)+1), A004863(n+1)]`
-/

namespace A004862.P1533006873180071249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A004863 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004862.P1533006873180071249

/-! ## A004862.P4362447648074943314

`A004863(lt[n, 64-Δ[A004863(n+1)]]+1)`
-/

namespace A004862.P4362447648074943314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 - (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A004862.P4362447648074943314

/-! ## A004862.P8246781247981255609

`∑[A128751(A320500(n+1))]-1`
-/

namespace A004862.P8246781247981255609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128751 (A320500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004862.P8246781247981255609

/-!
# A004863: Numbers that are the sum of at most 12 nonzero 6th powers.

The programs for A004863, there is no canonical definition to state claims against.
-/

/-! ## A004863.P14196953564664279187

`∪[A003368(n+1), A004862(n+1)]`
-/

namespace A004863.P14196953564664279187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004863.P14196953564664279187

/-! ## A004863.P4687350912407816325

`A004896(n+1)%(14*A339486(n))`
-/

namespace A004863.P4687350912407816325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004896 (n + 1)) (14 * A339486 n)

end

end A004863.P4687350912407816325

/-! ## A004863.P7395464856382830374

`A004918(n+1)%A096166(n+1)`
-/

namespace A004863.P7395464856382830374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004918 (n + 1)) (A096166 (n + 1))

end

end A004863.P7395464856382830374

/-! ## A004863.P3295449632151871148

`A004907(n+1)%A343297(A064235(n+1))`
-/

namespace A004863.P3295449632151871148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004907 (n + 1)) (A343297 (A064235 (n + 1)).toNat)

end

end A004863.P3295449632151871148

/-!
# A004864: Numbers that are the sum of at most 2 positive 7th powers.

The programs for A004864, there is no canonical definition to state claims against.
-/

/-! ## A004864.P15652086265481549199

`∪[A003369(n+1), A001015(n)]`
-/

namespace A004864.P15652086265481549199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004864.P15652086265481549199

/-! ## A004864.P7288175115840085992

`∩[A004865(n+1), A364654(n+1)]`
-/

namespace A004864.P7288175115840085992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004864.P7288175115840085992

/-! ## A004864.P14115886515887487950

`∩[A004866(n+1), A364654(n+1)]`
-/

namespace A004864.P14115886515887487950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004864.P14115886515887487950

/-! ## A004864.P9221187634037736571

`∩[A004867(n+1), A364654(n+1)]`
-/

namespace A004864.P9221187634037736571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004864.P9221187634037736571

/-! ## A004864.P13373899365982858819

`∩[A004868(n+1), A364654(n+1)]`
-/

namespace A004864.P13373899365982858819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004864.P13373899365982858819

/-! ## A004864.P12687946843869035280

`∩[A004869(n+1), A364654(n+1)]`
-/

namespace A004864.P12687946843869035280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004864.P12687946843869035280

/-! ## A004864.P12101297225254006807

`record[A123253(10*A329447(n))]`
-/

namespace A004864.P12101297225254006807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123253 (10 * A329447 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004864.P12101297225254006807

/-! ## A004864.P16585655192459219408

`record[A123253(A329447(n))%A188226(n)]`
-/

namespace A004864.P16585655192459219408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123253 (A329447 n).toNat) (A188226 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004864.P16585655192459219408

/-! ## A004864.P90304866522380754

`record[A123253(A329447(n))/A178334(n)!]`
-/

namespace A004864.P90304866522380754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123253 (A329447 n).toNat : ℚ) / (Nat.factorial (A178334 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004864.P90304866522380754

/-! ## A004864.P7260305475499979774

`A123253(A329447(n))+A000122(A141911(n+1))`
-/

namespace A004864.P7260305475499979774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123253 (A329447 n).toNat + A000122 (A141911 (n + 1)).toNat

end

end A004864.P7260305475499979774

/-!
# A004865: Numbers that are the sum of at most 3 positive 7th powers.

The programs for A004865, there is no canonical definition to state claims against.
-/

/-! ## A004865.P5682577006239107987

`∪[A003370(n+1), A004864(n+1)]`
-/

namespace A004865.P5682577006239107987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004865.P5682577006239107987

/-! ## A004865.P4926810900154227452

`A004866(eq[1, Δ[A004866(n+1)]]+1)`
-/

namespace A004865.P4926810900154227452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004865.P4926810900154227452

/-! ## A004865.P4861845893827727569

`A004866(eq[1, A004866(n+2)-A004866(n+1)]+1)`
-/

namespace A004865.P4861845893827727569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (n + 2) - A004866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004865.P4861845893827727569

/-! ## A004865.P16951127413740462572

`∩[A004867(n+1)-2, A004867(n+1)]`
-/

namespace A004865.P16951127413740462572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004865.P16951127413740462572

/-! ## A004865.P4492301894061926790

`∩[A004866(n+1)-1, A004868(n+1)]`
-/

namespace A004865.P4492301894061926790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004865.P4492301894061926790

/-!
# A004866: Numbers that are the sum of at most 4 positive 7th powers.

The programs for A004866, there is no canonical definition to state claims against.
-/

/-! ## A004866.P11457267419718792618

`∪[A003371(n+1), A004865(n+1)]`
-/

namespace A004866.P11457267419718792618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004866.P11457267419718792618

/-! ## A004866.P17300627065434580734

`A004867(eq[1, Δ[A004867(n+1)]]+1)`
-/

namespace A004866.P17300627065434580734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004866.P17300627065434580734

/-! ## A004866.P12550810526208252027

`∩[A004867(n+1)-1, A004868(n+1)]`
-/

namespace A004866.P12550810526208252027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004866.P12550810526208252027

/-! ## A004866.P7203581083398787147

`∩[A004867(n+1)-1, A004870(n+1)]`
-/

namespace A004866.P7203581083398787147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004866.P7203581083398787147

/-! ## A004866.P11234250710830501182

`∩[A004867(n+1)-1, A004871(n+1)]`
-/

namespace A004866.P11234250710830501182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004866.P11234250710830501182

/-!
# A004867: Numbers that are the sum of at most 5 positive 7th powers.

The programs for A004867, there is no canonical definition to state claims against.
-/

/-! ## A004867.P9387835444813755602

`∪[A003372(n+1), A004866(n+1)]`
-/

namespace A004867.P9387835444813755602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004867.P9387835444813755602

/-! ## A004867.P15591346328997154071

`A004868(eq[1, Δ[A004868(n+1)]]+1)`
-/

namespace A004867.P15591346328997154071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004867.P15591346328997154071

/-! ## A004867.P4528611815092806924

`A004868(lt[Δ[A004868(n+1)], 2]+1)`
-/

namespace A004867.P4528611815092806924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004867.P4528611815092806924

/-! ## A004867.P4188309892235235220

`A004868(record[n+1-Δ[A004868(n+1)]]+1)`
-/

namespace A004867.P4188309892235235220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004867.P4188309892235235220

/-! ## A004867.P14639034020769672219

`A004868(eq[1, A004868(n+2)-A004868(n+1)]+1)`
-/

namespace A004867.P14639034020769672219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 2) - A004868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004867.P14639034020769672219

/-! ## A004867.P12240227308176245417

`A004868(A123577(n)+1+n)`
-/

namespace A004867.P12240227308176245417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (A123577 n + 1 + (n : ℤ)).toNat

end

end A004867.P12240227308176245417

/-!
# A004868: Numbers that are the sum of at most 6 positive 7th powers.

The programs for A004868, there is no canonical definition to state claims against.
-/

/-! ## A004868.P5012836341734378157

`∪[A003373(n+1), A004867(n+1)]`
-/

namespace A004868.P5012836341734378157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004868.P5012836341734378157

/-! ## A004868.P8143004438550207529

`A004869(eq[1, Δ[A004869(n+1)]]+1)`
-/

namespace A004868.P8143004438550207529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004868.P8143004438550207529

/-! ## A004868.P16330294026624780864

`A004869(lt[Δ[A004869(n+1)], 2]+1)`
-/

namespace A004868.P16330294026624780864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004868.P16330294026624780864

/-! ## A004868.P295851230453769501

`∩[A004870(n+1)-2, A004870(n+1)]`
-/

namespace A004868.P295851230453769501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004868.P295851230453769501

/-! ## A004868.P11896309200222891277

`∩[A057428(2*n+3)+A004869(n+1), A004869(n+1)]`
-/

namespace A004868.P11896309200222891277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n + 3) + A004869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004868.P11896309200222891277

/-! ## A004868.P10141724547306469539

`∩[A004871(n+1), A023443(A004871(n+1))-2]`
-/

namespace A004868.P10141724547306469539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004871 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004868.P10141724547306469539

/-!
# A004869: Numbers that are the sum of at most 7 positive 7th powers.

The programs for A004869, there is no canonical definition to state claims against.
-/

/-! ## A004869.P10061480095049921128

`∪[A003374(n+1), A004868(n+1)]`
-/

namespace A004869.P10061480095049921128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004869.P10061480095049921128

/-! ## A004869.P6526324554540796314

`∩[A004870(n+1)-1, A004870(n+1)]`
-/

namespace A004869.P6526324554540796314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004869.P6526324554540796314

/-! ## A004869.P8707808751003687984

`A336820(A055999(n+4))`
-/

namespace A004869.P8707808751003687984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A055999 (n + 4)).toNat

end

end A004869.P8707808751003687984

/-! ## A004869.P2307049424365155413

`A336820(A000217(n+7)-6)`
-/

namespace A004869.P2307049424365155413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000217 (n + 7) - 6).toNat

end

end A004869.P2307049424365155413

/-! ## A004869.P4340393787258964479

`A336820(A000124(n+7)-7)`
-/

namespace A004869.P4340393787258964479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000124 (n + 7) - 7).toNat

end

end A004869.P4340393787258964479

/-! ## A004869.P11125193004941002299

`A336820(A144396(n+3)+A000217(n+5))`
-/

namespace A004869.P11125193004941002299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A144396 (n + 3) + A000217 (n + 5)).toNat

end

end A004869.P11125193004941002299

/-! ## A004869.P17475714493135774050

`A336820(A022267(n+11)%A002378(n+11))`
-/

namespace A004869.P17475714493135774050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (Int.tmod (A022267 (n + 11)) (A002378 (n + 11))).toNat

end

end A004869.P17475714493135774050

/-! ## A004869.P8765860877484282931

`∩[A004872(n+1), A023443(A004872(n+1))-2]`
-/

namespace A004869.P8765860877484282931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004872 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004869.P8765860877484282931

/-!
# A004870: Numbers that are the sum of at most 8 positive 7th powers.

The programs for A004870, there is no canonical definition to state claims against.
-/

/-! ## A004870.P1907845648075467948

`∪[A003375(n+1), A004869(n+1)]`
-/

namespace A004870.P1907845648075467948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004870.P1907845648075467948

/-! ## A004870.P6497526970986252978

`∩[A004871(n+1)-1, A004871(n+1)]`
-/

namespace A004870.P6497526970986252978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004870.P6497526970986252978

/-! ## A004870.P14980820673328049222

`∩[A004871(n+1), A023443(A004871(n+1))]`
-/

namespace A004870.P14980820673328049222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004871 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004870.P14980820673328049222

/-! ## A004870.P6246741780346993364

`∩[A004873(n+1), A023443(A004873(n+1))-2]`
-/

namespace A004870.P6246741780346993364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004873 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004870.P6246741780346993364

/-! ## A004870.P439200348181922520

`∪[∑[A141517(2*(n+1))!]-1, A004869(n+2)]`
-/

namespace A004870.P439200348181922520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A141517 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A004870.P439200348181922520

/-!
# A004871: Numbers that are the sum of at most 9 positive 7th powers.

The programs for A004871, there is no canonical definition to state claims against.
-/

/-! ## A004871.P503157534501042086

`∪[A003376(n+1), A004870(n+1)]`
-/

namespace A004871.P503157534501042086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004871.P503157534501042086

/-! ## A004871.P4006061867672272016

`∩[A004874(n+1)-3, A004874(n+1)]`
-/

namespace A004871.P4006061867672272016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004871.P4006061867672272016

/-! ## A004871.P16550975751329580301

`∩[A004872(n+1), A023443(A004872(n+1))]`
-/

namespace A004871.P16550975751329580301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004872 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004871.P16550975751329580301

/-! ## A004871.P5774769784661357289

`∩[A004873(n+1), A023443(A004873(n+1))-1]`
-/

namespace A004871.P5774769784661357289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004873 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004871.P5774769784661357289

/-! ## A004871.P16488949824633313342

`A004915(n+1)%A003899(A003892(n+1))`
-/

namespace A004871.P16488949824633313342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004915 (n + 1)) (A003899 (A003892 (n + 1)).toNat)

end

end A004871.P16488949824633313342

/-!
# A004872: Numbers that are the sum of at most 10 positive 7th powers.

The programs for A004872, there is no canonical definition to state claims against.
-/

/-! ## A004872.P6611624759610444698

`∪[A003377(n+1), A004871(n+1)]`
-/

namespace A004872.P6611624759610444698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004872.P6611624759610444698

/-! ## A004872.P10616796960277337605

`∩[A004874(n+1)-2, A004874(n+1)]`
-/

namespace A004872.P10616796960277337605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004872.P10616796960277337605

/-! ## A004872.P5908401538246245401

`∩[A004873(n+1), A023443(A004873(n+1))]`
-/

namespace A004872.P5908401538246245401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004873 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004872.P5908401538246245401

/-! ## A004872.P18086875019875817346

`A004916(n+1)%A003899(A003892(n+1))`
-/

namespace A004872.P18086875019875817346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004916 (n + 1)) (A003899 (A003892 (n + 1)).toNat)

end

end A004872.P18086875019875817346

/-! ## A004872.P308880074375310867

`A004873(A098240(n+1)%A292569(n+1))`
-/

namespace A004872.P308880074375310867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (Int.tmod (A098240 (n + 1)) (A292569 (n + 1))).toNat

end

end A004872.P308880074375310867

/-!
# A004873: Numbers that are the sum of at most 11 positive 7th powers.

The programs for A004873, there is no canonical definition to state claims against.
-/

/-! ## A004873.P1934340044257187468

`∪[A003378(n+1), A004872(n+1)]`
-/

namespace A004873.P1934340044257187468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004873.P1934340044257187468

/-! ## A004873.P5385517236872560421

`∩[A004874(n+1)-1, A004874(n+1)]`
-/

namespace A004873.P5385517236872560421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004873.P5385517236872560421

/-! ## A004873.P13297943485380722574

`∩[A004874(n+1), A023443(A004874(n+1))]`
-/

namespace A004873.P13297943485380722574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004874 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004873.P13297943485380722574

/-! ## A004873.P2700154382324372141

`A004874(A252474(n+1)%A265149(n+4))`
-/

namespace A004873.P2700154382324372141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 (Int.tmod (A252474 (n + 1)) (A265149 (n + 4))).toNat

end

end A004873.P2700154382324372141

/-! ## A004873.P839969978416273327

`A004874(A252474(n+1))%A087562(n+1)`
-/

namespace A004873.P839969978416273327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004874 (A252474 (n + 1)).toNat) (A087562 (n + 1))

end

end A004873.P839969978416273327

/-!
# A004874: Numbers that are the sum of at most 12 positive 7th powers.

The programs for A004874, there is no canonical definition to state claims against.
-/

/-! ## A004874.P8730751424564274956

`∪[A003379(n+1), A004873(n+1)]`
-/

namespace A004874.P8730751424564274956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004874.P8730751424564274956

/-! ## A004874.P16634040236211279528

`A004896(n+1)%A343297(A064235(n+4))`
-/

namespace A004874.P16634040236211279528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004896 (n + 1)) (A343297 (A064235 (n + 4)).toNat)

end

end A004874.P16634040236211279528

/-! ## A004874.P6970167209706883559

`∑[floor(A110880(A275062(n))^(n/3))]-1`
-/

namespace A004874.P6970167209706883559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110880 (A275062 n).toNat : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004874.P6970167209706883559

/-! ## A004874.P18267278093920895199

`A004918(n+1)%A061579(A092474(n+1))`
-/

namespace A004874.P18267278093920895199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004918 (n + 1)) (A061579 (A092474 (n + 1)).toNat)

end

end A004874.P18267278093920895199

/-! ## A004874.P6967170246510444602

`∑[A300715(A300715(n)^7)]`
-/

namespace A004874.P6967170246510444602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300715 (A300715 n ^ 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004874.P6967170246510444602

/-!
# A004875: Numbers that are the sum of at most 2 nonzero 8th powers.

The programs for A004875, there is no canonical definition to state claims against.
-/

/-! ## A004875.P11212686445158169478

`∪[A003380(n+1), n²²²]`
-/

namespace A004875.P11212686445158169478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A004875.P11212686445158169478

/-! ## A004875.P1637593491439377445

`∪[A001016(n), A003380(n+1)]`
-/

namespace A004875.P1637593491439377445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P1637593491439377445

/-! ## A004875.P17285117645845438738

`∩[A004876(n+1)-1, A004876(n+1)]`
-/

namespace A004875.P17285117645845438738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P17285117645845438738

/-! ## A004875.P15691616630375895800

`∩[A004877(n+1)-2, A004877(n+1)]`
-/

namespace A004875.P15691616630375895800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P15691616630375895800

/-! ## A004875.P12528885360871437078

`∩[A004831(n+1), A004876(n+1)]`
-/

namespace A004875.P12528885360871437078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P12528885360871437078

/-! ## A004875.P14985662645279144612

`∩[A004831(n+1), A004877(n+1)]`
-/

namespace A004875.P14985662645279144612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P14985662645279144612

/-! ## A004875.P17450057896056517582

`∩[A004831(n+1), A004878(n+1)]`
-/

namespace A004875.P17450057896056517582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P17450057896056517582

/-! ## A004875.P13077220453156219639

`∩[A004831(n+1), A004879(n+1)]`
-/

namespace A004875.P13077220453156219639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004875.P13077220453156219639

/-!
# A004876: Numbers that are the sum of at most 3 nonzero 8th powers.

The programs for A004876, there is no canonical definition to state claims against.
-/

/-! ## A004876.P11286928122886404144

`∪[A003381(n+1), A004875(n+1)]`
-/

namespace A004876.P11286928122886404144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004876.P11286928122886404144

/-! ## A004876.P9304287622863024958

`A004877(eq[1, Δ[A004877(n+1)]]+1)`
-/

namespace A004876.P9304287622863024958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004876.P9304287622863024958

/-! ## A004876.P3793608917390642392

`A004877(record[n/Δ[A004877(n+1)]]+1)`
-/

namespace A004876.P3793608917390642392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004876.P3793608917390642392

/-! ## A004876.P6309277055261086533

`A004877(eq[1, A004877(n+2)-A004877(n+1)]+1)`
-/

namespace A004876.P6309277055261086533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 2) - A004877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004876.P6309277055261086533

/-! ## A004876.P11232867631612712371

`∩[A004878(n+1)-2, A004878(n+1)]`
-/

namespace A004876.P11232867631612712371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004876.P11232867631612712371

/-! ## A004876.P13723534807042475335

`∩[A004880(n+1)-4, A004880(n+1)]`
-/

namespace A004876.P13723534807042475335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004876.P13723534807042475335

/-! ## A004876.P18313319534884086074

`∩[A004832(n+1), A004877(n+1)]`
-/

namespace A004876.P18313319534884086074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004876.P18313319534884086074

/-! ## A004876.P16622548743342136421

`∩[A004832(n+1), A004878(n+1)]`
-/

namespace A004876.P16622548743342136421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004876.P16622548743342136421

/-! ## A004876.P13393317467375785939

`∩[A004832(n+1), A004879(n+1)]`
-/

namespace A004876.P13393317467375785939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004876.P13393317467375785939

/-!
# A004877: Numbers that are the sum of at most 4 nonzero 8th powers.

The programs for A004877, there is no canonical definition to state claims against.
-/

/-! ## A004877.P7915798296020938532

`∪[A003382(n+1), A004876(n+1)]`
-/

namespace A004877.P7915798296020938532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004877.P7915798296020938532

/-! ## A004877.P9331903063992915715

`∩[A004878(n+1)-1, A004878(n+1)]`
-/

namespace A004877.P9331903063992915715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004877.P9331903063992915715

/-! ## A004877.P10998674580047712539

`∩[A004879(n+1)-2, A004879(n+1)]`
-/

namespace A004877.P10998674580047712539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004877.P10998674580047712539

/-! ## A004877.P10751888188117369295

`∑[A293881(A375558(n)²)]`
-/

namespace A004877.P10751888188117369295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (A375558 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004877.P10751888188117369295

/-!
# A004878: Numbers that are the sum of at most 5 nonzero 8th powers.

The programs for A004878, there is no canonical definition to state claims against.
-/

/-! ## A004878.P6161308310768833162

`∪[A003383(n+1), A004877(n+1)]`
-/

namespace A004878.P6161308310768833162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004878.P6161308310768833162

/-! ## A004878.P8473304691778741909

`A004879(eq[1, Δ[A004879(n+1)]]+1)`
-/

namespace A004878.P8473304691778741909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004878.P8473304691778741909

/-! ## A004878.P10380665667170231129

`A004879(record[n/Δ[A004879(n+1)]]+1)`
-/

namespace A004878.P10380665667170231129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004878.P10380665667170231129

/-! ## A004878.P6913837938283392936

`A004879(record[n+1-Δ[A004879(n+1)]]+1)`
-/

namespace A004878.P6913837938283392936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004878.P6913837938283392936

/-! ## A004878.P7133112836438880911

`A004879(eq[1, A004879(n+2)-A004879(n+1)]+1)`
-/

namespace A004878.P7133112836438880911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 2) - A004879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004878.P7133112836438880911

/-! ## A004878.P2871818329616562243

`∩[A004880(n+1)-2, A004880(n+1)]`
-/

namespace A004878.P2871818329616562243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004878.P2871818329616562243

/-!
# A004879: Numbers that are the sum of at most 6 nonzero 8th powers.

The programs for A004879, there is no canonical definition to state claims against.
-/

/-! ## A004879.P4035301614342001815

`∪[A003384(n+1), A004878(n+1)]`
-/

namespace A004879.P4035301614342001815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004879.P4035301614342001815

/-! ## A004879.P1744205983503484794

`A004880(eq[1, Δ[A004880(n+1)]]+1)`
-/

namespace A004879.P1744205983503484794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004879.P1744205983503484794

/-! ## A004879.P12315618954802718028

`A004880(record[n/Δ[A004880(n+1)]]+1)`
-/

namespace A004879.P12315618954802718028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004879.P12315618954802718028

/-! ## A004879.P16812054821576675146

`A004880(record[n+1-Δ[A004880(n+1)]]+1)`
-/

namespace A004879.P16812054821576675146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004879.P16812054821576675146

/-! ## A004879.P4523728696961673517

`A004880(eq[1, A004880(n+2)-A004880(n+1)]+1)`
-/

namespace A004879.P4523728696961673517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 2) - A004880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004879.P4523728696961673517

/-!
# A004880: Numbers that are the sum of at most 7 nonzero 8th powers.

The programs for A004880, there is no canonical definition to state claims against.
-/

/-! ## A004880.P14379293994353646674

`∪[A003385(n+1), A004879(n+1)]`
-/

namespace A004880.P14379293994353646674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004880.P14379293994353646674

/-! ## A004880.P6763916444812287113

`A004881(eq[1, Δ[A004881(n+1)]]+1)`
-/

namespace A004880.P6763916444812287113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004880.P6763916444812287113

/-! ## A004880.P15739664067313522608

`A004881(lt[Δ[A004881(n+1)], 2]+1)`
-/

namespace A004880.P15739664067313522608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004880.P15739664067313522608

/-! ## A004880.P1574981295270488707

`A004881(record[n/Δ[A004881(n+1)]]+1)`
-/

namespace A004880.P1574981295270488707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004880.P1574981295270488707

/-! ## A004880.P5216345695461392112

`record[gcd(1-A004881(n+2), A004881(n+1))]`
-/

namespace A004880.P5216345695461392112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004881 (n + 2)) (A004881 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004880.P5216345695461392112

/-! ## A004880.P16145752676303722422

`A004881(eq[1, A004881(n+2)-A004881(n+1)]+1)`
-/

namespace A004880.P16145752676303722422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (n + 2) - A004881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004880.P16145752676303722422

/-! ## A004880.P8252233064746104565

`∩[A004882(n+1)-2, A004882(n+1)]`
-/

namespace A004880.P8252233064746104565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004880.P8252233064746104565

/-!
# A004881: Numbers that are the sum of at most 8 nonzero 8th powers.

The programs for A004881, there is no canonical definition to state claims against.
-/

/-! ## A004881.P12340749342978906485

`∪[A003386(n+1), A004880(n+1)]`
-/

namespace A004881.P12340749342978906485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004881.P12340749342978906485

/-! ## A004881.P5423493409479119133

`A004882(eq[1, Δ[A004882(n+1)]]+1)`
-/

namespace A004881.P5423493409479119133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004881.P5423493409479119133

/-! ## A004881.P1297318731204227454

`record[gcd(1-A004882(n+2), A004882(n+1))]`
-/

namespace A004881.P1297318731204227454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004882 (n + 2)) (A004882 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004881.P1297318731204227454

/-! ## A004881.P2166768007692764039

`A004882(record[n+1-Δ[A004882(n+1)]]+1)`
-/

namespace A004881.P2166768007692764039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004881.P2166768007692764039

/-! ## A004881.P4735965338115724087

`A004882(eq[1, A004882(n+2)-A004882(n+1)]+1)`
-/

namespace A004881.P4735965338115724087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 2) - A004882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004881.P4735965338115724087

/-! ## A004881.P4090498719263877882

`∩[A004883(n+1)-2, A004883(n+1)]`
-/

namespace A004881.P4090498719263877882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004881.P4090498719263877882

/-! ## A004881.P3275898752266388153

`A336820(A000124(n+8)-8)`
-/

namespace A004881.P3275898752266388153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000124 (n + 8) - 8).toNat

end

end A004881.P3275898752266388153

/-! ## A004881.P8447697109995421180

`A336820(A004273(n+5)+A000096(n+5))`
-/

namespace A004881.P8447697109995421180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A004273 (n + 5) + A000096 (n + 5)).toNat

end

end A004881.P8447697109995421180

/-! ## A004881.P16482779843033034209

`A336820(A002378(n+10)-A167614(n+11))`
-/

namespace A004881.P16482779843033034209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A002378 (n + 10) - A167614 (n + 11)).toNat

end

end A004881.P16482779843033034209

/-!
# A004882: Numbers that are the sum of at most 9 nonzero 8th powers.

The programs for A004882, there is no canonical definition to state claims against.
-/

/-! ## A004882.P3418084928111033719

`∪[A003387(n+1), A004881(n+1)]`
-/

namespace A004882.P3418084928111033719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004882.P3418084928111033719

/-! ## A004882.P7723383133122549407

`A004883(eq[1, Δ[A004883(n+1)]]+1)`
-/

namespace A004882.P7723383133122549407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004882.P7723383133122549407

/-! ## A004882.P12657506918723802255

`A004883(lt[Δ[A004883(n+1)], 2]+1)`
-/

namespace A004882.P12657506918723802255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004882.P12657506918723802255

/-! ## A004882.P18418965315765651798

`A004883(record[n/Δ[A004883(n+1)]]+1)`
-/

namespace A004882.P18418965315765651798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004882.P18418965315765651798

/-! ## A004882.P16515667179940655468

`A004883(record[n+1-Δ[A004883(n+1)]]+1)`
-/

namespace A004882.P16515667179940655468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004882.P16515667179940655468

/-! ## A004882.P17492769494404695188

`A004883(eq[1, A004883(n+2)-A004883(n+1)]+1)`
-/

namespace A004882.P17492769494404695188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 2) - A004883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004882.P17492769494404695188

/-! ## A004882.P14651717863771010431

`∩[A004884(n+1)-2, A004884(n+1)]`
-/

namespace A004882.P14651717863771010431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004882.P14651717863771010431

/-!
# A004883: Numbers that are the sum of at most 10 nonzero 8th powers.

The programs for A004883, there is no canonical definition to state claims against.
-/

/-! ## A004883.P13413033965661296891

`∪[A003388(n+1), A004882(n+1)]`
-/

namespace A004883.P13413033965661296891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004883.P13413033965661296891

/-! ## A004883.P16512429645619942898

`A004884(eq[1, Δ[A004884(n+1)]]+1)`
-/

namespace A004883.P16512429645619942898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004883.P16512429645619942898

/-! ## A004883.P15971555644543127085

`A004884(record[n/Δ[A004884(n+1)]]+1)`
-/

namespace A004883.P15971555644543127085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004883.P15971555644543127085

/-! ## A004883.P12867712196119548164

`record[gcd(1-A004884(n+2), A004884(n+1))]`
-/

namespace A004883.P12867712196119548164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004884 (n + 2)) (A004884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004883.P12867712196119548164

/-! ## A004883.P3262601713878360195

`A004884(record[n+1-Δ[A004884(n+1)]]+1)`
-/

namespace A004883.P3262601713878360195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004883.P3262601713878360195

/-! ## A004883.P17035877074317028272

`A004884(record[Δ[-A004884(n+1)]+n+1]+1)`
-/

namespace A004883.P17035877074317028272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004884 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004883.P17035877074317028272

/-! ## A004883.P16357587013178299187

`∩[A004885(n+1)-2, A004885(n+1)]`
-/

namespace A004883.P16357587013178299187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004883.P16357587013178299187

/-!
# A004884: Numbers that are the sum of at most 11 nonzero 8th powers.

The programs for A004884, there is no canonical definition to state claims against.
-/

/-! ## A004884.P12118682089695739252

`∪[A003389(n+1), A004883(n+1)]`
-/

namespace A004884.P12118682089695739252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004884.P12118682089695739252

/-! ## A004884.P11665259090252439218

`A004885(eq[1, Δ[A004885(n+1)]]+1)`
-/

namespace A004884.P11665259090252439218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004884.P11665259090252439218

/-! ## A004884.P8641316915558866123

`A004885(lt[Δ[A004885(n+1)], 2]+1)`
-/

namespace A004884.P8641316915558866123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A004884.P8641316915558866123

/-! ## A004884.P12507808953113871830

`A004885(record[n/Δ[A004885(n+1)]]+1)`
-/

namespace A004884.P12507808953113871830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A004884.P12507808953113871830

/-! ## A004884.P10433022987720481903

`record[gcd(1-A004885(n+2), A004885(n+1))]`
-/

namespace A004884.P10433022987720481903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A004885 (n + 2)) (A004885 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004884.P10433022987720481903

/-! ## A004884.P3786635737943183001

`A004885(record[n+1-Δ[A004885(n+1)]]+1)`
-/

namespace A004884.P3786635737943183001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A004884.P3786635737943183001

/-!
# A004885: Numbers that are the sum of at most 12 nonzero 8th powers.

The programs for A004885, there is no canonical definition to state claims against.
-/

/-! ## A004885.P16430697809829827785

`∪[A003390(n+1), A004884(n+1)]`
-/

namespace A004885.P16430697809829827785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004885.P16430697809829827785

/-! ## A004885.P13429086863648518018

`A221528(A004863(n+1)-n)+A004863(n+1)`
-/

namespace A004885.P13429086863648518018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 (A004863 (n + 1) - (n : ℤ)).toNat + A004863 (n + 1)

end

end A004885.P13429086863648518018

/-! ## A004885.P7747867426532793773

`record[∑{e}[A100851(n), A004879(#)]]`
-/

namespace A004885.P7747867426532793773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A004879 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004885.P7747867426532793773

/-! ## A004885.P4909801650202718691

`record[∑{e}[A100852(n), A004879(#)]]`
-/

namespace A004885.P4909801650202718691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A004879 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004885.P4909801650202718691

/-! ## A004885.P7684890329958288432

`∪[A004884(n+1), A332870(A014382(n))+n]`
-/

namespace A004885.P7684890329958288432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332870 (A014382 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004885.P7684890329958288432

/-!
# A004886: Numbers that are the sum of at most 2 positive 9th powers.

The programs for A004886, there is no canonical definition to state claims against.
-/

/-! ## A004886.P14977700343725642059

`∪[A003391(n+1), A001017(n)]`
-/

namespace A004886.P14977700343725642059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004886.P14977700343725642059

/-! ## A004886.P10770394452498761705

`∩[A004887(n+1)-1, A004887(n+1)]`
-/

namespace A004886.P10770394452498761705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004886.P10770394452498761705

/-! ## A004886.P9646830747804411952

`∩[A004888(n+1)-2, A004888(n+1)]`
-/

namespace A004886.P9646830747804411952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004888 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004886.P9646830747804411952

/-! ## A004886.P17997926151815577401

`∑{e}[A100851(n), #^9]`
-/

namespace A004886.P17997926151815577401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 9

end

end A004886.P17997926151815577401

/-! ## A004886.P295601720735619617

`∑{e}[A100852(n), #^9]`
-/

namespace A004886.P295601720735619617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 9

end

end A004886.P295601720735619617

/-!
# A004887: Numbers that are the sum of at most 3 positive 9th powers.

The programs for A004887, there is no canonical definition to state claims against.
-/

/-! ## A004887.P9400325922193158399

`∪[A003392(n+1), A004886(n+1)]`
-/

namespace A004887.P9400325922193158399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004887.P9400325922193158399

/-! ## A004887.P7753425724648227232

`∩[A004888(n+1)-1, A004888(n+1)]`
-/

namespace A004887.P7753425724648227232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004888 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004887.P7753425724648227232

/-! ## A004887.P4033482118601149842

`∩[A004889(n+1)-2, A004889(n+1)]`
-/

namespace A004887.P4033482118601149842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004887.P4033482118601149842

/-! ## A004887.P11941960158723256239

`∩[A004890(n+1)-3, A004890(n+1)]`
-/

namespace A004887.P11941960158723256239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004887.P11941960158723256239

/-! ## A004887.P15549814401815550343

`∩[A004891(n+1)-4, A004891(n+1)]`
-/

namespace A004887.P15549814401815550343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004887.P15549814401815550343

/-!
# A004888: Numbers that are the sum of at most 4 positive 9th powers.

The programs for A004888, there is no canonical definition to state claims against.
-/

/-! ## A004888.P10625879930383515890

`∪[A003393(n+1), A004887(n+1)]`
-/

namespace A004888.P10625879930383515890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004888.P10625879930383515890

/-! ## A004888.P3193705283493272356

`A004889(eq[1, Δ[A004889(n+1)]]+1)`
-/

namespace A004888.P3193705283493272356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004888.P3193705283493272356

/-! ## A004888.P7454283966293809080

`∩[A004889(n+1), A004889(n+2)-1]`
-/

namespace A004888.P7454283966293809080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004888.P7454283966293809080

/-! ## A004888.P575308839143055181

`A004889(eq[1, A004889(n+2)-A004889(n+1)]+1)`
-/

namespace A004888.P575308839143055181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 2) - A004889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004888.P575308839143055181

/-! ## A004888.P5082289238835463907

`∩[A004890(n+1)-2, A004890(n+1)]`
-/

namespace A004888.P5082289238835463907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004888.P5082289238835463907

/-! ## A004888.P5840581790122571730

`∩[A004891(n+1)-3, A004891(n+1)]`
-/

namespace A004888.P5840581790122571730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004888.P5840581790122571730

/-!
# A004889: Numbers that are the sum of at most 5 positive 9th powers.

The programs for A004889, there is no canonical definition to state claims against.
-/

/-! ## A004889.P11420955907456244957

`∪[A003394(n+1), A004888(n+1)]`
-/

namespace A004889.P11420955907456244957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P11420955907456244957

/-! ## A004889.P9158726254690197655

`∩[A004890(n+1)-1, A004890(n+1)]`
-/

namespace A004889.P9158726254690197655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P9158726254690197655

/-! ## A004889.P4826368296583834665

`∩[A004891(n+1)-2, A004891(n+1)]`
-/

namespace A004889.P4826368296583834665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P4826368296583834665

/-! ## A004889.P10654912864886539215

`∩[A004892(n+1)-3, A004892(n+1)]`
-/

namespace A004889.P10654912864886539215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P10654912864886539215

/-! ## A004889.P14204661102998232538

`∩[A004894(n+1)-5, A004894(n+1)]`
-/

namespace A004889.P14204661102998232538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P14204661102998232538

/-! ## A004889.P14466231583956548247

`∩[A004895(n+1)-6, A004895(n+1)]`
-/

namespace A004889.P14466231583956548247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P14466231583956548247

/-! ## A004889.P9918643715711021059

`∩[A004896(n+1)-7, A004896(n+1)]`
-/

namespace A004889.P9918643715711021059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004889.P9918643715711021059

/-!
# A004890: Numbers that are the sum of at most 6 positive 9th powers.

The programs for A004890, there is no canonical definition to state claims against.
-/

/-! ## A004890.P5864752051461108123

`∪[A003395(n+1), A004889(n+1)]`
-/

namespace A004890.P5864752051461108123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004890.P5864752051461108123

/-! ## A004890.P9085342624217391598

`∩[A004891(n+1)-1, A004891(n+1)]`
-/

namespace A004890.P9085342624217391598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004890.P9085342624217391598

/-! ## A004890.P18354431036012895381

`∩[A004892(n+1)-2, A004892(n+1)]`
-/

namespace A004890.P18354431036012895381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004890.P18354431036012895381

/-! ## A004890.P15129625255413546384

`∩[A004895(n+1)-5, A004895(n+1)]`
-/

namespace A004890.P15129625255413546384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004890.P15129625255413546384

/-! ## A004890.P17933273629513751642

`∩[A004896(n+1)-6, A004896(n+1)]`
-/

namespace A004890.P17933273629513751642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004890.P17933273629513751642

/-!
# A004891: Numbers that are the sum of at most 7 positive 9th powers.

The programs for A004891, there is no canonical definition to state claims against.
-/

/-! ## A004891.P11398435693574245342

`∪[A003396(n+1), A004890(n+1)]`
-/

namespace A004891.P11398435693574245342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004891.P11398435693574245342

/-! ## A004891.P5071277975729181333

`∩[A004892(n+1)-1, A004892(n+1)]`
-/

namespace A004891.P5071277975729181333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004891.P5071277975729181333

/-! ## A004891.P10941386557534202051

`∩[A004893(n+1)-2, A004893(n+1)]`
-/

namespace A004891.P10941386557534202051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004891.P10941386557534202051

/-! ## A004891.P4587477476003064848

`∩[A004895(n+1)-4, A004895(n+1)]`
-/

namespace A004891.P4587477476003064848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004891.P4587477476003064848

/-! ## A004891.P8722248798000741954

`∩[A004896(n+1)-5, A004896(n+1)]`
-/

namespace A004891.P8722248798000741954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004891.P8722248798000741954

/-!
# A004892: Numbers that are the sum of at most 8 positive 9th powers.

The programs for A004892, there is no canonical definition to state claims against.
-/

/-! ## A004892.P13676978221368498396

`∪[A003397(n+1), A004891(n+1)]`
-/

namespace A004892.P13676978221368498396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004892.P13676978221368498396

/-! ## A004892.P11582311312828094961

`∩[A004893(n+1)-1, A004893(n+1)]`
-/

namespace A004892.P11582311312828094961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004892.P11582311312828094961

/-! ## A004892.P6921279815498579576

`∩[A004894(n+1)-2, A004894(n+1)]`
-/

namespace A004892.P6921279815498579576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004892.P6921279815498579576

/-! ## A004892.P17058422124558654817

`∩[A004895(n+1)-3, A004895(n+1)]`
-/

namespace A004892.P17058422124558654817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004892.P17058422124558654817

/-! ## A004892.P16123285206133591437

`∩[A004896(n+1)-4, A004896(n+1)]`
-/

namespace A004892.P16123285206133591437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004892.P16123285206133591437

/-!
# A004893: Numbers that are the sum of at most 9 positive 9th powers.

The programs for A004893, there is no canonical definition to state claims against.
-/

/-! ## A004893.P1202698814272877116

`∪[A003398(n+1), A004892(n+1)]`
-/

namespace A004893.P1202698814272877116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004893.P1202698814272877116

/-! ## A004893.P9054462263322385587

`∩[A004894(n+1)-1, A004894(n+1)]`
-/

namespace A004893.P9054462263322385587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004893.P9054462263322385587

/-! ## A004893.P8371120167870110609

`∩[A004895(n+1)-2, A004895(n+1)]`
-/

namespace A004893.P8371120167870110609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004893.P8371120167870110609

/-! ## A004893.P18013314681050318397

`∩[A004896(n+1)-3, A004896(n+1)]`
-/

namespace A004893.P18013314681050318397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004893.P18013314681050318397

/-! ## A004893.P16190875669707600535

`A336820(A155212(n+5))`
-/

namespace A004893.P16190875669707600535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A155212 (n + 5)).toNat

end

end A004893.P16190875669707600535

/-! ## A004893.P8855304884923674390

`A336820(A055998(n+7)-5)`
-/

namespace A004893.P8855304884923674390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A055998 (n + 7) - 5).toNat

end

end A004893.P8855304884923674390

/-! ## A004893.P10535549549157157864

`A336820(A000217(n+9)-8)`
-/

namespace A004893.P10535549549157157864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000217 (n + 9) - 8).toNat

end

end A004893.P10535549549157157864

/-! ## A004893.P12709530855738384015

`A336820(A000124(n+9)-9)`
-/

namespace A004893.P12709530855738384015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A000124 (n + 9) - 9).toNat

end

end A004893.P12709530855738384015

/-! ## A004893.P6336337240346122288

`A336820(A133263(n+8)+n-1)`
-/

namespace A004893.P6336337240346122288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A133263 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A004893.P6336337240346122288

/-! ## A004893.P11408614574295569806

`A336820(A144396(n+4)+A000217(n+7))`
-/

namespace A004893.P11408614574295569806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336820 (A144396 (n + 4) + A000217 (n + 7)).toNat

end

end A004893.P11408614574295569806

/-!
# A004894: Numbers that are the sum of at most 10 positive 9th powers.

The programs for A004894, there is no canonical definition to state claims against.
-/

/-! ## A004894.P706687537336009505

`∪[A003399(n+1), A004893(n+1)]`
-/

namespace A004894.P706687537336009505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004894.P706687537336009505

/-! ## A004894.P7328430957953120728

`∩[A004895(n+1)-1, A004895(n+1)]`
-/

namespace A004894.P7328430957953120728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004894.P7328430957953120728

/-! ## A004894.P15932605998979484603

`∩[A004896(n+1)-2, A004896(n+1)]`
-/

namespace A004894.P15932605998979484603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004894.P15932605998979484603

/-! ## A004894.P9246655723763344288

`∩[A057428(2*(n+2))+A004895(n+1), A004895(n+1)]`
-/

namespace A004894.P9246655723763344288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * (n + 2)) + A004895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004894.P9246655723763344288

/-! ## A004894.P988773870299052786

`∩[A004895(n+1), A023443(A004895(n+1))]`
-/

namespace A004894.P988773870299052786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004895 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004894.P988773870299052786

/-!
# A004895: Numbers that are the sum of at most 11 positive 9th powers.

The programs for A004895, there is no canonical definition to state claims against.
-/

/-! ## A004895.P4196260975376047014

`∪[A004800(n+1), A004894(n+1)]`
-/

namespace A004895.P4196260975376047014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004895.P4196260975376047014

/-! ## A004895.P15094220444728458480

`∩[A004896(n+1)-1, A004896(n+1)]`
-/

namespace A004895.P15094220444728458480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004895.P15094220444728458480

/-! ## A004895.P10955273890756617159

`∩[A004896(n+1), A023443(A004896(n+1))]`
-/

namespace A004895.P10955273890756617159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004896 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004895.P10955273890756617159

/-! ## A004895.P17497907000095679845

`A004896(n+2)-A014422(A146176(n+1))`
-/

namespace A004895.P17497907000095679845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 2) - A014422 (A146176 (n + 1)).toNat

end

end A004895.P17497907000095679845

/-! ## A004895.P1662233172981832280

`A004896(n+2)-A014422(A146193(n+1))`
-/

namespace A004895.P1662233172981832280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 2) - A014422 (A146193 (n + 1)).toNat

end

end A004895.P1662233172981832280

/-!
# A004896: Numbers that are the sum of at most 12 positive 9th powers.

The programs for A004896, there is no canonical definition to state claims against.
-/

/-! ## A004896.P4080160419103956852

`∪[A004801(n+1), A004895(n+1)]`
-/

namespace A004896.P4080160419103956852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004896.P4080160419103956852

/-! ## A004896.P16902465108656294580

`A004918(n+1)%A046875(2*n)`
-/

namespace A004896.P16902465108656294580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004918 (n + 1)) (A046875 (2 * n))

end

end A004896.P16902465108656294580

/-! ## A004896.P11937793439793953595

`A237623(A000108(round(sqrt(n))))+n`
-/

namespace A004896.P11937793439793953595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237623 (A000108 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat).toNat + (n : ℤ)

end

end A004896.P11937793439793953595

/-! ## A004896.P11479959850088559702

`A004885(∑[n^A047766(n+1)])`
-/

namespace A004896.P11479959850088559702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A047766 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004896.P11479959850088559702

/-!
# A004897: Numbers that are the sum of at most 2 nonzero 10th powers.

The programs for A004897, there is no canonical definition to state claims against.
-/

/-! ## A004897.P15148305355123005805

`∪[A004802(n+1), A008454(n)]`
-/

namespace A004897.P15148305355123005805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P15148305355123005805

/-! ## A004897.P4894062520480921424

`∩[A004898(n+1)-1, A004898(n+1)]`
-/

namespace A004897.P4894062520480921424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P4894062520480921424

/-! ## A004897.P1088071430743457515

`∩[A004899(n+1)-2, A004899(n+1)]`
-/

namespace A004897.P1088071430743457515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P1088071430743457515

/-! ## A004897.P9087804224963878166

`∩[A004842(n+1), A004898(n+1)]`
-/

namespace A004897.P9087804224963878166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P9087804224963878166

/-! ## A004897.P16368236344847510516

`∩[A004842(n+1), A004899(n+1)]`
-/

namespace A004897.P16368236344847510516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P16368236344847510516

/-! ## A004897.P11323896745771488674

`∩[A004842(n+1), A004900(n+1)]`
-/

namespace A004897.P11323896745771488674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P11323896745771488674

/-! ## A004897.P4736673765491293364

`∩[A004842(n+1), A004901(n+1)]`
-/

namespace A004897.P4736673765491293364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P4736673765491293364

/-! ## A004897.P9970158731687839799

`∩[A004842(n+1), A004902(n+1)]`
-/

namespace A004897.P9970158731687839799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P9970158731687839799

/-! ## A004897.P15532189874232381452

`∩[A004898(n+1), A247099(n+1)]`
-/

namespace A004897.P15532189874232381452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P15532189874232381452

/-! ## A004897.P12355972468697584661

`∩[A004899(n+1), A247099(n+1)]`
-/

namespace A004897.P12355972468697584661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004897.P12355972468697584661

/-!
# A004898: Numbers that are the sum of at most 3 nonzero 10th powers.

The programs for A004898, there is no canonical definition to state claims against.
-/

/-! ## A004898.P15186697956770723932

`∪[A004803(n+1), A004897(n+1)]`
-/

namespace A004898.P15186697956770723932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P15186697956770723932

/-! ## A004898.P2491082993650535805

`A004899(eq[1, Δ[A004899(n+1)]]+1)`
-/

namespace A004898.P2491082993650535805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A004898.P2491082993650535805

/-! ## A004898.P2182343682490148388

`∩[A004899(n+1), A004899(n+2)-1]`
-/

namespace A004898.P2182343682490148388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P2182343682490148388

/-! ## A004898.P1565595054353432204

`∩[A004900(n+1)-2, A004900(n+1)]`
-/

namespace A004898.P1565595054353432204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P1565595054353432204

/-! ## A004898.P6351670775248494197

`∩[A004901(n+1)-3, A004901(n+1)]`
-/

namespace A004898.P6351670775248494197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P6351670775248494197

/-! ## A004898.P1026230331294582514

`∩[A004843(n+1), A004899(n+1)]`
-/

namespace A004898.P1026230331294582514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P1026230331294582514

/-! ## A004898.P8197087831324348523

`∩[A004843(n+1), A004900(n+1)]`
-/

namespace A004898.P8197087831324348523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P8197087831324348523

/-! ## A004898.P1430673053300588043

`∩[A004843(n+1), A004901(n+1)]`
-/

namespace A004898.P1430673053300588043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P1430673053300588043

/-! ## A004898.P9391456648330773940

`∩[A004843(n+1), A004902(n+1)]`
-/

namespace A004898.P9391456648330773940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P9391456648330773940

/-! ## A004898.P13663284876179869486

`∩[A004843(n+1), A004903(n+1)]`
-/

namespace A004898.P13663284876179869486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004898.P13663284876179869486

/-!
# A004899: Numbers that are the sum of at most 4 nonzero 10th powers.

The programs for A004899, there is no canonical definition to state claims against.
-/

/-! ## A004899.P7483326008172359425

`∪[A004804(n+1), A004898(n+1)]`
-/

namespace A004899.P7483326008172359425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P7483326008172359425

/-! ## A004899.P1181038661958113875

`∩[A004900(n+1)-1, A004900(n+1)]`
-/

namespace A004899.P1181038661958113875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P1181038661958113875

/-! ## A004899.P10342112391212106184

`∩[A004901(n+1)-2, A004901(n+1)]`
-/

namespace A004899.P10342112391212106184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P10342112391212106184

/-! ## A004899.P15118439058372003377

`∩[A004902(n+1)-3, A004902(n+1)]`
-/

namespace A004899.P15118439058372003377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P15118439058372003377

/-! ## A004899.P2719213810164159589

`∩[A004903(n+1)-4, A004903(n+1)]`
-/

namespace A004899.P2719213810164159589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P2719213810164159589

/-! ## A004899.P1659402043419212247

`∩[A004844(n+1), A004900(n+1)]`
-/

namespace A004899.P1659402043419212247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P1659402043419212247

/-! ## A004899.P11591253714503027908

`∩[A004844(n+1), A004901(n+1)]`
-/

namespace A004899.P11591253714503027908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P11591253714503027908

/-! ## A004899.P13777021001063483778

`∩[A004844(n+1), A004902(n+1)]`
-/

namespace A004899.P13777021001063483778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P13777021001063483778

/-! ## A004899.P11857142119342748026

`∩[A004844(n+1), A004903(n+1)]`
-/

namespace A004899.P11857142119342748026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004899.P11857142119342748026

