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
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A317600: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317600, there is no canonical definition to state claims against.
-/

/-! ## A317600.P9250004492623210595

`A317604(A374004(n+1))`
-/

namespace A317600.P9250004492623210595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A374004 (n + 1)).toNat

end

end A317600.P9250004492623210595

/-! ## A317600.P13253658572125792501

`A317604(A141214(n)+7)`
-/

namespace A317600.P13253658572125792501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A141214 n + 7).toNat

end

end A317600.P13253658572125792501

/-! ## A317600.P13000282698519771142

`A317604(A052905(n)+9)`
-/

namespace A317600.P13000282698519771142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A052905 n + 9).toNat

end

end A317600.P13000282698519771142

/-! ## A317600.P7974727665024543074

`A317604(A055999(n)+10)`
-/

namespace A317600.P7974727665024543074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A055999 n + 10).toNat

end

end A317600.P7974727665024543074

/-! ## A317600.P5468034726439766734

`A317604(A167614(n+2)+1)`
-/

namespace A317600.P5468034726439766734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A167614 (n + 2) + 1).toNat

end

end A317600.P5468034726439766734

/-!
# A317601: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317601, there is no canonical definition to state claims against.
-/

/-! ## A317601.P13569953053590972190

`A317604(A374005(n+1))`
-/

namespace A317601.P13569953053590972190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A374005 (n + 1)).toNat

end

end A317601.P13569953053590972190

/-! ## A317601.P15369547352106100201

`A317604(A167499(n+3))`
-/

namespace A317601.P15369547352106100201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A167499 (n + 3)).toNat

end

end A317601.P15369547352106100201

/-! ## A317601.P12491323830295217514

`A317604(A155212(n)+13)`
-/

namespace A317601.P12491323830295217514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A155212 n + 13).toNat

end

end A317601.P12491323830295217514

/-! ## A317601.P14115561651249291243

`A317604(Δ[A264443(n)])`
-/

namespace A317601.P14115561651249291243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (f1 (n + 1) - f1 n).toNat

end

end A317601.P14115561651249291243

/-! ## A317601.P17731956554973083741

`A317604(A046691(n+3))`
-/

namespace A317601.P17731956554973083741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A046691 (n + 3)).toNat

end

end A317601.P17731956554973083741

/-!
# A317602: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317602, there is no canonical definition to state claims against.
-/

/-! ## A317602.P9851594423031190161

`A317604(A374007(n+1))`
-/

namespace A317602.P9851594423031190161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A374007 (n + 1)).toNat

end

end A317602.P9851594423031190161

/-! ## A317602.P3357404629489521008

`A317604(A000217(n+5)+6)`
-/

namespace A317602.P3357404629489521008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A000217 (n + 5) + 6).toNat

end

end A317602.P3357404629489521008

/-! ## A317602.P11787945884244930342

`A317604(eq[7, A131818(n+1)])`
-/

namespace A317602.P11787945884244930342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317602.P11787945884244930342

/-! ## A317602.P757496762117876634

`A317604(eq[3, A219347(n)])`
-/

namespace A317602.P757496762117876634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317602.P757496762117876634

/-! ## A317602.P3727542605506464972

`A317604(eq[5, A193592(n)])`
-/

namespace A317602.P3727542605506464972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317602.P3727542605506464972

/-!
# A317603: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317603, there is no canonical definition to state claims against.
-/

/-! ## A317603.P12836926306623363807

`A317604(A374008(n+1))`
-/

namespace A317603.P12836926306623363807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A374008 (n + 1)).toNat

end

end A317603.P12836926306623363807

/-! ## A317603.P17754859672141536623

`A317604(A056119(n)+28)`
-/

namespace A317603.P17754859672141536623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (A056119 n + 28).toNat

end

end A317603.P17754859672141536623

/-! ## A317603.P2549401237117867215

`A317604(eq[11, A066657(n)])`
-/

namespace A317603.P2549401237117867215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317603.P2549401237117867215

/-! ## A317603.P11894869581509782545

`A317604(eq[8, A131818(n+1)])`
-/

namespace A317603.P11894869581509782545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317603.P11894869581509782545

/-! ## A317603.P16106971761064634602

`A317604(eq[4, A219347(n)])`
-/

namespace A317603.P16106971761064634602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317604 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317603.P16106971761064634602

/-!
# A317604: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317604, there is no canonical definition to state claims against.
-/

/-! ## A317604.P227226042248467589

`A316876(n+1)+A010894(A003401(n+1))`
-/

namespace A317604.P227226042248467589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (n + 1) + A010894 ((A003401 (n + 1)).toNat + 21)

end

end A317604.P227226042248467589

/-! ## A317604.P10287782156062950730

`A316876(n+1)+A011731(A022171(n))`
-/

namespace A317604.P10287782156062950730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (n + 1) + A011731 (A022171 n).toNat

end

end A317604.P10287782156062950730

/-! ## A317604.P2237207084323737597

`A316876(n+1)+A025465(A022345(n))`
-/

namespace A317604.P2237207084323737597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (n + 1) + A025465 (A022345 n).toNat

end

end A317604.P2237207084323737597

/-! ## A317604.P8754090494388982225

`A316876(n+1)+A025465(A023105(n))`
-/

namespace A317604.P8754090494388982225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (n + 1) + A025465 (A023105 n).toNat

end

end A317604.P8754090494388982225

/-! ## A317604.P15593624724782068140

`A316876(n+1)+A055641(A002843(n))`
-/

namespace A317604.P15593624724782068140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316876 (n + 1) + A055641 (A002843 n).toNat

end

end A317604.P15593624724782068140

/-!
# A317605: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317605, there is no canonical definition to state claims against.
-/

/-! ## A317605.P3329933217479579912

`A317611(∑[4*n]+1)`
-/

namespace A317605.P3329933217479579912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317605.P3329933217479579912

/-! ## A317605.P5091781918888209953

`record[A317611(Δ[A235355(n)])]`
-/

namespace A317605.P5091781918888209953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317605.P5091781918888209953

/-! ## A317605.P9229555954197800698

`and(-1, A317611(A001844(n)))`
-/

namespace A317605.P9229555954197800698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A317611 (A001844 n).toNat)

end

end A317605.P9229555954197800698

/-! ## A317605.P7763995510625791145

`record[A317611(A330613(n+1))]`
-/

namespace A317605.P7763995510625791145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317605.P7763995510625791145

/-! ## A317605.P5936154289245232576

`record[A317611(Δ[A079824(n+1)])]`
-/

namespace A317605.P5936154289245232576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317605.P5936154289245232576

/-!
# A317606: Number of n X 3 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317606, there is no canonical definition to state claims against.
-/

/-! ## A317606.P7620653547307020791

`A317611(∑[n+2]+4)`
-/

namespace A317606.P7620653547307020791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317606.P7620653547307020791

/-! ## A317606.P8959393493824067384

`A317611(A167614(n+1))+char[17]`
-/

namespace A317606.P8959393493824067384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317606.P8959393493824067384

/-! ## A317606.P12238641275321798443

`A317611(A152950(n+3))+char[17]`
-/

namespace A317606.P12238641275321798443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317606.P12238641275321798443

/-! ## A317606.P10331208422651110728

`or(char[3], A317611(A046691(n)+7))`
-/

namespace A317606.P10331208422651110728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A317611 (A046691 n + 7).toNat)

end

end A317606.P10331208422651110728

/-! ## A317606.P18446356197062247956

`record[A317611(n+4)/A123876(n)]`
-/

namespace A317606.P18446356197062247956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317611 (n + 4) : ℚ) / (A123876 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317606.P18446356197062247956

/-!
# A317607: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317607, there is no canonical definition to state claims against.
-/

/-! ## A317607.P10183678260032518050

`A317611(∑[n+3]+7)`
-/

namespace A317607.P10183678260032518050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A317607.P10183678260032518050

/-! ## A317607.P3967708853912236646

`A317611(A055999(n)+10)+char[20]`
-/

namespace A317607.P3967708853912236646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317607.P3967708853912236646

/-! ## A317607.P8247505949156550943

`A317611(A000124(n+3)+3)+char[21]`
-/

namespace A317607.P8247505949156550943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A317607.P8247505949156550943

/-! ## A317607.P2984679091723137680

`A000041(C(n, 64))*A317611(A055999(n)+10)`
-/

namespace A317607.P2984679091723137680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A317611 (A055999 n + 10).toNat

end

end A317607.P2984679091723137680

/-! ## A317607.P3526987276902138464

`A007318(C(n, 64))*A317611(A055999(n)+10)`
-/

namespace A317607.P3526987276902138464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 64) * A317611 (A055999 n + 10).toNat

end

end A317607.P3526987276902138464

/-!
# A317608: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317608, there is no canonical definition to state claims against.
-/

/-! ## A317608.P15698252123715675057

`A317611(A374005(n+1))`
-/

namespace A317608.P15698252123715675057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A374005 (n + 1)).toNat

end

end A317608.P15698252123715675057

/-! ## A317608.P7990659903129847528

`A317611(A167499(n+3))`
-/

namespace A317608.P7990659903129847528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A167499 (n + 3)).toNat

end

end A317608.P7990659903129847528

/-! ## A317608.P18135870782727748241

`A317611(A155212(n)+13)`
-/

namespace A317608.P18135870782727748241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A155212 n + 13).toNat

end

end A317608.P18135870782727748241

/-! ## A317608.P10346798260918228957

`A317611(A056000(n)+15)`
-/

namespace A317608.P10346798260918228957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A056000 n + 15).toNat

end

end A317608.P10346798260918228957

/-! ## A317608.P15860599204750762793

`A317611(eq[7, A066657(n)])`
-/

namespace A317608.P15860599204750762793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317608.P15860599204750762793

/-!
# A317609: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317609, there is no canonical definition to state claims against.
-/

/-! ## A317609.P12981764646218590005

`A317611(C(n+7, 2)-n)`
-/

namespace A317609.P12981764646218590005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (Nat.choose (n + 7) 2 - n)

end

end A317609.P12981764646218590005

/-! ## A317609.P827533122639433843

`A317611(A374007(n+1))`
-/

namespace A317609.P827533122639433843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A374007 (n + 1)).toNat

end

end A317609.P827533122639433843

/-! ## A317609.P1995665811412229542

`A317611(A056115(n)+21)`
-/

namespace A317609.P1995665811412229542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A056115 n + 21).toNat

end

end A317609.P1995665811412229542

/-! ## A317609.P14154638411789594239

`A317611(A167499(n+4)+1)`
-/

namespace A317609.P14154638411789594239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A167499 (n + 4) + 1).toNat

end

end A317609.P14154638411789594239

/-! ## A317609.P6099260154313314758

`A317611(A133263(n+5)+4)`
-/

namespace A317609.P6099260154313314758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A133263 (n + 5) + 4).toNat

end

end A317609.P6099260154313314758

/-!
# A317610: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317610, there is no canonical definition to state claims against.
-/

/-! ## A317610.P7807709912548293948

`A317611(C(n+7, 2)+7)`
-/

namespace A317610.P7807709912548293948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (Nat.choose (n + 7) 2 + 7)

end

end A317610.P7807709912548293948

/-! ## A317610.P11942263214062246209

`A317611(A374008(n+1))`
-/

namespace A317610.P11942263214062246209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A374008 (n + 1)).toNat

end

end A317610.P11942263214062246209

/-! ## A317610.P588526783771501841

`A317611(A056119(n)+28)`
-/

namespace A317610.P588526783771501841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A056119 n + 28).toNat

end

end A317610.P588526783771501841

/-! ## A317610.P5378055923634625979

`A317611(eq[11, A066657(n)])`
-/

namespace A317610.P5378055923634625979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317610.P5378055923634625979

/-! ## A317610.P8531562220673317786

`A317611(A167499(n+5)+2)`
-/

namespace A317610.P8531562220673317786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317611 (A167499 (n + 5) + 2).toNat

end

end A317610.P8531562220673317786

/-!
# A317611: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317611, there is no canonical definition to state claims against.
-/

/-! ## A317611.P9625448520028989640

`A316883(n+1)+A173636(A174545(n))`
-/

namespace A317611.P9625448520028989640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) + A173636 (A174545 n).toNat

end

end A317611.P9625448520028989640

/-! ## A317611.P10325562753770997119

`A317153(n+1)+A157685(A260340(n))`
-/

namespace A317611.P10325562753770997119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317153 (n + 1) + A157685 (A260340 n).toNat

end

end A317611.P10325562753770997119

/-! ## A317611.P16651749996450384879

`A316883(n+1)+A186034(A022167(n))²`
-/

namespace A317611.P16651749996450384879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) + A186034 (A022167 n).toNat ^ 2

end

end A317611.P16651749996450384879

/-! ## A317611.P1785869017511400365

`A316883(n+1)+A037800(A176791(n))²`
-/

namespace A317611.P1785869017511400365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) + A037800 (A176791 n).toNat ^ 2

end

end A317611.P1785869017511400365

/-! ## A317611.P7579498223643014993

`A316883(n+1)+A010878(A271246(n+1))`
-/

namespace A317611.P7579498223643014993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316883 (n + 1) + A010878 (A271246 (n + 1)).toNat

end

end A317611.P7579498223643014993

/-!
# A317613: Permutation of the nonnegative integers: lodumo_4 of A047247.

The programs for A317613, the canonical program `A317613.P6992115811980201199` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317613 has offset 0).

The definition of A317613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317613.P13179102130570145910

`ogf((2-x-2x^2+3x^3+x^5+x^7)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+x^8))`
-/

namespace A317613.P13179102130570145910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2, 3, 0, 1, 0, 1] [1, -2, 2, -2, 2, -2, 2, -2, 1] n

end

end A317613.P13179102130570145910

namespace A317613

/-- `ogf((2-x-2x^2+3x^3+x^5+x^7)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+x^8))` -/
def P13179102130570145910.Spec : Prop :=
  ∀ n, P13179102130570145910.a n = A317613 n

end A317613

/-! ## A317613.P6992115811980201199

`(4*(floor((2*n+4)%8/4)-floor((n+2)%8/4))+2*n)/2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317613

/-- `(4*(floor((2*n+4)%8/4)-floor((n+2)%8/4))+2*n)/2` -/
def P6992115811980201199.Spec : Prop :=
  ∀ n, P6992115811980201199.a n = (A317613 n : ℚ)

end A317613

/-! ## A317613.P2177279823861694889

`xor(n, 2-sqrt(and(4, n)))`
-/

namespace A317613.P2177279823861694889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (2 - Real.sqrt (Nat.land 4 n : ℝ)))

end

end A317613.P2177279823861694889

namespace A317613

/-- `xor(n, 2-sqrt(and(4, n)))` -/
def P2177279823861694889.Spec : Prop :=
  ∀ n, P2177279823861694889.a n = A317613 n

end A317613

/-! ## A317613.P18120106348212893764

`or(2, n)-and(2, ∑[n])`
-/

namespace A317613.P18120106348212893764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - (Nat.land 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A317613.P18120106348212893764

namespace A317613

/-- `or(2, n)-and(2, ∑[n])` -/
def P18120106348212893764.Spec : Prop :=
  ∀ n, P18120106348212893764.a n = A317613 n

end A317613

/-! ## A317613.P9144176214179980737

`xor(n, and(2, ∑[2-n]))`
-/

namespace A317613.P9144176214179980737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A317613.P9144176214179980737

namespace A317613

/-- `xor(n, and(2, ∑[2-n]))` -/
def P9144176214179980737.Spec : Prop :=
  ∀ n, P9144176214179980737.a n = A317613 n

end A317613

/-! ## A317613.P13506012969389899989

`xor(n, 2-and(4, n)/2)`
-/

namespace A317613.P13506012969389899989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (2 - (Nat.land 4 n : ℚ) / 2))

end

end A317613.P13506012969389899989

namespace A317613

/-- `xor(n, 2-and(4, n)/2)` -/
def P13506012969389899989.Spec : Prop :=
  ∀ n, P13506012969389899989.a n = A317613 n

end A317613

/-! ## A317613.P10507210336357879064

`xor(n, and(4, n+4)/2)`
-/

namespace A317613.P10507210336357879064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land 4 (n + 4) : ℚ) / 2))

end

end A317613.P10507210336357879064

namespace A317613

/-- `xor(n, and(4, n+4)/2)` -/
def P10507210336357879064.Spec : Prop :=
  ∀ n, P10507210336357879064.a n = A317613 n

end A317613

/-! ## A317613.P7714995740042588393

`xor(n, sqrt(and(4, -(n+1))))`
-/

namespace A317613.P7714995740042588393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (Int.land 4 (-(n + 1 : ℤ)) : ℝ)))

end

end A317613.P7714995740042588393

namespace A317613

/-- `xor(n, sqrt(and(4, -(n+1))))` -/
def P7714995740042588393.Spec : Prop :=
  ∀ n, P7714995740042588393.a n = A317613 n

end A317613

/-! ## A317613.P7860232630621608505

`2*A219977(A004526(n))+n`
-/

namespace A317613.P7860232630621608505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219977 (A004526 n).toNat + (n : ℤ)

end

end A317613.P7860232630621608505

namespace A317613

/-- `2*A219977(A004526(n))+n` -/
def P7860232630621608505.Spec : Prop :=
  ∀ n, P7860232630621608505.a n = A317613 n

end A317613

/-! ## A317613.P14188099702217258407

`xor(n, A033999(A002265(n))+1)`
-/

namespace A317613.P14188099702217258407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A033999 (A002265 n).toNat + 1)

end

end A317613.P14188099702217258407

namespace A317613

/-- `xor(n, A033999(A002265(n))+1)` -/
def P14188099702217258407.Spec : Prop :=
  ∀ n, P14188099702217258407.a n = A317613 n

end A317613

/-! ## A317613.P16656222507319675697

`A057077(A008619(n))+A057077(n)+n`
-/

namespace A317613.P16656222507319675697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A008619 n).toNat + (A057077 n + (n : ℤ))

end

end A317613.P16656222507319675697

namespace A317613

/-- `A057077(A008619(n))+A057077(n)+n` -/
def P16656222507319675697.Spec : Prop :=
  ∀ n, P16656222507319675697.a n = A317613 n

end A317613

/-! ## A317613.P6398669662017154475

`xor(n, A033487(n+1)%4)`
-/

namespace A317613.P6398669662017154475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.tmod (A033487 (n + 1)) 4)

end

end A317613.P6398669662017154475

namespace A317613

/-- `xor(n, A033487(n+1)%4)` -/
def P6398669662017154475.Spec : Prop :=
  ∀ n, P6398669662017154475.a n = A317613 n

end A317613

/-! ## A317613.P14054252231753932670

`A080412(A080413(n+2))-2`
-/

namespace A317613.P14054252231753932670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A080413 (n + 2)).toNat - 2

end

end A317613.P14054252231753932670

namespace A317613

/-- `A080412(A080413(n+2))-2` -/
def P14054252231753932670.Spec : Prop :=
  ∀ n, P14054252231753932670.a n = A317613 n

end A317613

/-! ## A317613.P4932053191359562134

`A080414(A080412(n+2))-2`
-/

namespace A317613.P4932053191359562134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080414 (A080412 (n + 2)).toNat - 2

end

end A317613.P4932053191359562134

namespace A317613

/-- `A080414(A080412(n+2))-2` -/
def P4932053191359562134.Spec : Prop :=
  ∀ n, P4932053191359562134.a n = A317613 n

end A317613

/-! ## A317613.P1666897487448092612

`A057077(n)+A057077(A110660(n))+n`
-/

namespace A317613.P1666897487448092612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + (A057077 (A110660 n).toNat + (n : ℤ))

end

end A317613.P1666897487448092612

namespace A317613

/-- `A057077(n)+A057077(A110660(n))+n` -/
def P1666897487448092612.Spec : Prop :=
  ∀ n, P1666897487448092612.a n = A317613 n

end A317613

/-! ## A317613.P4488351019065892000

`A057077(A000217(n))+A057077(n)+n`
-/

namespace A317613.P4488351019065892000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A000217 n).toNat + (A057077 n + (n : ℤ))

end

end A317613.P4488351019065892000

namespace A317613

/-- `A057077(A000217(n))+A057077(n)+n` -/
def P4488351019065892000.Spec : Prop :=
  ∀ n, P4488351019065892000.a n = A317613 n

end A317613

/-! ## A317613.P9918808896974915444

`A057077(n)+A057077(A316966(n))+n`
-/

namespace A317613.P9918808896974915444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + (A057077 (A316966 n).toNat + (n : ℤ))

end

end A317613.P9918808896974915444

namespace A317613

/-- `A057077(n)+A057077(A316966(n))+n` -/
def P9918808896974915444.Spec : Prop :=
  ∀ n, P9918808896974915444.a n = A317613 n

end A317613

/-! ## A317613.P14136893974396542221

`A057077(A179865(n+1))+A057077(n)+n`
-/

namespace A317613.P14136893974396542221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A179865 (n + 1)).toNat + (A057077 n + (n : ℤ))

end

end A317613.P14136893974396542221

namespace A317613

/-- `A057077(A179865(n+1))+A057077(n)+n` -/
def P14136893974396542221.Spec : Prop :=
  ∀ n, P14136893974396542221.a n = A317613 n

end A317613

/-! ## A317613.P14279148282175769458

`A057077(A056000(n))+A057077(n)+n`
-/

namespace A317613.P14279148282175769458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A056000 n).toNat + (A057077 n + (n : ℤ))

end

end A317613.P14279148282175769458

namespace A317613

/-- `A057077(A056000(n))+A057077(n)+n` -/
def P14279148282175769458.Spec : Prop :=
  ∀ n, P14279148282175769458.a n = A317613 n

end A317613

/-!
# A317614: a(n) = (1/2)*(n^3 + n*(n mod 2)).

The programs for A317614, the canonical program `A317614.P5245933002801415823` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317614 has offset 1).

The definition of A317614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317614.P13895256107807707819

`ogf((1+2x+6x^2+2x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A317614.P13895256107807707819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6, 2, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A317614.P13895256107807707819

namespace A317614

/-- `ogf((1+2x+6x^2+2x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P13895256107807707819.Spec : Prop :=
  ∀ n, P13895256107807707819.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P5245933002801415823

`((n+1)^3+(n+1)*(n+1)%2)/2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317614

/-- `((n+1)^3+(n+1)*(n+1)%2)/2` -/
def P5245933002801415823.Spec : Prop :=
  ∀ n, P5245933002801415823.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P9506423217379740648

`1/2*((n+1)^3+(n+1)*(n+1)%2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317614.P9506423217379740648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (((n + 1) ^ 3 + (n + 1) * ((n + 1) % 2) : ℕ) : ℚ)

end

end A317614.P9506423217379740648

namespace A317614

/-- `1/2*((n+1)^3+(n+1)*(n+1)%2)` -/
def P9506423217379740648.Spec : Prop :=
  ∀ n, P9506423217379740648.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P15102391024830778013

`A210378(n)/(n+1)`
-/

namespace A317614.P15102391024830778013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210378 n : ℚ) / (n + 1 : ℚ)

end

end A317614.P15102391024830778013

namespace A317614

/-- `A210378(n)/(n+1)` -/
def P15102391024830778013.Spec : Prop :=
  ∀ n, P15102391024830778013.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P6239685900387373045

`(A000578(n+1)+A193356(n+1))/2`
-/

namespace A317614.P6239685900387373045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (n + 1) + A193356 (n + 1) : ℚ) / 2

end

end A317614.P6239685900387373045

namespace A317614

/-- `(A000578(n+1)+A193356(n+1))/2` -/
def P6239685900387373045.Spec : Prop :=
  ∀ n, P6239685900387373045.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P6278138281678886450

`1/2*(A000578(n+1)+(n+1)*A000035(n+1))`
-/

namespace A317614.P6278138281678886450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000578 (n + 1) + (n + 1 : ℤ) * A000035 (n + 1) : ℚ)

end

end A317614.P6278138281678886450

namespace A317614

/-- `1/2*(A000578(n+1)+(n+1)*A000035(n+1))` -/
def P6278138281678886450.Spec : Prop :=
  ∀ n, P6278138281678886450.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P18112507274708983562

`(n+1)*∑[or(1, n)]`
-/

namespace A317614.P18112507274708983562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317614.P18112507274708983562

namespace A317614

/-- `(n+1)*∑[or(1, n)]` -/
def P18112507274708983562.Spec : Prop :=
  ∀ n, (P18112507274708983562.a n : ℤ) = A317614 (n + 1)

end A317614

/-! ## A317614.P16887373995380646221

`∑[abs(Δ[n*ceil(n²/2)])]`
-/

namespace A317614.P16887373995380646221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n ^ 2 : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317614.P16887373995380646221

namespace A317614

/-- `∑[abs(Δ[n*ceil(n²/2)])]` -/
def P16887373995380646221.Spec : Prop :=
  ∀ n, P16887373995380646221.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P2000515041773013167

`(n+1)*∑[(n+1)%2+n]`
-/

namespace A317614.P2000515041773013167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317614.P2000515041773013167

namespace A317614

/-- `(n+1)*∑[(n+1)%2+n]` -/
def P2000515041773013167.Spec : Prop :=
  ∀ n, (P2000515041773013167.a n : ℤ) = A317614 (n + 1)

end A317614

/-! ## A317614.P334838552348836589

`(n+1)*∑[n+1-and(1, n)]`
-/

namespace A317614.P334838552348836589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317614.P334838552348836589

namespace A317614

/-- `(n+1)*∑[n+1-and(1, n)]` -/
def P334838552348836589.Spec : Prop :=
  ∀ n, P334838552348836589.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P18319601297632263764

`(n+1)*(∑[n]+∑[log2(gcd(2, n))])`
-/

namespace A317614.P18319601297632263764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A317614.P18319601297632263764

namespace A317614

/-- `(n+1)*(∑[n]+∑[log2(gcd(2, n))])` -/
def P18319601297632263764.Spec : Prop :=
  ∀ n, P18319601297632263764.a n = (A317614 (n + 1) : ℝ)

end A317614

/-! ## A317614.P9025384082131477990

`(n+1)*∑[a(n-2)+2]` with `a(0)=1, a(1)=1`
-/

namespace A317614.P9025384082131477990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317614.P9025384082131477990

namespace A317614

/-- `(n+1)*∑[a(n-2)+2]` -/
def P9025384082131477990.Spec : Prop :=
  ∀ n, (P9025384082131477990.a n : ℤ) = A317614 (n + 1)

end A317614

/-! ## A317614.P694891806646320591

`Δ[n*ceil(n²/2)]+a(n-1)` with `a(0)=1`
-/

namespace A317614.P694891806646320591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A317614.P694891806646320591

namespace A317614

/-- `Δ[n*ceil(n²/2)]+a(n-1)` -/
def P694891806646320591.Spec : Prop :=
  ∀ n, P694891806646320591.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P167523993918966893

`(n+1)/∑[a(n-2)+2]^(-1)` with `a(0)=1, a(1)=1`
-/

namespace A317614.P167523993918966893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A317614.P167523993918966893

namespace A317614

/-- `(n+1)/∑[a(n-2)+2]^(-1)` -/
def P167523993918966893.Spec : Prop :=
  ∀ n, P167523993918966893.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P11415300361835820012

`2*∑[A186424(n)/2]`
-/

namespace A317614.P11415300361835820012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186424 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317614.P11415300361835820012

namespace A317614

/-- `2*∑[A186424(n)/2]` -/
def P11415300361835820012.Spec : Prop :=
  ∀ n, P11415300361835820012.a n = (A317614 (n + 1) : ℚ)

end A317614

/-! ## A317614.P5741087206523239293

`(n+1)*sqrt(A212893(n))`
-/

namespace A317614.P5741087206523239293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A212893 n : ℝ)

end

end A317614.P5741087206523239293

namespace A317614

/-- `(n+1)*sqrt(A212893(n))` -/
def P5741087206523239293.Spec : Prop :=
  ∀ n, P5741087206523239293.a n = (A317614 (n + 1) : ℝ)

end A317614

/-! ## A317614.P12390429565802388650

`(n+1)*∑[A109613(n)]`
-/

namespace A317614.P12390429565802388650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A317614.P12390429565802388650

namespace A317614

/-- `(n+1)*∑[A109613(n)]` -/
def P12390429565802388650.Spec : Prop :=
  ∀ n, P12390429565802388650.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P4519998905624511771

`(n+1)*Δ[A131941(n)]`
-/

namespace A317614.P4519998905624511771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A317614.P4519998905624511771

namespace A317614

/-- `(n+1)*Δ[A131941(n)]` -/
def P4519998905624511771.Spec : Prop :=
  ∀ n, P4519998905624511771.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P4000795379036521318

`2*A246695(n)-(n+1)`
-/

namespace A317614.P4000795379036521318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246695 n - (n + 1 : ℤ)

end

end A317614.P4000795379036521318

namespace A317614

/-- `2*A246695(n)-(n+1)` -/
def P4000795379036521318.Spec : Prop :=
  ∀ n, P4000795379036521318.a n = A317614 (n + 1)

end A317614

/-! ## A317614.P9210506236798381500

`A178946(n+1)+∑[∑[n]]`
-/

namespace A317614.P9210506236798381500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178946 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A317614.P9210506236798381500

namespace A317614

/-- `A178946(n+1)+∑[∑[n]]` -/
def P9210506236798381500.Spec : Prop :=
  ∀ n, P9210506236798381500.a n = A317614 (n + 1)

end A317614

/-!
# A317616: Numbers whose prime multiplicities are not pairwise indivisible.

The programs for A317616, there is no canonical definition to state claims against.
-/

/-! ## A317616.P7492564460355797845

`A249716(A390055(n+1))`
-/

namespace A317616.P7492564460355797845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249716 (A390055 (n + 1)).toNat

end

end A317616.P7492564460355797845

/-! ## A317616.P11615311320484323391

`and(A107955(n), A390055(n+1))`
-/

namespace A317616.P11615311320484323391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A390055 (n + 1))

end

end A317616.P11615311320484323391

/-! ## A317616.P11869808119340067784

`A390055(n+1)%A022040(n)`
-/

namespace A317616.P11869808119340067784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390055 (n + 1)) (A022040 n)

end

end A317616.P11869808119340067784

/-! ## A317616.P14856324358684226677

`A390055(n+1)%A006960(n)`
-/

namespace A317616.P14856324358684226677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390055 (n + 1)) (A006960 n)

end

end A317616.P14856324358684226677

/-! ## A317616.P13006413728238677557

`A390055(n+1)%A003539(n)`
-/

namespace A317616.P13006413728238677557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390055 (n + 1)) (A003539 n)

end

end A317616.P13006413728238677557

/-! ## A317616.P12252989331016525838

`and(A206372(n), A390055(n+1))`
-/

namespace A317616.P12252989331016525838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206372 n) (A390055 (n + 1))

end

end A317616.P12252989331016525838

/-! ## A317616.P1680412575968448139

`∪[A332785(n+1), A392440(A392440(2*(n+1)))]`
-/

namespace A317616.P1680412575968448139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392440 (A392440 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317616.P1680412575968448139

/-! ## A317616.P11846513993158137647

`A390055(n+1)%A002189(n)`
-/

namespace A317616.P11846513993158137647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390055 (n + 1)) (A002189 n)

end

end A317616.P11846513993158137647

/-! ## A317616.P11406438774381808375

`∩[A059404(n+1), A342973(n+1)]`
-/

namespace A317616.P11406438774381808375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317616.P11406438774381808375

/-! ## A317616.P8025574273556203147

`∩[A323055(n+1), A342973(n+1)]`
-/

namespace A317616.P8025574273556203147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317616.P8025574273556203147

/-!
# A317617: Triangle T read by rows: T(n, k) = (n^3 + n)/2 + (k - (n + 1)/2)*(n mod 2).

The programs for A317617, the canonical program `A317617.P585119044664060217` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317617 has offset 1).

The definition of A317617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317617.P585119044664060217

`((row(n)+1)^3+row(n)+1)/2+(col(n)+1-(row(n)+2)/2)*(row(n)+1)%2`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317617

/-- `((row(n)+1)^3+row(n)+1)/2+(col(n)+1-(row(n)+2)/2)*(row(n)+1)%2` -/
def P585119044664060217.Spec : Prop :=
  ∀ n, P585119044664060217.a n = (A317617 (n + 1) : ℚ)

end A317617

/-! ## A317617.P1391346910441072367

`A006003(row(n)+1)+(col(n)+1-(A000027(row(n)+1)+1)/2)*A000035(row(n)+1)`
-/

namespace A317617.P1391346910441072367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006003 (SequenceMachineLib.triRow n + 1) : ℚ) + ((SequenceMachineLib.triCol n + 1 : ℚ) - (A000027 (SequenceMachineLib.triRow n + 1) + 1 : ℚ) / 2) * (A000035 (SequenceMachineLib.triRow n + 1) : ℚ)

end

end A317617.P1391346910441072367

namespace A317617

/-- `A006003(row(n)+1)+(col(n)+1-(A000027(row(n)+1)+1)/2)*A000035(row(n)+1)` -/
def P1391346910441072367.Spec : Prop :=
  ∀ n, P1391346910441072367.a n = (A317617 (n + 1) : ℚ)

end A317617

/-!
# A317618: Expansion of e.g.f. sqrt((1 - x)/(1 - 3*x)).

The programs for A317618, there is no canonical definition to state claims against.
-/

/-! ## A317618.P17195450278850188847

`A267807(A124565(n)-A061670(n+1))`
-/

namespace A317618.P17195450278850188847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267807 (A124565 n - A061670 (n + 1)).toNat

end

end A317618.P17195450278850188847

/-!
# A317619: Squares visited by a (2,4)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=0.

The programs for A317619, there is no canonical definition to state claims against.
-/

/-! ## A317619.P3483748650418317547

`A317620(n+1)-1`
-/

namespace A317619.P3483748650418317547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317620 (n + 1) - 1

end

end A317619.P3483748650418317547

/-! ## A317619.P2680168043710177364

`xor(1, A317620(xor(1, xor(1, n+1))))`
-/

namespace A317619.P2680168043710177364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317620 (Nat.xor 1 (Nat.xor 1 (n + 1))))

end

end A317619.P2680168043710177364

/-! ## A317619.P7136382838553177663

`A399158(A316328(n)+1)-1`
-/

namespace A317619.P7136382838553177663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A316328 n + 1).toNat - 1

end

end A317619.P7136382838553177663

/-! ## A317619.P991713275801143132

`A399158(A316667(n+1))-1`
-/

namespace A317619.P991713275801143132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A316667 (n + 1)).toNat - 1

end

end A317619.P991713275801143132

/-! ## A317619.P10622840213843040851

`A399158(A323808(n+1))-1`
-/

namespace A317619.P10622840213843040851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A323808 (n + 1)).toNat - 1

end

end A317619.P10622840213843040851

/-! ## A317619.P10490057291042796593

`A399158(A377015(n+1))-1`
-/

namespace A317619.P10490057291042796593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A377015 (n + 1)).toNat - 1

end

end A317619.P10490057291042796593

/-! ## A317619.P2770260633243146397

`xor(1, A317620(A000027(n+1)))`
-/

namespace A317619.P2770260633243146397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A317620 (A000027 (n + 1)).toNat)

end

end A317619.P2770260633243146397

/-! ## A317619.P2638297554948140735

`xor(A000035(A013597(n)), A317620(n+1))`
-/

namespace A317619.P2638297554948140735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A013597 n).toNat) (A317620 (n + 1))

end

end A317619.P2638297554948140735

/-! ## A317619.P14346299207563053486

`A004442(A317620(n+1))`
-/

namespace A317619.P14346299207563053486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317620 (n + 1)).toNat

end

end A317619.P14346299207563053486

/-!
# A317620: Squares visited by a (2,4)-leaper on a spirally numbered board and moving to the lowest available unvisited square at each step, squares labelled >=1.

The programs for A317620, there is no canonical definition to state claims against.
-/

/-! ## A317620.P1750070958730839199

`A317619(n)+1`
-/

namespace A317620.P1750070958730839199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317619 n + 1

end

end A317620.P1750070958730839199

/-! ## A317620.P16148808159869879456

`A399158(A316328(n)+1)`
-/

namespace A317620.P16148808159869879456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A316328 n + 1).toNat

end

end A317620.P16148808159869879456

/-! ## A317620.P7098886167248209166

`A399158(A316667(1+n))`
-/

namespace A317620.P7098886167248209166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A316667 (1 + n)).toNat

end

end A317620.P7098886167248209166

/-! ## A317620.P13316138506643064179

`A399158(A323808(n+1))`
-/

namespace A317620.P13316138506643064179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A323808 (n + 1)).toNat

end

end A317620.P13316138506643064179

/-! ## A317620.P6581126870408489092

`A399158(A377015(n+1))`
-/

namespace A317620.P6581126870408489092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399158 (A377015 (n + 1)).toNat

end

end A317620.P6581126870408489092

/-! ## A317620.P6072537839924899264

`A005408(A317619(n)/2)`
-/

namespace A317620.P6072537839924899264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A317619 n : ℚ) / 2)).toNat

end

end A317620.P6072537839924899264

/-! ## A317620.P3809846512570392986

`A004442(A317619(n))`
-/

namespace A317620.P3809846512570392986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A317619 n).toNat

end

end A317620.P3809846512570392986

/-! ## A317620.P15791626499179803450

`A022998(xor(1, A317619(n)))`
-/

namespace A317620.P15791626499179803450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Int.xor 1 (A317619 n)).toNat

end

end A317620.P15791626499179803450

/-! ## A317620.P9519116539922240437

`A008619(2*A317619(n))`
-/

namespace A317620.P9519116539922240437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A317619 n).toNat

end

end A317620.P9519116539922240437

/-! ## A317620.P5170850112170613340

`A008611(3*A317619(n))`
-/

namespace A317620.P5170850112170613340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A317619 n).toNat

end

end A317620.P5170850112170613340

/-! ## A317620.P12037262803707536591

`xor(A007318(∑[n]), A317619(n))`
-/

namespace A317620.P12037262803707536591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A317619 n)

end

end A317620.P12037262803707536591

/-!
# A317621: Numbers missing from A317619.

The programs for A317621, there is no canonical definition to state claims against.
-/

/-! ## A317621.P8841894879043755362

`A317622(n+1)-1`
-/

namespace A317621.P8841894879043755362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317622 (n + 1) - 1

end

end A317621.P8841894879043755362

/-! ## A317621.P4955275506628248351

`A023443(A317622(n+1))`
-/

namespace A317621.P4955275506628248351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A317622 (n + 1)).toNat

end

end A317621.P4955275506628248351

/-! ## A317621.P15068159886398080409

`(A317622(n+1)+A317619(n+1))%A317620(n+2)`
-/

namespace A317621.P15068159886398080409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317622 (n + 1) + A317619 (n + 1)) (A317620 (n + 2))

end

end A317621.P15068159886398080409

/-! ## A317621.P7338446027285200513

`comp[A317105(A317105(n))]`
-/

namespace A317621.P7338446027285200513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317105 (A317105 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317621.P7338446027285200513

/-! ## A317621.P12861901336812807598

`comp[A317619(n)]`
-/

namespace A317621.P12861901336812807598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317621.P12861901336812807598

/-! ## A317621.P5827461983914913674

`eq[0, and((n+1)², A260450(A317466(n)+1))]`
-/

namespace A317621.P5827461983914913674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A260450 (A317466 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317621.P5827461983914913674

/-!
# A317622: Numbers missing from A317620.

The programs for A317622, there is no canonical definition to state claims against.
-/

/-! ## A317622.P17625578613859848054

`A317621(n+1)+1`
-/

namespace A317622.P17625578613859848054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317621 (n + 1) + 1

end

end A317622.P17625578613859848054

/-! ## A317622.P9813758937526193462

`A020725(A317621(1+n))`
-/

namespace A317622.P9813758937526193462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A317621 (1 + n)).toNat

end

end A317622.P9813758937526193462

/-! ## A317622.P12375454928473536582

`comp[(A316967(n)+1)*A133872(2*n)]`
-/

namespace A317622.P12375454928473536582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A316967 n + 1) * A133872 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317622.P12375454928473536582

/-! ## A317622.P7819060483560489326

`comp[A317619(n)]+1`
-/

namespace A317622.P7819060483560489326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317619 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A317622.P7819060483560489326

/-! ## A317622.P14830563982756467107

`comp[A004442(A316967(n))*A133872(2*n)]`
-/

namespace A317622.P14830563982756467107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A316967 n).toNat * A133872 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A317622.P14830563982756467107

/-! ## A317622.P8390120905573266610

`∑[A188896(3*n+2)%3]`
-/

namespace A317622.P8390120905573266610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188896 (3 * n + 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317622.P8390120905573266610

/-!
# A317623: Number of distinct values of X*(3*X-1) mod n.

The programs for A317623, there is no canonical definition to state claims against.
-/

/-! ## A317623.P8763035410586609573

`A290732((∑[n]-1)%(n+1)+1)`
-/

namespace A317623.P8763035410586609573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A317623.P8763035410586609573

/-! ## A317623.P6103000308720972026

`A290732(A026741(n+1))`
-/

namespace A317623.P6103000308720972026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (A026741 (n + 1)).toNat

end

end A317623.P6103000308720972026

/-! ## A317623.P12947423233933614496

`A290732((n+1)/A000034(n))`
-/

namespace A317623.P12947423233933614496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A317623.P12947423233933614496

/-! ## A317623.P17358753021519717597

`A290732((n+1)/A040001(n+1))`
-/

namespace A317623.P17358753021519717597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A040001 (n + 1) : ℚ))).toNat

end

end A317623.P17358753021519717597

/-! ## A317623.P5151512888755905792

`∑{d}[n+1, A154955(#)*A290732((n+1)/#)]`
-/

namespace A317623.P5151512888755905792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A290732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317623.P5151512888755905792

/-! ## A317623.P12059272947927935624

`A290732(n+1)/A014963(A006519(n+1))`
-/

namespace A317623.P12059272947927935624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290732 (n + 1) : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A317623.P12059272947927935624

/-! ## A317623.P12747903586875037163

`A290731(n+1)/A117484(n+1)*A290732(n+1)`
-/

namespace A317623.P12747903586875037163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290731 (n + 1) : ℚ) / (A117484 (n + 1) : ℚ) * (A290732 (n + 1) : ℚ)

end

end A317623.P12747903586875037163

/-! ## A317623.P17422797170186748324

`A290732(n+1)/A084642(n+2)`
-/

namespace A317623.P17422797170186748324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290732 (n + 1) : ℚ) / (A084642 (n + 2) : ℚ)

end

end A317623.P17422797170186748324

/-! ## A317623.P830425763578043644

`A290732(n+1)/A006519(A053438(n))`
-/

namespace A317623.P830425763578043644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290732 (n + 1) : ℚ) / (A006519 (A053438 n).toNat : ℚ)

end

end A317623.P830425763578043644

/-! ## A317623.P15539274585760801806

`A290732(n+1)/A006519(n²+1)`
-/

namespace A317623.P15539274585760801806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290732 (n + 1) : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A317623.P15539274585760801806

/-!
# A317625: a(n) = Sum_{k=1..n} phi(floor(n/k)) where phi is the Euler totient function.

The programs for A317625, the canonical program `A317625.P13437238132825811599` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317625 has offset 1).

The definition of A317625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(floor((n+1)/(#+1)))]` (program `A317625.P13437238132825811599`, by `A317625.P13437238132825811599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317625.P13437238132825811599

`∑{#}[n, A000010(floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A317625

/-- `∑{#}[n, A000010(floor((n+1)/(#+1)))]` -/
def P13437238132825811599.Spec : Prop :=
  ∀ n, P13437238132825811599.a n = A317625 (n + 1)

theorem P13437238132825811599.correct : P13437238132825811599.Spec := by
  intro n
  simp only [A317625, Nat.add_sub_cancel]

end A317625

/-! ## A317625.P3423125929766715326

`∑[1-A092843(n+1)+n]`
-/

namespace A317625.P3423125929766715326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A092843 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317625.P3423125929766715326

namespace A317625

/-- `∑[1-A092843(n+1)+n]` -/
def P3423125929766715326.Spec : Prop :=
  ∀ n, P3423125929766715326.a n = A317625 (n + 1)

end A317625

/-! ## A317625.P9790479671691450904

`a(n-1)+A032741(A020639(n+1))+n-A092843(n+1)` with `a(0)=1`
-/

namespace A317625.P9790479671691450904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A032741 (A020639 (n + 1)).toNat + ((n : ℤ) - A092843 (n + 1)))

end

end A317625.P9790479671691450904

namespace A317625

/-- `a(n-1)+A032741(A020639(n+1))+n-A092843(n+1)` -/
def P9790479671691450904.Spec : Prop :=
  ∀ n, P9790479671691450904.a n = A317625 (n + 1)

end A317625

/-! ## A317625.P16795165130473497724

`∑[A008619(2*n)-A092843(A008619(2*n))]`
-/

namespace A317625.P16795165130473497724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A092843 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317625.P16795165130473497724

namespace A317625

/-- `∑[A008619(2*n)-A092843(A008619(2*n))]` -/
def P16795165130473497724.Spec : Prop :=
  ∀ n, P16795165130473497724.a n = A317625 (n + 1)

end A317625

/-!
# A317626: Intersections with the x-axis of a bouncing ball on a Sophie Germain billiard table.

The programs for A317626, the canonical program `A317626.P14555448525980414570` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317626 has offset 1).

The definition of A317626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317626.P14555448525980414570

`ceil(A005384(n+3)/3)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A317626

/-- `ceil(A005384(n+3)/3)` -/
def P14555448525980414570.Spec : Prop :=
  ∀ n, P14555448525980414570.a n = A317626 (n + 1)

theorem P14555448525980414570.correct : P14555448525980414570.Spec := by
  intro n
  simp only [A317626, Nat.add_sub_cancel]

end A317626

/-! ## A317626.P8554728702322654546

`2/3*A124485(n+2)`
-/

namespace A317626.P8554728702322654546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A124485 (n + 2) : ℚ)

end

end A317626.P8554728702322654546

namespace A317626

/-- `2/3*A124485(n+2)` -/
def P8554728702322654546.Spec : Prop :=
  ∀ n, P8554728702322654546.a n = (A317626 (n + 1) : ℚ)

end A317626

/-! ## A317626.P4094134412497783872

`A176045(n+3)/3`
-/

namespace A317626.P4094134412497783872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176045 (n + 3) : ℚ) / 3

end

end A317626.P4094134412497783872

namespace A317626

/-- `A176045(n+3)/3` -/
def P4094134412497783872.Spec : Prop :=
  ∀ n, P4094134412497783872.a n = (A317626 (n + 1) : ℚ)

end A317626

/-! ## A317626.P2255577994889212014

`ceil(A005385(n+3)/6)`
-/

namespace A317626.P2255577994889212014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005385 (n + 3) : ℚ) / 6⌉

end

end A317626.P2255577994889212014

namespace A317626

/-- `ceil(A005385(n+3)/6)` -/
def P2255577994889212014.Spec : Prop :=
  ∀ n, P2255577994889212014.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P7327866362109576054

`ceil(A077065(n+3)/6)`
-/

namespace A317626.P7327866362109576054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077065 (n + 3) : ℚ) / 6⌉

end

end A317626.P7327866362109576054

namespace A317626

/-- `ceil(A077065(n+3)/6)` -/
def P7327866362109576054.Spec : Prop :=
  ∀ n, P7327866362109576054.a n = A317626 (n + 1)

theorem P7327866362109576054.correct : P7327866362109576054.Spec := by
  intro n
  simp only [A317626, Nat.add_sub_cancel, A317626.P7327866362109576054.a, A317626.P14555448525980414570.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317626

/-! ## A317626.P6074573584615561730

`ceil(A317510(n+1)/4)`
-/

namespace A317626.P6074573584615561730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317510 (n + 1) : ℚ) / 4⌉

end

end A317626.P6074573584615561730

namespace A317626

/-- `ceil(A317510(n+1)/4)` -/
def P6074573584615561730.Spec : Prop :=
  ∀ n, P6074573584615561730.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P4774330157683953094

`A317510(n+1)-A005384(n+3)`
-/

namespace A317626.P4774330157683953094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317510 (n + 1) - A005384 (n + 3)

end

end A317626.P4774330157683953094

namespace A317626

/-- `A317510(n+1)-A005384(n+3)` -/
def P4774330157683953094.Spec : Prop :=
  ∀ n, P4774330157683953094.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P16947274861572662761

`∩[2*A024898(n+1), A024898(n+1)]`
-/

namespace A317626.P16947274861572662761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317626.P16947274861572662761

namespace A317626

/-- `∩[2*A024898(n+1), A024898(n+1)]` -/
def P16947274861572662761.Spec : Prop :=
  ∀ n, (P16947274861572662761.a n : ℤ) = A317626 (n + 1)

end A317626

/-! ## A317626.P7108216288273567166

`ceil(p?[A014109(n+4)]/3)`
-/

namespace A317626.P7108216288273567166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌉

end

end A317626.P7108216288273567166

namespace A317626

/-- `ceil(p?[A014109(n+4)]/3)` -/
def P7108216288273567166.Spec : Prop :=
  ∀ n, P7108216288273567166.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P15738405713801932759

`(p?[A104279(n+1)]+1)/3`
-/

namespace A317626.P15738405713801932759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 3

end

end A317626.P15738405713801932759

namespace A317626

/-- `(p?[A104279(n+1)]+1)/3` -/
def P15738405713801932759.Spec : Prop :=
  ∀ n, P15738405713801932759.a n = (A317626 (n + 1) : ℚ)

end A317626

/-! ## A317626.P5215400291112377634

`ceil(p?[A005097(n+4)]/3)`
-/

namespace A317626.P5215400291112377634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌉

end

end A317626.P5215400291112377634

namespace A317626

/-- `ceil(p?[A005097(n+4)]/3)` -/
def P5215400291112377634.Spec : Prop :=
  ∀ n, P5215400291112377634.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P17466092912991544244

`filter[A087370(n+2), A167020(#)]`
-/

namespace A317626.P17466092912991544244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167020 (f1 j).toNat = 1) n)

end

end A317626.P17466092912991544244

namespace A317626

/-- `filter[A087370(n+2), A167020(#)]` -/
def P17466092912991544244.Spec : Prop :=
  ∀ n, P17466092912991544244.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P17664334211313134442

`A004396(A124485(n+2))`
-/

namespace A317626.P17664334211313134442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A124485 (n + 2)).toNat

end

end A317626.P17664334211313134442

namespace A317626

/-- `A004396(A124485(n+2))` -/
def P17664334211313134442.Spec : Prop :=
  ∀ n, P17664334211313134442.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P12684188850023890474

`A018838(A152843(n+2))`
-/

namespace A317626.P12684188850023890474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018838 (A152843 (n + 2)).toNat

end

end A317626.P12684188850023890474

namespace A317626

/-- `A018838(A152843(n+2))` -/
def P12684188850023890474.Spec : Prop :=
  ∀ n, P12684188850023890474.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P8368397361515705729

`A008621(A317510(n+1))`
-/

namespace A317626.P8368397361515705729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A317510 (n + 1)).toNat

end

end A317626.P8368397361515705729

namespace A317626

/-- `A008621(A317510(n+1))` -/
def P8368397361515705729.Spec : Prop :=
  ∀ n, P8368397361515705729.a n = A317626 (n + 1)

end A317626

/-! ## A317626.P5936313529580921682

`record[A181776(3*n+5)-n]`
-/

namespace A317626.P5936313529580921682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181776 (3 * n + 5) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317626.P5936313529580921682

namespace A317626

/-- `record[A181776(3*n+5)-n]` -/
def P5936313529580921682.Spec : Prop :=
  ∀ n, P5936313529580921682.a n = A317626 (n + 1)

end A317626

/-!
# A317627: a(n) = A317253 - floor(8*n/3).

The programs for A317627, there is no canonical definition to state claims against.
-/

/-! ## A317627.P8957539928551004175

`A317253(n+1)-∑[n²%3+2]`
-/

namespace A317627.P8957539928551004175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A317627.P8957539928551004175

/-! ## A317627.P15705341974786174860

`A317253(n+1)-A236535(n+1)`
-/

namespace A317627.P15705341974786174860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1) - A236535 (n + 1)

end

end A317627.P15705341974786174860

/-! ## A317627.P6086592907558242586

`A317253(n+1)-A004773(2*(n+1))`
-/

namespace A317627.P6086592907558242586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1) - A004773 (2 * (n + 1))

end

end A317627.P6086592907558242586

/-! ## A317627.P9274414536129365171

`A317253(n+1)-A004523(4*(n+1))`
-/

namespace A317627.P9274414536129365171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317253 (n + 1) - A004523 (4 * (n + 1))

end

end A317627.P9274414536129365171

/-! ## A317627.P14149023699416052439

`∪[A317331(n+1), A317332(n+1)]-A236535(n+1)`
-/

namespace A317627.P14149023699416052439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A236535 (n + 1)

end

end A317627.P14149023699416052439

/-! ## A317627.P11951504551806422649

`∪[A317332(n+1), A014710(n)+4*n+2]-A236535(n+1)`
-/

namespace A317627.P11951504551806422649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n + (4 * n + 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A236535 (n + 1)

end

end A317627.P11951504551806422649

/-! ## A317627.P6611889719051324751

`∪[8*n+10-A014709(n)², A317331(n+1)]-A236535(n+1)`
-/

namespace A317627.P6611889719051324751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 10 : ℤ) - A014709 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A236535 (n + 1)

end

end A317627.P6611889719051324751

/-!
# A317629: The number of contiguous buildings which can be built from n 1 X 2 LEGO jumper plates.

The programs for A317629, there is no canonical definition to state claims against.
-/

/-! ## A317629.P13004013081744708686

`A081912(n)-A181835(A361657(n))`
-/

namespace A317629.P13004013081744708686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081912 n - A181835 (A361657 n).toNat

end

end A317629.P13004013081744708686

/-!
# A317631: Number of connected set partitions of the edges of labeled graphs with n vertices.

The programs for A317631, there is no canonical definition to state claims against.
-/

/-! ## A317631.P17474521336243242925

`A273528(ceil(exp(n)))`
-/

namespace A317631.P17474521336243242925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273528 ⌈Real.exp (n : ℝ)⌉.toNat

end

end A317631.P17474521336243242925

/-!
# A317632: Number of connected induced nonempty non-singleton subgraphs of labeled connected graphs with n vertices.

The programs for A317632, there is no canonical definition to state claims against.
-/

/-! ## A317632.P9947308148348359638

`A224712(∏[∑[n!]])`
-/

namespace A317632.P9947308148348359638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224712 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A317632.P9947308148348359638

/-!
# A317633: Numbers congruent to {1, 7, 9} mod 10.

The programs for A317633, the canonical program `A317633.P17490849266776640508` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317633 has offset 1).

The definition of A317633 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A317633.anchor (n : ℕ) (hn : 1 ≤ n) : A317633 n = (Nat.nth (fun k => k % 10 ∈ ({1, 7, 9} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A317.A317633`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317633.P17490849266776640508

`a(n-3)+10` with `a(0)=1, a(1)=7, a(2)=9`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317633

/-- `a(n-3)+10` -/
def P17490849266776640508.Spec : Prop :=
  ∀ n, (P17490849266776640508.a n : ℤ) = A317633 (n + 1)

theorem P17490849266776640508.correct : P17490849266776640508.Spec := by
  intro n
  simp only [A317633, Nat.add_sub_cancel]

end A317633

/-! ## A317633.P12039101594308237226

`ogf((1+6x+2x^2+x^3)/(1-x-x^3+x^4))`
-/

namespace A317633.P12039101594308237226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 2, 1] [1, -1, 0, -1, 1] n

end

end A317633.P12039101594308237226

namespace A317633

/-- `ogf((1+6x+2x^2+x^3)/(1-x-x^3+x^4))` -/
def P12039101594308237226.Spec : Prop :=
  ∀ n, P12039101594308237226.a n = A317633 (n + 1)

end A317633

/-! ## A317633.P16683326650276318793

`2*(n+1)+4*floor((n+2)/3)-1`
-/

namespace A317633.P16683326650276318793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + 4 * ⌊(n + 2 : ℚ) / 3⌋ - 1

end

end A317633.P16683326650276318793

namespace A317633

/-- `2*(n+1)+4*floor((n+2)/3)-1` -/
def P16683326650276318793.Spec : Prop :=
  ∀ n, P16683326650276318793.a n = A317633 (n + 1)

end A317633

/-! ## A317633.P547280041824857125

`∑[gcd(6, (1-∑[n])%3)]`
-/

namespace A317633.P547280041824857125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317633.P547280041824857125

namespace A317633

/-- `∑[gcd(6, (1-∑[n])%3)]` -/
def P547280041824857125.Spec : Prop :=
  ∀ n, (P547280041824857125.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P16401603437573475224

`∑[lcm(2, a(n-3))]` with `a(0)=1, a(1)=6, a(2)=2`
-/

namespace A317633.P16401603437573475224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317633.P16401603437573475224

namespace A317633

/-- `∑[lcm(2, a(n-3))]` -/
def P16401603437573475224.Spec : Prop :=
  ∀ n, (P16401603437573475224.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P18009223826081138133

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=6, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A317633.P18009223826081138133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 2, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317633.P18009223826081138133

namespace A317633

/-- `∑[floor(a(n-3))]` -/
def P18009223826081138133.Spec : Prop :=
  ∀ n, (P18009223826081138133.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P1684485624167554021

`2*∑[gcd(3, n-1)]-1`
-/

namespace A317633.P1684485624167554021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A317633.P1684485624167554021

namespace A317633

/-- `2*∑[gcd(3, n-1)]-1` -/
def P1684485624167554021.Spec : Prop :=
  ∀ n, P1684485624167554021.a n = A317633 (n + 1)

end A317633

/-! ## A317633.P13325107089849660072

`record[gcd(5, 1-n)+2*n]`
-/

namespace A317633.P13325107089849660072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (1 - (n : ℤ)) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317633.P13325107089849660072

namespace A317633

/-- `record[gcd(5, 1-n)+2*n]` -/
def P13325107089849660072.Spec : Prop :=
  ∀ n, (P13325107089849660072.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P14666738034008101785

`∑[a(n-3)%7]` with `a(0)=1, a(1)=6, a(2)=2, a(3)=2`
-/

namespace A317633.P14666738034008101785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 2, 2] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317633.P14666738034008101785

namespace A317633

/-- `∑[a(n-3)%7]` -/
def P14666738034008101785.Spec : Prop :=
  ∀ n, (P14666738034008101785.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P3337788171525009802

`filter[2*n+1, gcd(9, #%5)]`
-/

namespace A317633.P3337788171525009802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 9 (f1 j % 5) = 1) n)

end

end A317633.P3337788171525009802

namespace A317633

/-- `filter[2*n+1, gcd(9, #%5)]` -/
def P3337788171525009802.Spec : Prop :=
  ∀ n, (P3337788171525009802.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P7243489304417338724

`∩[2*n+1, floor(2*n/3+n+1)]`
-/

namespace A317633.P7243489304417338724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / 3 + (n + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A317633.P7243489304417338724

namespace A317633

/-- `∩[2*n+1, floor(2*n/3+n+1)]` -/
def P7243489304417338724.Spec : Prop :=
  ∀ n, (P7243489304417338724.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P7617164085087636344

`∑[gcd(6, A133653(n+1))]`
-/

namespace A317633.P7617164085087636344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A133653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317633.P7617164085087636344

namespace A317633

/-- `∑[gcd(6, A133653(n+1))]` -/
def P7617164085087636344.Spec : Prop :=
  ∀ n, (P7617164085087636344.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P8211355130132211394

`xor(1, 2*(A302402(n)+n))`
-/

namespace A317633.P8211355130132211394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * (A302402 n + (n : ℤ)))

end

end A317633.P8211355130132211394

namespace A317633

/-- `xor(1, 2*(A302402(n)+n))` -/
def P8211355130132211394.Spec : Prop :=
  ∀ n, P8211355130132211394.a n = A317633 (n + 1)

end A317633

/-! ## A317633.P16624364323994864969

`∑[A323156(2*n+1)!]`
-/

namespace A317633.P16624364323994864969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A323156 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317633.P16624364323994864969

namespace A317633

/-- `∑[A323156(2*n+1)!]` -/
def P16624364323994864969.Spec : Prop :=
  ∀ n, (P16624364323994864969.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P7760619453811768978

`∪[A090771(n+1), A017353(n)]`
-/

namespace A317633.P7760619453811768978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317633.P7760619453811768978

namespace A317633

/-- `∪[A090771(n+1), A017353(n)]` -/
def P7760619453811768978.Spec : Prop :=
  ∀ n, (P7760619453811768978.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P7950874567530592005

`∪[A131229(n+1), A017377(n)]`
-/

namespace A317633.P7950874567530592005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317633.P7950874567530592005

namespace A317633

/-- `∪[A131229(n+1), A017377(n)]` -/
def P7950874567530592005.Spec : Prop :=
  ∀ n, (P7950874567530592005.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P16570263352161043654

`∪[A090771(n+1), A131229(n+1)]`
-/

namespace A317633.P16570263352161043654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317633.P16570263352161043654

namespace A317633

/-- `∪[A090771(n+1), A131229(n+1)]` -/
def P16570263352161043654.Spec : Prop :=
  ∀ n, (P16570263352161043654.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P12447825964080352611

`∪[A090771(n+1), A160912(n+1)]`
-/

namespace A317633.P12447825964080352611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317633.P12447825964080352611

namespace A317633

/-- `∪[A090771(n+1), A160912(n+1)]` -/
def P12447825964080352611.Spec : Prop :=
  ∀ n, (P12447825964080352611.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P17205081867709139531

`∪[A090771(n+1), A090772(n+1)-1]`
-/

namespace A317633.P17205081867709139531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317633.P17205081867709139531

namespace A317633

/-- `∪[A090771(n+1), A090772(n+1)-1]` -/
def P17205081867709139531.Spec : Prop :=
  ∀ n, (P17205081867709139531.a n : ℤ) = A317633 (n + 1)

end A317633

/-! ## A317633.P15685535124451676753

`A045572(A042965(n+2))`
-/

namespace A317633.P15685535124451676753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A042965 (n + 2)).toNat

end

end A317633.P15685535124451676753

namespace A317633

/-- `A045572(A042965(n+2))` -/
def P15685535124451676753.Spec : Prop :=
  ∀ n, P15685535124451676753.a n = A317633 (n + 1)

end A317633

/-!
# A317634: Number of caps (also clutter partitions) of clutters (connected antichains) spanning n vertices.

The programs for A317634, there is no canonical definition to state claims against.
-/

/-! ## A317634.P11787063058041850046

`A057363(2^(1-n)²)`
-/

namespace A317634.P11787063058041850046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((1 - (n : ℤ)) ^ 2 : ℤ))).toNat

end

end A317634.P11787063058041850046

/-!
# A317635: Number of connected vertex sets of clutters (connected antichains) spanning n vertices.

The programs for A317635, there is no canonical definition to state claims against.
-/

/-! ## A317635.P1474806186044356477

`xor(n%2, A341218(n*round(2^n/3)))`
-/

namespace A317635.P1474806186044356477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A341218 ((n : ℤ) * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)).toNat)

end

end A317635.P1474806186044356477

/-!
# A317636: Minimum number of consecutive positive integers starting with 1 that must be concatenated in descending order so that n divides the concatenation, or zero if n divides no such concatenation.

The programs for A317636, there is no canonical definition to state claims against.
-/

/-! ## A317636.P849687927334296106

`A256055(A052552(n))%A052552(n)`
-/

namespace A317636.P849687927334296106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256055 (A052552 n).toNat) (A052552 n)

end

end A317636.P849687927334296106

/-! ## A317636.P12531818902736791247

`and(A002110(n), A328578(A005773(n)))`
-/

namespace A317636.P12531818902736791247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002110 n) (A328578 (A005773 n).toNat)

end

end A317636.P12531818902736791247

/-! ## A317636.P7128560914467951262

`and(A006955(n), A112632(A227540(n)))`
-/

namespace A317636.P7128560914467951262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006955 n) (A112632 (A227540 n).toNat)

end

end A317636.P7128560914467951262

/-! ## A317636.P18307559638713114061

`and(A002110(n), A265533(A141459(n)))`
-/

namespace A317636.P18307559638713114061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002110 n) (A265533 (A141459 n).toNat)

end

end A317636.P18307559638713114061

/-! ## A317636.P7119186941042170439

`A077957(n+4)%A160326(A057200(n+1))`
-/

namespace A317636.P7119186941042170439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077957 (n + 4)) (A160326 (A057200 (n + 1)).toNat)

end

end A317636.P7119186941042170439

/-!
# A317637: a(n) = n*(n+1)*(n+3).

The programs for A317637, the canonical program `A317637.P12410921374359631461` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317637 has offset 0).

The definition of A317637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+3)` (program `A317637.P12410921374359631461`, by `A317637.P12410921374359631461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317637.P12410921374359631461

`n*(n+1)*(n+3)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317637

/-- `n*(n+1)*(n+3)` -/
def P12410921374359631461.Spec : Prop :=
  ∀ n, (P12410921374359631461.a n : ℤ) = A317637 n

theorem P12410921374359631461.correct : P12410921374359631461.Spec := by
  intro n
  simp only [A317637]

end A317637

/-! ## A317637.P2744290145858243539

`ogf((8x-2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A317637.P2744290145858243539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -2] [1, -4, 6, -4, 1] n

end

end A317637.P2744290145858243539

namespace A317637

/-- `ogf((8x-2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2744290145858243539.Spec : Prop :=
  ∀ n, P2744290145858243539.a n = A317637 n

end A317637

/-! ## A317637.P15340653210666678784

`n*record[(2-n)²]-n`
-/

namespace A317637.P15340653210666678784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A317637.P15340653210666678784

namespace A317637

/-- `n*record[(2-n)²]-n` -/
def P15340653210666678784.Spec : Prop :=
  ∀ n, P15340653210666678784.a n = A317637 n

end A317637

/-! ## A317637.P2254988542182151683

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=8`
-/

namespace A317637.P2254988542182151683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P2254988542182151683

namespace A317637

/-- `∑[∑[a(n-1)+6]]` -/
def P2254988542182151683.Spec : Prop :=
  ∀ n, (P2254988542182151683.a n : ℤ) = A317637 n

end A317637

/-! ## A317637.P11907595226540885307

`xor(1, (n+1)^3+n²)`
-/

namespace A317637.P11907595226540885307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 1) ^ 3 + n ^ 2)

end

end A317637.P11907595226540885307

namespace A317637

/-- `xor(1, (n+1)^3+n²)` -/
def P11907595226540885307.Spec : Prop :=
  ∀ n, (P11907595226540885307.a n : ℤ) = A317637 n

end A317637

/-! ## A317637.P15765939615340872104

`∑[Δ[lcm(n+1, n²)]-2]`
-/

namespace A317637.P15765939615340872104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P15765939615340872104

namespace A317637

/-- `∑[Δ[lcm(n+1, n²)]-2]` -/
def P15765939615340872104.Spec : Prop :=
  ∀ n, P15765939615340872104.a n = A317637 n

end A317637

/-! ## A317637.P8817802107612661774

`record[(n-3)*abs(n*(2-n))]`
-/

namespace A317637.P8817802107612661774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * |(n : ℤ) * (2 - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317637.P8817802107612661774

namespace A317637

/-- `record[(n-3)*abs(n*(2-n))]` -/
def P8817802107612661774.Spec : Prop :=
  ∀ n, P8817802107612661774.a n = A317637 n

end A317637

/-! ## A317637.P9217893486461298979

`∏{d}[-a(n-1), n-1+#]` with `a(0)=4`
-/

namespace A317637.P9217893486461298979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - 1 + (d : ℤ))

end

end A317637.P9217893486461298979

namespace A317637

/-- `∏{d}[-a(n-1), n-1+#]` -/
def P9217893486461298979.Spec : Prop :=
  ∀ n, P9217893486461298979.a n = A317637 n

end A317637

/-! ## A317637.P8353059614301061547

`∑[2*(n-∑[a(n-1)-3])]` with `a(0)=0`
-/

namespace A317637.P8353059614301061547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P8353059614301061547

namespace A317637

/-- `∑[2*(n-∑[a(n-1)-3])]` -/
def P8353059614301061547.Spec : Prop :=
  ∀ n, P8353059614301061547.a n = A317637 n

end A317637

/-! ## A317637.P13089739058260672840

`lcm(n+2, (n+1)²)-(n+2+n)`
-/

namespace A317637.P13089739058260672840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ) - (n + 2 + n : ℤ)

end

end A317637.P13089739058260672840

namespace A317637

/-- `lcm(n+2, (n+1)²)-(n+2+n)` -/
def P13089739058260672840.Spec : Prop :=
  ∀ n, P13089739058260672840.a n = A317637 n

end A317637

/-! ## A317637.P11816787458557380293

`A152619(n)-n`
-/

namespace A317637.P11816787458557380293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152619 n - (n : ℤ)

end

end A317637.P11816787458557380293

namespace A317637

/-- `A152619(n)-n` -/
def P11816787458557380293.Spec : Prop :=
  ∀ n, P11816787458557380293.a n = A317637 n

theorem P11816787458557380293.correct : P11816787458557380293.Spec := by
  intro n
  simp only [A317637, Nat.add_sub_cancel, A317637.P11816787458557380293.a, A317637.P12410921374359631461.a, A152619, A152619.P2662992481695215872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317637

/-! ## A317637.P12035634734938851113

`∑[A140676(n)+n]`
-/

namespace A317637.P12035634734938851113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P12035634734938851113

namespace A317637

/-- `∑[A140676(n)+n]` -/
def P12035634734938851113.Spec : Prop :=
  ∀ n, P12035634734938851113.a n = A317637 n

end A317637

/-! ## A317637.P15776847559390166700

`∑[A067725(n)-n]`
-/

namespace A317637.P15776847559390166700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067725 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P15776847559390166700

namespace A317637

/-- `∑[A067725(n)-n]` -/
def P15776847559390166700.Spec : Prop :=
  ∀ n, P15776847559390166700.a n = A317637 n

end A317637

/-! ## A317637.P12603240597505991174

`A081437(n)-(n+1)`
-/

namespace A317637.P12603240597505991174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 n - (n + 1 : ℤ)

end

end A317637.P12603240597505991174

namespace A317637

/-- `A081437(n)-(n+1)` -/
def P12603240597505991174.Spec : Prop :=
  ∀ n, P12603240597505991174.a n = A317637 n

theorem P12603240597505991174.correct : P12603240597505991174.Spec := by
  intro n
  simp only [A317637, Nat.add_sub_cancel, A317637.P12603240597505991174.a, A317637.P12410921374359631461.a, A081437, A081437.P14818767288704405254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317637

/-! ## A317637.P12617726168677316929

`A033954(n)+n^3`
-/

namespace A317637.P12617726168677316929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + (n ^ 3 : ℤ)

end

end A317637.P12617726168677316929

namespace A317637

/-- `A033954(n)+n^3` -/
def P12617726168677316929.Spec : Prop :=
  ∀ n, P12617726168677316929.a n = A317637 n

theorem P12617726168677316929.correct : P12617726168677316929.Spec := by
  intro n
  simp only [A317637, Nat.add_sub_cancel, A317637.P12617726168677316929.a, A317637.P12410921374359631461.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317637

/-! ## A317637.P9310319068566007059

`∑[A033537(n)+n²]`
-/

namespace A317637.P9310319068566007059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P9310319068566007059

namespace A317637

/-- `∑[A033537(n)+n²]` -/
def P9310319068566007059.Spec : Prop :=
  ∀ n, P9310319068566007059.a n = A317637 n

end A317637

/-! ## A317637.P7142022567950631050

`∑[A144390(n+1)-1]`
-/

namespace A317637.P7142022567950631050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P7142022567950631050

namespace A317637

/-- `∑[A144390(n+1)-1]` -/
def P7142022567950631050.Spec : Prop :=
  ∀ n, P7142022567950631050.a n = A317637 n

end A317637

/-! ## A317637.P8456114878836092610

`∑[A056106(n+1)-3]`
-/

namespace A317637.P8456114878836092610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P8456114878836092610

namespace A317637

/-- `∑[A056106(n+1)-3]` -/
def P8456114878836092610.Spec : Prop :=
  ∀ n, P8456114878836092610.a n = A317637 n

end A317637

/-! ## A317637.P6377672965129233768

`∑[2*A115067(n+1)]`
-/

namespace A317637.P6377672965129233768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317637.P6377672965129233768

namespace A317637

/-- `∑[2*A115067(n+1)]` -/
def P6377672965129233768.Spec : Prop :=
  ∀ n, P6377672965129233768.a n = A317637 n

end A317637

/-! ## A317637.P14140626446709232190

`A068601(n+1)+n²`
-/

namespace A317637.P14140626446709232190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) + (n ^ 2 : ℤ)

end

end A317637.P14140626446709232190

namespace A317637

/-- `A068601(n+1)+n²` -/
def P14140626446709232190.Spec : Prop :=
  ∀ n, P14140626446709232190.a n = A317637 n

theorem P14140626446709232190.correct : P14140626446709232190.Spec := by
  intro n
  simp only [A317637, Nat.add_sub_cancel, A317637.P14140626446709232190.a, A317637.P12410921374359631461.a, A068601, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A317637

/-!
# A317639: Number of equivalence classes of Dyck paths of semilength n for the consecutive pattern UDUDD, where U=(1,1) and D=(1,-1).

The programs for A317639, there is no canonical definition to state claims against.
-/

/-! ## A317639.P17877545294049521033

`A239088(A000786(n))`
-/

namespace A317639.P17877545294049521033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (A000786 n).toNat

end

end A317639.P17877545294049521033

/-! ## A317639.P7691918025782311173

`A162344(floor(sqrt(A190255(n))))`
-/

namespace A317639.P7691918025782311173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162344 (Int.sqrt (A190255 n)).toNat

end

end A317639.P7691918025782311173

/-! ## A317639.P17249256814865628720

`ceil(A228083(A024581(n))/10)`
-/

namespace A317639.P17249256814865628720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228083 (A024581 n).toNat : ℚ) / 10⌉

end

end A317639.P17249256814865628720

/-! ## A317639.P8114579412352076469

`A167520(floor(sqrt(A301902(n+1))))`
-/

namespace A317639.P8114579412352076469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (Int.sqrt (A301902 (n + 1))).toNat

end

end A317639.P8114579412352076469

/-! ## A317639.P16150326043766593642

`A135660(A208369(n+1)+A077938(n))`
-/

namespace A317639.P16150326043766593642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A208369 (n + 1) + A077938 n).toNat

end

end A317639.P16150326043766593642

/-!
# A317640: The 7x+-1 function: a(n) = 7n+1 if n == +1 (mod 4), a(n) = 7n-1 if n == -1 (mod 4), otherwise a(n) = n/2.

The programs for A317640, the canonical program `A317640.P11069044470090677819` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317640 has offset 0).

The definition of A317640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317640.P16670757533266425365

`ogf((8x+x^2+12x^3+x^4+8x^5)/(1-x^2-x^4+x^6))`
-/

namespace A317640.P16670757533266425365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 1, 12, 1, 8] [1, 0, -1, 0, -1, 0, 1] n

end

end A317640.P16670757533266425365

namespace A317640

/-- `ogf((8x+x^2+12x^3+x^4+8x^5)/(1-x^2-x^4+x^6))` -/
def P16670757533266425365.Spec : Prop :=
  ∀ n, P16670757533266425365.a n = A317640 n

end A317640

/-! ## A317640.P11069044470090677819

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=8, a(2)=1, a(3)=20, a(4)=2, a(5)=36`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317640

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P11069044470090677819.Spec : Prop :=
  ∀ n, P11069044470090677819.a n = A317640 n

theorem P11069044470090677819.correct : P11069044470090677819.Spec := by
  intro n
  simp only [A317640]

end A317640

/-! ## A317640.P15761300040041014353

`A010685(n)*A318972(n)`
-/

namespace A317640.P15761300040041014353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A318972 n

end

end A317640.P15761300040041014353

namespace A317640

/-- `A010685(n)*A318972(n)` -/
def P15761300040041014353.Spec : Prop :=
  ∀ n, P15761300040041014353.a n = A317640 n

end A317640

/-! ## A317640.P11127167028441600117

`A000034(n)²*A318972(n)`
-/

namespace A317640.P11127167028441600117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A318972 n

end

end A317640.P11127167028441600117

namespace A317640

/-- `A000034(n)²*A318972(n)` -/
def P11127167028441600117.Spec : Prop :=
  ∀ n, P11127167028441600117.a n = A317640 n

end A317640

/-! ## A317640.P8884067029621472919

`2^A010673(n)*A318972(n)`
-/

namespace A317640.P8884067029621472919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A010673 n : ℤ) * (A318972 n : ℚ)

end

end A317640.P8884067029621472919

namespace A317640

/-- `2^A010673(n)*A318972(n)` -/
def P8884067029621472919.Spec : Prop :=
  ∀ n, P8884067029621472919.a n = (A317640 n : ℚ)

end A317640

/-! ## A317640.P10698942715496274769

`Δ[A032766(n)]²*A318972(n)`
-/

namespace A317640.P10698942715496274769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A318972 n

end

end A317640.P10698942715496274769

namespace A317640

/-- `Δ[A032766(n)]²*A318972(n)` -/
def P10698942715496274769.Spec : Prop :=
  ∀ n, P10698942715496274769.a n = A317640 n

end A317640

/-! ## A317640.P13208061435385702551

`gcd(A157932(n+1)+A109045(n), A142150(n))`
-/

namespace A317640.P13208061435385702551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157932 (n + 1) + A109045 n) (A142150 n)

end

end A317640.P13208061435385702551

namespace A317640

/-- `gcd(A157932(n+1)+A109045(n), A142150(n))` -/
def P13208061435385702551.Spec : Prop :=
  ∀ n, (P13208061435385702551.a n : ℤ) = A317640 n

end A317640

/-! ## A317640.P10966860450112219216

`Δ[A028242(n)]²*A318972(n)`
-/

namespace A317640.P10966860450112219216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A318972 n

end

end A317640.P10966860450112219216

namespace A317640

/-- `Δ[A028242(n)]²*A318972(n)` -/
def P10966860450112219216.Spec : Prop :=
  ∀ n, P10966860450112219216.a n = A317640 n

end A317640

/-! ## A317640.P10823914214046584920

`A271478(A004525(n)+A001281(n))`
-/

namespace A317640.P10823914214046584920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271478 (A004525 n + A001281 n).toNat

end

end A317640.P10823914214046584920

namespace A317640

/-- `A271478(A004525(n)+A001281(n))` -/
def P10823914214046584920.Spec : Prop :=
  ∀ n, P10823914214046584920.a n = A317640 n

end A317640

/-! ## A317640.P12216431752126000666

`gcd(A142150(n), A201629(A008589(n)))`
-/

namespace A317640.P12216431752126000666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A142150 n) (A201629 (A008589 n).toNat)

end

end A317640.P12216431752126000666

namespace A317640

/-- `gcd(A142150(n), A201629(A008589(n)))` -/
def P12216431752126000666.Spec : Prop :=
  ∀ n, (P12216431752126000666.a n : ℤ) = A317640 n

end A317640

/-!
# A317641: Expansion of theta_3(q)*theta_3(q^10), where theta_3() is the Jacobi theta function.

The programs for A317641, there is no canonical definition to state claims against.
-/

/-! ## A317641.P14058897624512657562

`A317642(2*n)`
-/

namespace A317641.P14058897624512657562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317642 (2 * n)

end

end A317641.P14058897624512657562

/-! ## A317641.P6759611070532284436

`A028605(4*n)`
-/

namespace A317641.P6759611070532284436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028605 (4 * n)

end

end A317641.P6759611070532284436

/-!
# A317642: Expansion of theta_3(q^2)*theta_3(q^5), where theta_3() is the Jacobi theta function.

The programs for A317642, there is no canonical definition to state claims against.
-/

/-! ## A317642.P12851872185593533524

`A317641(2*n)`
-/

namespace A317642.P12851872185593533524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (2 * n)

end

end A317642.P12851872185593533524

/-! ## A317642.P3782438869963824772

`A317641(record[A014681(n)])%18`
-/

namespace A317642.P3782438869963824772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317641 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 18

end

end A317642.P3782438869963824772

/-! ## A317642.P5260893368126640844

`lcm(A000034(n), A317641(A005843(n)))`
-/

namespace A317642.P5260893368126640844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A317641 (A005843 n).toNat)

end

end A317642.P5260893368126640844

/-! ## A317642.P16565721332004191372

`or(A000007(n), A317641(A005843(n)))`
-/

namespace A317642.P16565721332004191372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A317641 (A005843 n).toNat)

end

end A317642.P16565721332004191372

/-! ## A317642.P5807502692090202283

`A317641(A005843(n))/A000213(A317641(n))`
-/

namespace A317642.P5807502692090202283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317641 (A005843 n).toNat : ℚ) / (A000213 (A317641 n).toNat : ℚ)

end

end A317642.P5807502692090202283

/-! ## A317642.P2864865786233149865

`A028605(8*n)`
-/

namespace A317642.P2864865786233149865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028605 (8 * n)

end

end A317642.P2864865786233149865

/-! ## A317642.P13530103468310334249

`A317641(A233583(n+1)+n)+floor(acot(n))`
-/

namespace A317642.P13530103468310334249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A233583 (n + 1) + (n : ℤ)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A317642.P13530103468310334249

/-!
# A317643: Expansion of theta_3(q^3)*theta_3(q^4), where theta_3() is the Jacobi theta function.

The programs for A317643, there is no canonical definition to state claims against.
-/

/-! ## A317643.P15692421149771719632

`lcm(A102560(n), A164272(n))`
-/

namespace A317643.P15692421149771719632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102560 n) (A164272 n)

end

end A317643.P15692421149771719632

/-! ## A317643.P16436913516773709601

`lcm(A131379(n), A164273(n))`
-/

namespace A317643.P16436913516773709601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131379 n) (A164273 n)

end

end A317643.P16436913516773709601

/-! ## A317643.P6851939704533031632

`abs(A164272(A072833(n)))`
-/

namespace A317643.P6851939704533031632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164272 (A072833 n).toNat|

end

end A317643.P6851939704533031632

/-! ## A317643.P4033087200848774700

`abs(A138270(A195161(n)))`
-/

namespace A317643.P4033087200848774700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138270 (A195161 n).toNat|

end

end A317643.P4033087200848774700

/-! ## A317643.P9164167242316032579

`abs(A138270(A022998(A022998(n))))`
-/

namespace A317643.P9164167242316032579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138270 (A022998 (A022998 n).toNat).toNat|

end

end A317643.P9164167242316032579

/-! ## A317643.P1585784076495044256

`A028613(12*n)`
-/

namespace A317643.P1585784076495044256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028613 (12 * n)

end

end A317643.P1585784076495044256

/-!
# A317644: Triangle read by rows: multiplicative version of Pascal's triangle except n-th row begins and ends with (n+1)-st prime.

The programs for A317644, there is no canonical definition to state claims against.
-/

/-! ## A317644.P5351750520772301734

`A005940(A151938(n)+or(1, A347940(n)))`
-/

namespace A317644.P5351750520772301734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A151938 n + Int.lor 1 (A347940 n)).toNat

end

end A317644.P5351750520772301734

/-! ## A317644.P17086627966037895235

`A163511(or(A032559(n+1), A082766(n+1)))`
-/

namespace A317644.P17086627966037895235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (Int.lor (A032559 (n + 1)) (A082766 (n + 1))).toNat

end

end A317644.P17086627966037895235

/-!
# A317648: a(1) = a(2) = 1; for n >= 3, a(n) = a(t(n)) + a(n-t(n)) where t = A004001.

The programs for A317648, the canonical program `A317648.P15112088407625146715` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317648 has offset 1).

The definition of A317648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317648.P13231738440861287633

`∑[char[A209861(2*n)]]`
-/

namespace A317648.P13231738440861287633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317648.P13231738440861287633

namespace A317648

/-- `∑[char[A209861(2*n)]]` -/
def P13231738440861287633.Spec : Prop :=
  ∀ n, (P13231738440861287633.a n : ℤ) = A317648 (n + 1)

end A317648

/-! ## A317648.P817555724484227380

`∑[gcd(2, A209862(n))-1]`
-/

namespace A317648.P817555724484227380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A209862 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317648.P817555724484227380

namespace A317648

/-- `∑[gcd(2, A209862(n))-1]` -/
def P817555724484227380.Spec : Prop :=
  ∀ n, P817555724484227380.a n = A317648 (n + 1)

end A317648

/-! ## A317648.P10697016443239556696

`∑[A059841(A209862(n))]`
-/

namespace A317648.P10697016443239556696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A209862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317648.P10697016443239556696

namespace A317648

/-- `∑[A059841(A209862(n))]` -/
def P10697016443239556696.Spec : Prop :=
  ∀ n, P10697016443239556696.a n = A317648 (n + 1)

end A317648

/-! ## A317648.P14117255790903266853

`A287155(2*(n+1))/2`
-/

namespace A317648.P14117255790903266853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287155 (2 * (n + 1)) : ℚ) / 2

end

end A317648.P14117255790903266853

namespace A317648

/-- `A287155(2*(n+1))/2` -/
def P14117255790903266853.Spec : Prop :=
  ∀ n, P14117255790903266853.a n = (A317648 (n + 1) : ℚ)

end A317648

/-! ## A317648.P15112088407625146715

`A110654(A287155(2*(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A317648

/-- `A110654(A287155(2*(n+1)))` -/
def P15112088407625146715.Spec : Prop :=
  ∀ n, P15112088407625146715.a n = A317648 (n + 1)

theorem P15112088407625146715.correct : P15112088407625146715.Spec := by
  intro n
  simp only [A317648, Nat.add_sub_cancel]

end A317648

/-!
# A317649: Numbers whose least primitive root is an odd prime.

The programs for A317649, there is no canonical definition to state claims against.
-/

/-! ## A317649.P1733621630702061711

`eq[1, A107279(A046145(n))]`
-/

namespace A317649.P1733621630702061711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A046145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317649.P1733621630702061711

/-! ## A317649.P14753146265580897441

`eq[1, A305614(A046145(n)²)]`
-/

namespace A317649.P14753146265580897441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (A046145 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317649.P14753146265580897441

/-! ## A317649.P2661499588060000501

`eq[A093178(A046145(n)), A103309(n)]`
-/

namespace A317649.P2661499588060000501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A046145 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317649.P2661499588060000501

/-! ## A317649.P7914593489922863009

`eq[A040000(n), A327987(A046145(n))]`
-/

namespace A317649.P7914593489922863009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 (A046145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317649.P7914593489922863009

/-! ## A317649.P15724379705737035712

`eq[A020639(4*n+2), A327987(A046145(n))]`
-/

namespace A317649.P15724379705737035712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 (A046145 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A317649.P15724379705737035712

/-!
# A317650: The n-th term is the smallest integer > 1 that is congruent to +1 or -1 modulo k for all 2 <= k <= n.

The programs for A317650, there is no canonical definition to state claims against.
-/

/-! ## A317650.P5434866614486718646

`A130829(A025555(n+1))`
-/

namespace A317650.P5434866614486718646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (A025555 (n + 1)).toNat

end

end A317650.P5434866614486718646

/-! ## A317650.P6431972805030229867

`A016026(A051426(n+2))`
-/

namespace A317650.P6431972805030229867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016026 (A051426 (n + 2)).toNat

end

end A317650.P6431972805030229867

/-! ## A317650.P3248212537170932791

`A002024(A079782(n+2))`
-/

namespace A317650.P3248212537170932791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A079782 (n + 2)).toNat

end

end A317650.P3248212537170932791

/-! ## A317650.P15751027366140093730

`A096006(A079781(n+2))`
-/

namespace A317650.P15751027366140093730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096006 (A079781 (n + 2)).toNat

end

end A317650.P15751027366140093730

/-! ## A317650.P9846526998100773254

`A096006(A174554(n+2))`
-/

namespace A317650.P9846526998100773254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096006 (A174554 (n + 2)).toNat

end

end A317650.P9846526998100773254

/-!
# A317651: Sequence related to the Taylor expansion of the Jacobi theta_3 constant.

The programs for A317651, there is no canonical definition to state claims against.
-/

/-! ## A317651.P13356654466986600934

`A082640(A000272(n))-A000670(n)`
-/

namespace A317651.P13356654466986600934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082640 (A000272 n).toNat - A000670 n

end

end A317651.P13356654466986600934

/-!
# A317652: Number of free pure symmetric multifunctions whose leaves are an integer partition of n.

The programs for A317652, there is no canonical definition to state claims against.
-/

/-! ## A317652.P16146532879358429831

`A398582(A193040(n))`
-/

namespace A317652.P16146532879358429831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398582 (A193040 n).toNat

end

end A317652.P16146532879358429831

/-! ## A317652.P14697119409934261599

`A165640(A214167(n+2))`
-/

namespace A317652.P14697119409934261599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A214167 (n + 2)).toNat

end

end A317652.P14697119409934261599

/-! ## A317652.P6574662859571351960

`A279570(n)+A164092(A144507(n))`
-/

namespace A317652.P6574662859571351960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279570 n + A164092 (A144507 n).toNat

end

end A317652.P6574662859571351960

/-!
# A317654: Number of free pure symmetric multifunctions whose leaves are a strongly normal multiset of size n.

The programs for A317654, there is no canonical definition to state claims against.
-/

/-! ## A317654.P2438028883790592094

`A196277(A080253(n))`
-/

namespace A317654.P2438028883790592094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196277 (A080253 n).toNat

end

end A317654.P2438028883790592094

/-!
# A317655: Number of free pure symmetric multifunctions with leaves a multiset whose multiplicities are the integer partition with Heinz number n.

The programs for A317655, there is no canonical definition to state claims against.
-/

/-! ## A317655.P11133662803237026048

`A317656(A181821(n+1))`
-/

namespace A317655.P11133662803237026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317656 (A181821 (n + 1)).toNat

end

end A317655.P11133662803237026048

/-! ## A317655.P12906262189971570452

`A317656(A304660(n+1))`
-/

namespace A317655.P12906262189971570452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317656 (A304660 (n + 1)).toNat

end

end A317655.P12906262189971570452

/-!
# A317656: Number of free pure symmetric multifunctions whose leaves are the integer partition with Heinz number n.

The programs for A317656, there is no canonical definition to state claims against.
-/

/-! ## A317656.P11848595644460966822

`A317655(A181819(n+1))`
-/

namespace A317656.P11848595644460966822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (A181819 (n + 1)).toNat

end

end A317656.P11848595644460966822

/-! ## A317656.P11574545439193816861

`A317655(∏{e}[n+1, A216883(#)])`
-/

namespace A317656.P11574545439193816861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317655 (∏ p ∈ Nat.primeFactors (f1 n), A216883 (Nat.factorization (f1 n) p)).toNat

end

end A317656.P11574545439193816861

/-! ## A317656.P437003891188867313

`A307825(A050354(n+1))+∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A317656.P437003891188867313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307825 (A050354 (n + 1)).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A317656.P437003891188867313

/-! ## A317656.P2278025350877783388

`A262265(A319136(n+1)+A040000(n))`
-/

namespace A317656.P2278025350877783388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (A319136 (n + 1) + A040000 n).toNat

end

end A317656.P2278025350877783388

/-! ## A317656.P5960369223435271410

`A118759(∑{d}[A319136(n+1), A050322(#)])`
-/

namespace A317656.P5960369223435271410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ d ∈ Nat.divisors (f1 n).natAbs, A050322 d).toNat

end

end A317656.P5960369223435271410

/-!
# A317657: Numbers congruent to {15, 75, 95} mod 100.

The programs for A317657, the canonical program `A317657.P11490584197637225505` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317657 has offset 1).

The definition of A317657 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A317657.anchor (n : ℕ) (hn : 1 ≤ n) : A317657 n = (Nat.nth (fun k => k % 100 ∈ ({15, 75, 95} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A317.A317657`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A317657.P11490584197637225505

`a(n-3)+100` with `a(0)=15, a(1)=75, a(2)=95`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317657

/-- `a(n-3)+100` -/
def P11490584197637225505.Spec : Prop :=
  ∀ n, (P11490584197637225505.a n : ℤ) = A317657 (n + 1)

theorem P11490584197637225505.correct : P11490584197637225505.Spec := by
  intro n
  simp only [A317657, Nat.add_sub_cancel]

end A317657

/-! ## A317657.P9098572996298187585

`ogf((15+60x+20x^2+5x^3)/(1-x-x^3+x^4))`
-/

namespace A317657.P9098572996298187585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, 60, 20, 5] [1, -1, 0, -1, 1] n

end

end A317657.P9098572996298187585

namespace A317657

/-- `ogf((15+60x+20x^2+5x^3)/(1-x-x^3+x^4))` -/
def P9098572996298187585.Spec : Prop :=
  ∀ n, P9098572996298187585.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P17314122881829404570

`100*(n+1)/3-80*sin(2*(n+1)*π/3)/(3*sqrt(3))-5`
-/

namespace A317657.P17314122881829404570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((100 * (n + 1) : ℚ) / 3 : ℝ) - 80 * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3) / (3 * Real.sqrt (3 : ℝ)) - 5

end

end A317657.P17314122881829404570

namespace A317657

/-- `100*(n+1)/3-80*sin(2*(n+1)*π/3)/(3*sqrt(3))-5` -/
def P17314122881829404570.Spec : Prop :=
  ∀ n, P17314122881829404570.a n = (A317657 (n + 1) : ℝ)

end A317657

/-! ## A317657.P1054753353815493012

`10*A317633(n+1)+5`
-/

namespace A317657.P1054753353815493012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A317633 (n + 1) + 5

end

end A317657.P1054753353815493012

namespace A317657

/-- `10*A317633(n+1)+5` -/
def P1054753353815493012.Spec : Prop :=
  ∀ n, P1054753353815493012.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P12321527560286535245

`20*A008854(n+2)-5`
-/

namespace A317657.P12321527560286535245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A008854 (n + 2) - 5

end

end A317657.P12321527560286535245

namespace A317657

/-- `20*A008854(n+2)-5` -/
def P12321527560286535245.Spec : Prop :=
  ∀ n, P12321527560286535245.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P1801070879471501899

`A290781(A047205(n+1))`
-/

namespace A317657.P1801070879471501899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290781 (A047205 (n + 1)).toNat

end

end A317657.P1801070879471501899

namespace A317657

/-- `A290781(A047205(n+1))` -/
def P1801070879471501899.Spec : Prop :=
  ∀ n, P1801070879471501899.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P12613494083589204721

`∑[A274535(Δ[A136290(n)])]`
-/

namespace A317657.P12613494083589204721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317657.P12613494083589204721

namespace A317657

/-- `∑[A274535(Δ[A136290(n)])]` -/
def P12613494083589204721.Spec : Prop :=
  ∀ n, P12613494083589204721.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P18204802641841462340

`∑[A301707(Δ[A298024(n)])]`
-/

namespace A317657.P18204802641841462340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301707 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317657.P18204802641841462340

namespace A317657

/-- `∑[A301707(Δ[A298024(n)])]` -/
def P18204802641841462340.Spec : Prop :=
  ∀ n, P18204802641841462340.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P8935305467245309009

`A290781(A008854(n+2)-1)`
-/

namespace A317657.P8935305467245309009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290781 (A008854 (n + 2) - 1).toNat

end

end A317657.P8935305467245309009

namespace A317657

/-- `A290781(A008854(n+2)-1)` -/
def P8935305467245309009.Spec : Prop :=
  ∀ n, P8935305467245309009.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P4584560377690099209

`A017329(A317633(n+1))`
-/

namespace A317657.P4584560377690099209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (A317633 (n + 1)).toNat

end

end A317657.P4584560377690099209

namespace A317657

/-- `A017329(A317633(n+1))` -/
def P4584560377690099209.Spec : Prop :=
  ∀ n, P4584560377690099209.a n = A317657 (n + 1)

end A317657

/-! ## A317657.P1261188506346569653

`A017353(∪[A090771(n+1), A017353(n)])-2`
-/

namespace A317657.P1261188506346569653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) - 2

end

end A317657.P1261188506346569653

namespace A317657

/-- `A017353(∪[A090771(n+1), A017353(n)])-2` -/
def P1261188506346569653.Spec : Prop :=
  ∀ n, P1261188506346569653.a n = A317657 (n + 1)

end A317657

/-!
# A317658: Number of positions in the n-th free pure symmetric multifunction (with empty expressions allowed) with one atom.

The programs for A317658, there is no canonical definition to state claims against.
-/

/-! ## A317658.P2406377536908448612

`A277615(n+1)%15`
-/

namespace A317658.P2406377536908448612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277615 (n + 1)) 15

end

end A317658.P2406377536908448612

/-! ## A317658.P9044399946868301431

`A277615(gcd((n+1)*∑{e}[n+1, #], (n+1)*Δ[n^3]))`
-/

namespace A317658.P9044399946868301431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (Int.gcd (((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℤ) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))))

end

end A317658.P9044399946868301431

/-! ## A317658.P17065018313017430577

`A034837(A277615(n+1))`
-/

namespace A317658.P17065018313017430577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034837 (A277615 (n + 1)).toNat

end

end A317658.P17065018313017430577

/-! ## A317658.P4862998073275342593

`A277615(A118759(n+1))`
-/

namespace A317658.P4862998073275342593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (A118759 (n + 1)).toNat

end

end A317658.P4862998073275342593

/-! ## A317658.P12488066435873540594

`A277615(A262681(n)+n)`
-/

namespace A317658.P12488066435873540594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (A262681 n + (n : ℤ)).toNat

end

end A317658.P12488066435873540594

/-! ## A317658.P13629426369163558096

`A005496(A277615(n+1)-1)`
-/

namespace A317658.P13629426369163558096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A277615 (n + 1) - 1).toNat

end

end A317658.P13629426369163558096

/-! ## A317658.P15089881873796737399

`A077168(A277615(n+1)-1)`
-/

namespace A317658.P15089881873796737399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A277615 (n + 1) - 1).toNat

end

end A317658.P15089881873796737399

/-! ## A317658.P2995845973634092571

`filter[A277615(n+1), A102609(#)]`
-/

namespace A317658.P2995845973634092571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A317658.P2995845973634092571

/-! ## A317658.P13965861353083706402

`filter[A277615(n+1), A161996(#)]`
-/

namespace A317658.P13965861353083706402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A161996 (f1 j).toNat = 1) n)

end

end A317658.P13965861353083706402

/-! ## A317658.P1125362931773957516

`filter[A277615(n+1), A167850(#)]`
-/

namespace A317658.P1125362931773957516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A317658.P1125362931773957516

/-!
# A317659: Regular triangle where T(n,k) is the number of distinct free pure symmetric multifunctions (with empty expressions allowed) with one atom, n positions, and k leaves.

The programs for A317659, there is no canonical definition to state claims against.
-/

/-! ## A317659.P5988127377715444124

`A059045(C(A215703(n+2), n+1)+n)`
-/

namespace A317659.P5988127377715444124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (Nat.choose (A215703 (n + 2)).toNat (n + 1) + n)

end

end A317659.P5988127377715444124

/-! ## A317659.P12680998479749378164

`A059045(A000007(A032553(n))+n)`
-/

namespace A317659.P12680998479749378164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (A000007 (A032553 n).toNat + (n : ℤ)).toNat

end

end A317659.P12680998479749378164

/-! ## A317659.P4929265551811599886

`A059045(n)+A000007(A173173(n))`
-/

namespace A317659.P4929265551811599886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 n + A000007 (A173173 n).toNat

end

end A317659.P4929265551811599886

/-! ## A317659.P4106141629603424000

`A353680(A016755(n))+A059045(n)`
-/

namespace A317659.P4106141629603424000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353680 (A016755 n).toNat + A059045 n

end

end A317659.P4106141629603424000

/-! ## A317659.P4042563183048845547

`C(A059045(n), A001222(A055875(n)))`
-/

namespace A317659.P4042563183048845547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059045 n).toNat (A001222 (A055875 n).toNat).toNat

end

end A317659.P4042563183048845547

/-!
# A317660: Denominator of the coefficient of z^(-n) of asymptotic expansions related to hyperfactorial function H(z).

The programs for A317660, there is no canonical definition to state claims against.
-/

/-! ## A317660.P1268673299723028292

`C(ceil(7^(n/5)), ∏{p}[n+1, #])!`
-/

namespace A317660.P1268673299723028292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose ⌈(7 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉.toNat (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A317660.P1268673299723028292

/-! ## A317660.P16711858764068489317

`∑{e}[a(n-2)-10^n, #]!` with `a(0)=-3, a(1)=0`
-/

namespace A317660.P16711858764068489317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3, 0] fun n f1 =>
  f1 (n - 2) - (10 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A317660.P16711858764068489317

/-!
# A317662: G.f.: Sum_{n>=0} ( (1+x)^n - 1 )^n * 2^n / (3 - 2*(1+x)^n)^(n+1).

The programs for A317662, there is no canonical definition to state claims against.
-/

/-! ## A317662.P15836357926059157404

`lcm(A151569(A260041(n)), A260058(n))`
-/

namespace A317662.P15836357926059157404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A151569 (A260041 n).toNat) (A260058 n)

end

end A317662.P15836357926059157404

/-!
# A317665: Expansion of 1/Sum_{k>=0} x^(k^2).

The programs for A317665, there is no canonical definition to state claims against.
-/

/-! ## A317665.P12719819712367240786

`∑{#}[n, (-1)^#*A337165(C(n+1, 2)+#)]`
-/

namespace A317665.P12719819712367240786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A337165 (Nat.choose (n + 1) 2 + k)

end

end A317665.P12719819712367240786

/-! ## A317665.P15078969596609353947

`A339418(n)-A339419(n)`
-/

namespace A317665.P15078969596609353947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339418 n - A339419 n

end

end A317665.P15078969596609353947

/-! ## A317665.P14086088369798484260

`2*A339418(n)-A006456(n)`
-/

namespace A317665.P14086088369798484260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339418 n - A006456 n

end

end A317665.P14086088369798484260

/-! ## A317665.P13607172192262121627

`A006456(n)-2*A339419(n)`
-/

namespace A317665.P13607172192262121627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 n - 2 * A339419 n

end

end A317665.P13607172192262121627

/-! ## A317665.P8310837318023623886

`∑[A303909(n)]-2*A339419(n)`
-/

namespace A317665.P8310837318023623886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A339419 n

end

end A317665.P8310837318023623886

/-! ## A317665.P8891612543380619541

`A006456(n)-A339419(n)-A339419(A023443(n+1))`
-/

namespace A317665.P8891612543380619541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 n - A339419 n - A339419 (A023443 (n + 1)).toNat

end

end A317665.P8891612543380619541

/-!
# A317666: G.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - (1-x)^(2*n) )^n = 1.

The programs for A317666, there is no canonical definition to state claims against.
-/

/-! ## A317666.P8966161036745038943

`ceil(A146563(n+2)/55)`
-/

namespace A317666.P8966161036745038943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A146563 (n + 2) : ℚ) / 55⌉

end

end A317666.P8966161036745038943

/-!
# A317667: G.f. A(x) satisfies: Sum_{n>=0} ( 1/A(x) - (1-x)^(3*n) )^n = 1.

The programs for A317667, there is no canonical definition to state claims against.
-/

/-! ## A317667.P1819558210336478714

`A000720(∑[A377743(n)]+1)`
-/

namespace A317667.P1819558210336478714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A317667.P1819558210336478714

/-!
# A317669: Number of equivalence classes of binary words of length n for the subword 10110.

The programs for A317669, the canonical program `A317669.P4417955641469240034` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317669 has offset 0).

The definition of A317669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A317669.P14093663838654996602

`ogf((1-x^3)/(1-x-x^3+x^4-x^5))`
-/

namespace A317669.P14093663838654996602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -1, 0, -1, 1, -1] n

end

end A317669.P14093663838654996602

namespace A317669

/-- `ogf((1-x^3)/(1-x-x^3+x^4-x^5))` -/
def P14093663838654996602.Spec : Prop :=
  ∀ n, P14093663838654996602.a n = A317669 n

end A317669

/-! ## A317669.P4417955641469240034

`a(n-1)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A317669

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-5)` -/
def P4417955641469240034.Spec : Prop :=
  ∀ n, P4417955641469240034.a n = A317669 n

theorem P4417955641469240034.correct : P4417955641469240034.Spec := by
  intro n
  simp only [A317669]

end A317669

/-! ## A317669.P7126035427468799979

`A000267(floor(A167751(n)/3))`
-/

namespace A317669.P7126035427468799979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 ⌊(A167751 n : ℚ) / 3⌋.toNat

end

end A317669.P7126035427468799979

namespace A317669

/-- `A000267(floor(A167751(n)/3))` -/
def P7126035427468799979.Spec : Prop :=
  ∀ n, P7126035427468799979.a n = A317669 n

end A317669

/-! ## A317669.P4350083417904795925

`floor(A000322(n)/A000267(A001949(n)))`
-/

namespace A317669.P4350083417904795925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000322 n : ℚ) / (A000267 (A001949 n).toNat : ℚ)⌋

end

end A317669.P4350083417904795925

namespace A317669

/-- `floor(A000322(n)/A000267(A001949(n)))` -/
def P4350083417904795925.Spec : Prop :=
  ∀ n, P4350083417904795925.a n = A317669 n

end A317669

/-! ## A317669.P10771133063913121917

`or(A186719(n+1), A257639(A176503(n+1)))`
-/

namespace A317669.P10771133063913121917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A186719 (n + 1)) (A257639 (A176503 (n + 1)).toNat)

end

end A317669.P10771133063913121917

namespace A317669

/-- `or(A186719(n+1), A257639(A176503(n+1)))` -/
def P10771133063913121917.Spec : Prop :=
  ∀ n, P10771133063913121917.a n = A317669 n

end A317669

/-!
# A317670: Numbers k such that sigma_0(k-1) + sigma_0(k) + sigma_0(k+1) = 10, where sigma_0(k) = A000005(k).

The programs for A317670, there is no canonical definition to state claims against.
-/

/-! ## A317670.P1648273747855935018

`A350675(n+1)+1`
-/

namespace A317670.P1648273747855935018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350675 (n + 1) + 1

end

end A317670.P1648273747855935018

/-! ## A317670.P14152354848331658548

`A020725(A350675(n+1))`
-/

namespace A317670.P14152354848331658548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A350675 (n + 1)).toNat

end

end A317670.P14152354848331658548

/-! ## A317670.P12041278573254210969

`eq[A040020(n), A307120(n+1)]+1`
-/

namespace A317670.P12041278573254210969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317670.P12041278573254210969

/-! ## A317670.P1418849893684703022

`eq[A307120(n+1), A329503(n)]+1`
-/

namespace A317670.P1418849893684703022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317670.P1418849893684703022

/-! ## A317670.P9794060149393591310

`eq[A307120(n+1), A329517(n)]+1`
-/

namespace A317670.P9794060149393591310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A317670.P9794060149393591310

/-! ## A317670.P8588872979081035276

`eq[9, A092338(A028310(n))+A000005(n+1)]`
-/

namespace A317670.P8588872979081035276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A028310 n).toNat + A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A317670.P8588872979081035276

/-! ## A317670.P782809967224005195

`eq[5, A289207(A274010(n+2)+A032741(n))]+1`
-/

namespace A317670.P782809967224005195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A274010 (n + 2) + A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317670.P782809967224005195

/-! ## A317670.P7555069260015466236

`eq[8, A079501(A274010(n+2)+A032741(n))]+1`
-/

namespace A317670.P7555069260015466236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079501 (A274010 (n + 2) + A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317670.P7555069260015466236

/-! ## A317670.P4076908204362709128

`eq[5, A289207(A092405(n+1)+A032741(n)-2)]+1`
-/

namespace A317670.P4076908204362709128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A092405 (n + 1) + (A032741 n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A317670.P4076908204362709128

/-!
# A317673: Moebius transform of A129502.

The programs for A317673, the canonical program `A317673.P16095288745684130217` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A317673 has offset 1).

The definition of A317673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A317673.P3759761552921038140

`(val(n+1, 2)+1)*A008683((n+1)/2^val(n+1, 2))`
-/

namespace A317673.P3759761552921038140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A317673.P3759761552921038140

namespace A317673

/-- `(val(n+1, 2)+1)*A008683((n+1)/2^val(n+1, 2))` -/
def P3759761552921038140.Spec : Prop :=
  ∀ n, P3759761552921038140.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P15459944650971351448

`(val(n+1, 2)+1)*A092673((n+1)/2^val(n+1, 2))`
-/

namespace A317673.P15459944650971351448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A317673.P15459944650971351448

namespace A317673

/-- `(val(n+1, 2)+1)*A092673((n+1)/2^val(n+1, 2))` -/
def P15459944650971351448.Spec : Prop :=
  ∀ n, P15459944650971351448.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P4682459920539945518

`(val(n+1, 2)+1)*A092673((n+1)/(or(n, n+1)-n))`
-/

namespace A317673.P4682459920539945518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A317673.P4682459920539945518

namespace A317673

/-- `(val(n+1, 2)+1)*A092673((n+1)/(or(n, n+1)-n))` -/
def P4682459920539945518.Spec : Prop :=
  ∀ n, P4682459920539945518.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P11561797100618915187

`(val(n+1, 2)+1)*A092673((n+1)/xor(n, or(n, n+1)))`
-/

namespace A317673.P11561797100618915187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A317673.P11561797100618915187

namespace A317673

/-- `(val(n+1, 2)+1)*A092673((n+1)/xor(n, or(n, n+1)))` -/
def P11561797100618915187.Spec : Prop :=
  ∀ n, P11561797100618915187.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P6299042913815382363

`(val(n+1, 2)+1)*A092673((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A317673.P6299042913815382363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A317673.P6299042913815382363

namespace A317673

/-- `(val(n+1, 2)+1)*A092673((n+1)/ceil(xor(n, n+1)/2))` -/
def P6299042913815382363.Spec : Prop :=
  ∀ n, P6299042913815382363.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P10985797820441729207

`(val(n+1, 2)+1)*A092673(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A317673.P10985797820441729207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A092673 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A317673.P10985797820441729207

namespace A317673

/-- `(val(n+1, 2)+1)*A092673(2*(n+1)/(xor(n, n+1)+1))` -/
def P10985797820441729207.Spec : Prop :=
  ∀ n, P10985797820441729207.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P16095288745684130217

`A001511(n+1)*A209635(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A317673

/-- `A001511(n+1)*A209635(n+1)` -/
def P16095288745684130217.Spec : Prop :=
  ∀ n, P16095288745684130217.a n = A317673 (n + 1)

theorem P16095288745684130217.correct : P16095288745684130217.Spec := by
  intro n
  simp only [A317673, Nat.add_sub_cancel]

end A317673

/-! ## A317673.P2249390326277910575

`A065704(n+1)*A209635(n+1)`
-/

namespace A317673.P2249390326277910575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (n + 1) * A209635 (n + 1)

end

end A317673.P2249390326277910575

namespace A317673

/-- `A065704(n+1)*A209635(n+1)` -/
def P2249390326277910575.Spec : Prop :=
  ∀ n, P2249390326277910575.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P12104862714264927531

`A209635(n+1)*A375040(n+1)`
-/

namespace A317673.P12104862714264927531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n + 1) * A375040 (n + 1)

end

end A317673.P12104862714264927531

namespace A317673

/-- `A209635(n+1)*A375040(n+1)` -/
def P12104862714264927531.Spec : Prop :=
  ∀ n, P12104862714264927531.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P5628349952059727996

`∑{d}[n+1, A008683(#)*A129502((n+1)/#)]`
-/

namespace A317673.P5628349952059727996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A129502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317673.P5628349952059727996

namespace A317673

/-- `∑{d}[n+1, A008683(#)*A129502((n+1)/#)]` -/
def P5628349952059727996.Spec : Prop :=
  ∀ n, P5628349952059727996.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P2619500876165394088

`∑{d}[n+1, A087003(#)*A104117((n+1)/#)]`
-/

namespace A317673.P2619500876165394088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A104117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317673.P2619500876165394088

namespace A317673

/-- `∑{d}[n+1, A087003(#)*A104117((n+1)/#)]` -/
def P2619500876165394088.Spec : Prop :=
  ∀ n, P2619500876165394088.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P13591980548686986616

`∑{d}[n+1, A115364(#)*A327276((n+1)/#)]`
-/

namespace A317673.P13591980548686986616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115364 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317673.P13591980548686986616

namespace A317673

/-- `∑{d}[n+1, A115364(#)*A327276((n+1)/#)]` -/
def P13591980548686986616.Spec : Prop :=
  ∀ n, P13591980548686986616.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P15980792471654034261

`∑{d}[n+1, A036987(#-1)*A209635((n+1)/#)]`
-/

namespace A317673.P15980792471654034261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A317673.P15980792471654034261

namespace A317673

/-- `∑{d}[n+1, A036987(#-1)*A209635((n+1)/#)]` -/
def P15980792471654034261.Spec : Prop :=
  ∀ n, P15980792471654034261.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P4273756062752210471

`A008683((n+1)/and(n+1, -(n+1)))*A001511(n+1)`
-/

namespace A317673.P4273756062752210471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat * A001511 (n + 1)

end

end A317673.P4273756062752210471

namespace A317673

/-- `A008683((n+1)/and(n+1, -(n+1)))*A001511(n+1)` -/
def P4273756062752210471.Spec : Prop :=
  ∀ n, P4273756062752210471.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P2295398213050115084

`A008683(2*(n+1)/(xor(n, n+1)+1))*A001511(n+1)`
-/

namespace A317673.P2295398213050115084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat * A001511 (n + 1)

end

end A317673.P2295398213050115084

namespace A317673

/-- `A008683(2*(n+1)/(xor(n, n+1)+1))*A001511(n+1)` -/
def P2295398213050115084.Spec : Prop :=
  ∀ n, P2295398213050115084.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P9400929620001505705

`(val(n+1, 2)+1)*A092673((n+1)/A000010(xor(n, n+1)+1))`
-/

namespace A317673.P9400929620001505705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))).toNat

end

end A317673.P9400929620001505705

namespace A317673

/-- `(val(n+1, 2)+1)*A092673((n+1)/A000010(xor(n, n+1)+1))` -/
def P9400929620001505705.Spec : Prop :=
  ∀ n, P9400929620001505705.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P5768568709657116144

`A001222(xor(n, n+1)+1)*A092673((n+1)/(or(n, n+1)-n))`
-/

namespace A317673.P5768568709657116144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor n (n + 1) + 1) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A317673.P5768568709657116144

namespace A317673

/-- `A001222(xor(n, n+1)+1)*A092673((n+1)/(or(n, n+1)-n))` -/
def P5768568709657116144.Spec : Prop :=
  ∀ n, P5768568709657116144.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P5979410418648152021

`A000005(and(n+1, -(n+1)))*A092673((n+1)/(or(n, n+1)-n))`
-/

namespace A317673.P5979410418648152021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A317673.P5979410418648152021

namespace A317673

/-- `A000005(and(n+1, -(n+1)))*A092673((n+1)/(or(n, n+1)-n))` -/
def P5979410418648152021.Spec : Prop :=
  ∀ n, P5979410418648152021.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P12736160611405045679

`A000005(n+1-and(n, n+1))*A092673((n+1)/(or(n, n+1)-n))`
-/

namespace A317673.P12736160611405045679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1 - Nat.land n (n + 1)) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A317673.P12736160611405045679

namespace A317673

/-- `A000005(n+1-and(n, n+1))*A092673((n+1)/(or(n, n+1)-n))` -/
def P12736160611405045679.Spec : Prop :=
  ∀ n, P12736160611405045679.a n = A317673 (n + 1)

end A317673

/-! ## A317673.P14225264858103502544

`(A001222(or(n, n+1)-n)+1)*A092673((n+1)/(or(n, n+1)-n))`
-/

namespace A317673.P14225264858103502544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (Nat.lor n (n + 1) - n) + 1) * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A317673.P14225264858103502544

namespace A317673

/-- `(A001222(or(n, n+1)-n)+1)*A092673((n+1)/(or(n, n+1)-n))` -/
def P14225264858103502544.Spec : Prop :=
  ∀ n, P14225264858103502544.a n = A317673 (n + 1)

end A317673

/-!
# A317675: Coefficients of 3-adic expansion of exp(3).

The programs for A317675, there is no canonical definition to state claims against.
-/

/-! ## A317675.P9051729290768178297

`Δ[A309900(n)]/3^n`
-/

namespace A317675.P9051729290768178297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309900 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (3 ^ n : ℚ)

end

end A317675.P9051729290768178297

/-! ## A317675.P17457037936177887035

`and(Δ[A309900(n)], A080586(n))`
-/

namespace A317675.P17457037936177887035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A080586 n)

end

end A317675.P17457037936177887035

/-! ## A317675.P4280893492311207776

`abs(Δ[A309900(n)]/A000244(n))`
-/

namespace A317675.P4280893492311207776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309900 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A000244 n : ℚ)|

end

end A317675.P4280893492311207776

/-! ## A317675.P17064359816755720861

`ceil(Δ[A309900(n)]/A014211(n))`
-/

namespace A317675.P17064359816755720861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A014211 n : ℚ)⌉

end

end A317675.P17064359816755720861

/-! ## A317675.P6827373168328737058

`round(Δ[A309900(n)]/A258439(2*n))`
-/

namespace A317675.P6827373168328737058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A258439 (2 * n) : ℚ))

end

end A317675.P6827373168328737058

/-!
# A317677: Fixed point of a shifted hypertree transform.

The programs for A317677, there is no canonical definition to state claims against.
-/

/-! ## A317677.P13427928020162063637

`A243468(n)+A025461(A007785(n))`
-/

namespace A317677.P13427928020162063637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243468 n + A025461 (A007785 n).toNat

end

end A317677.P13427928020162063637

/-!
# A317679: Sets of n distinct primes q_i in ascending order, written as a triangle, providing the fair compensation amounts corresponding to the asset counts p_i of A317678.

The programs for A317679, there is no canonical definition to state claims against.
-/

/-! ## A317679.P10046752474912197346

`A002034(A160799(n+1)+A001147(n))`
-/

namespace A317679.P10046752474912197346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A160799 (n + 1) + A001147 n).toNat

end

end A317679.P10046752474912197346

/-! ## A317679.P9024284143229577410

`or(A004736(A251213(n+1)), A113225(n))`
-/

namespace A317679.P9024284143229577410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004736 (A251213 (n + 1)).toNat) (A113225 n)

end

end A317679.P9024284143229577410

/-!
# A317681: a(n) = smallest m such that sigma(m) = n*m/2.

The programs for A317681, there is no canonical definition to state claims against.
-/

/-! ## A317681.P10527248519374621654

`∪[A007539(n+1), A088912(n+1)]`
-/

namespace A317681.P10527248519374621654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A317681.P10527248519374621654

/-! ## A317681.P656016768035376391

`lcm(n+1, A226476(A251572(n)))`
-/

namespace A317681.P656016768035376391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A226476 (A251572 n).toNat)

end

end A317681.P656016768035376391

/-! ## A317681.P2916968478543163456

`A356191((n+1)!)`
-/

namespace A317681.P2916968478543163456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (Nat.factorial (n + 1))

end

end A317681.P2916968478543163456

/-!
# A317682: Number of partitions of n into a prime and two distinct squares.

The programs for A317682, there is no canonical definition to state claims against.
-/

/-! ## A317682.P10024583423766215420

`A331136(round(acot(n)+n))-A317685(n)`
-/

namespace A317682.P10024583423766215420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331136 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A317685 n

end

end A317682.P10024583423766215420

/-! ## A317682.P8354785220774688757

`A331136(round(sqrt(n²+1)))-A317685(n)`
-/

namespace A317682.P8354785220774688757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331136 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A317685 n

end

end A317682.P8354785220774688757

/-! ## A317682.P13007272531506688936

`A317684(n)-A046922(A028310(n))`
-/

namespace A317682.P13007272531506688936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 n - A046922 (A028310 n).toNat

end

end A317682.P13007272531506688936

/-! ## A317682.P7107949777638920769

`abs(A331136(A028310(n))-A317685(n))`
-/

namespace A317682.P7107949777638920769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331136 (A028310 n).toNat - A317685 n|

end

end A317682.P7107949777638920769

/-! ## A317682.P12651689094303971242

`A317684(n)-A046922(gcd(n, A008458(n)))`
-/

namespace A317682.P12651689094303971242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 n - A046922 (Int.gcd (n : ℤ) (A008458 n))

end

end A317682.P12651689094303971242

/-! ## A317682.P9479317806195101528

`A317683(n)+A064272(A233583(n+1))`
-/

namespace A317682.P9479317806195101528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317683 n + A064272 (A233583 (n + 1)).toNat

end

end A317682.P9479317806195101528

/-!
# A317683: Number of partitions of n into a prime and two distinct positive squares.

The programs for A317683, there is no canonical definition to state claims against.
-/

/-! ## A317683.P11829839300031075890

`A317682(n)-A064272(A233583(n+1))`
-/

namespace A317683.P11829839300031075890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 n - A064272 (A233583 (n + 1)).toNat

end

end A317683.P11829839300031075890

/-! ## A317683.P16616516298646880322

`A080799(n+1)%A055642(A139441(n+1))`
-/

namespace A317683.P16616516298646880322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080799 (n + 1)) (A055642 (A139441 (n + 1)).toNat)

end

end A317683.P16616516298646880322

/-! ## A317683.P9929005747176239278

`A271955(2*n+1)%A006530(A078495(n))`
-/

namespace A317683.P9929005747176239278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271955 (2 * n + 1)) (A006530 (A078495 n).toNat)

end

end A317683.P9929005747176239278

/-! ## A317683.P16875146830316921593

`A247389(n+2)%A104324(A125177(n))`
-/

namespace A317683.P16875146830316921593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247389 (n + 2)) (A104324 (A125177 n).toNat)

end

end A317683.P16875146830316921593

/-! ## A317683.P13508775882118323745

`A319401(A000288(n)-A251705(n))%A105223(n+1)`
-/

namespace A317683.P13508775882118323745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319401 (A000288 n - A251705 n).toNat) (A105223 (n + 1))

end

end A317683.P13508775882118323745

/-!
# A317684: Number of partitions of n into a prime and two squares.

The programs for A317684, there is no canonical definition to state claims against.
-/

/-! ## A317684.P8801671187221346534

`A317685(n)+A002471(A028310(n))`
-/

namespace A317684.P8801671187221346534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 n + A002471 (A028310 n).toNat

end

end A317684.P8801671187221346534

/-! ## A317684.P7764607687887382055

`A317682(n)+A046922(A028310(n))`
-/

namespace A317684.P7764607687887382055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 n + A046922 (A028310 n).toNat

end

end A317684.P7764607687887382055

/-! ## A317684.P3170531436293395149

`A317682(n)+A046922(A000007(n)+n)`
-/

namespace A317684.P3170531436293395149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317682 n + A046922 (A000007 n + (n : ℤ)).toNat

end

end A317684.P3170531436293395149

/-! ## A317684.P6123363434207748842

`A317685(n)+A002471(A123108(2*n))`
-/

namespace A317684.P6123363434207748842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 n + A002471 (A123108 (2 * n)).toNat

end

end A317684.P6123363434207748842

/-! ## A317684.P16583520058808001215

`A317685(n)+A002471(A137735(n²))`
-/

namespace A317684.P16583520058808001215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 n + A002471 (A137735 (n ^ 2)).toNat

end

end A317684.P16583520058808001215

/-!
# A317685: Number of partitions of n into a prime and two positive squares.

The programs for A317685, there is no canonical definition to state claims against.
-/

/-! ## A317685.P18222881411614238573

`A331136(round(acot(n)+n))-A317682(n)`
-/

namespace A317685.P18222881411614238573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331136 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - A317682 n

end

end A317685.P18222881411614238573

/-! ## A317685.P663184938626846738

`A331136(round(sqrt(n²+1)))-A317682(n)`
-/

namespace A317685.P663184938626846738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331136 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A317682 n

end

end A317685.P663184938626846738

/-! ## A317685.P18170146971211213513

`A317684(n)-A002471(A028310(n))`
-/

namespace A317685.P18170146971211213513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 n - A002471 (A028310 n).toNat

end

end A317685.P18170146971211213513

/-! ## A317685.P14400745480290883621

`abs(A331136(A028310(n))-A317682(n))`
-/

namespace A317685.P14400745480290883621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331136 (A028310 n).toNat - A317682 n|

end

end A317685.P14400745480290883621

/-! ## A317685.P3176367111134385778

`A317684(n)-A002471(A123108(2*n))`
-/

namespace A317685.P3176367111134385778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 n - A002471 (A123108 (2 * n)).toNat

end

end A317685.P3176367111134385778

/-! ## A317685.P9438089351301082911

`A317684(n)-A002471(A137735(n²))`
-/

namespace A317685.P9438089351301082911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 n - A002471 (A137735 (n ^ 2)).toNat

end

end A317685.P9438089351301082911

/-!
# A317686: a(1) = a(2) = 1; for n >= 3, a(n) = a(t(n)) + a(n-t(n)) where t = A063882.

The programs for A317686, there is no canonical definition to state claims against.
-/

/-! ## A317686.P13112201614558935520

`A093878(n+1)+val(A146474(n+1), 7)`
-/

namespace A317686.P13112201614558935520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093878 (n + 1) + (SequenceMachineLib.valuation (A146474 (n + 1)).toNat 7 : ℤ)

end

end A317686.P13112201614558935520

/-! ## A317686.P13383012945263946725

`A286052(A147433(n+1))+A093878(n+1)`
-/

namespace A317686.P13383012945263946725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (A147433 (n + 1)).toNat + A093878 (n + 1)

end

end A317686.P13383012945263946725

/-! ## A317686.P3908250431506947885

`A063435(A311250(n))+A005379(n)`
-/

namespace A317686.P3908250431506947885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 (A311250 n).toNat + A005379 n

end

end A317686.P3908250431506947885

/-! ## A317686.P9943873329604782438

`∑[A001842(A252398(A028787(n+1)))]`
-/

namespace A317686.P9943873329604782438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A252398 (A028787 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A317686.P9943873329604782438

/-!
# A317688: Absolute primes that are not repunits: primes where the number resulting from any permutation of the digits is also prime, excluding repunit primes.

The programs for A317688, there is no canonical definition to state claims against.
-/

/-! ## A317688.P3975746457683971757

`A003459(comp[∑[5*n²]])`
-/

namespace A317688.P3975746457683971757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A317688.P3975746457683971757

/-! ## A317688.P16620282069501626942

`p?[A003459(n+1)+char[4]]`
-/

namespace A317688.P16620282069501626942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A317688.P16620282069501626942

/-! ## A317688.P4588366364030554997

`A068652(A132329(n+1))`
-/

namespace A317688.P4588366364030554997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (A132329 (n + 1)).toNat

end

end A317688.P4588366364030554997

/-! ## A317688.P15527118987451828420

`record[A106612(A003459(n+1))]`
-/

namespace A317688.P15527118987451828420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A003459 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317688.P15527118987451828420

/-! ## A317688.P3542178131801761158

`filter[A003459(n+1), A145568(#)]`
-/

namespace A317688.P3542178131801761158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A317688.P3542178131801761158

/-!
# A317691: Number of nXn 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317691, there is no canonical definition to state claims against.
-/

/-! ## A317691.P14274461006325590384

`A317697(∑[4*n]+1)`
-/

namespace A317691.P14274461006325590384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317691.P14274461006325590384

/-! ## A317691.P18137377273635718591

`A317697(A001844(n))+A056965(n)`
-/

namespace A317691.P18137377273635718591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A001844 n).toNat + A056965 n

end

end A317691.P18137377273635718591

/-! ## A317691.P16802193674806305897

`A317697(A001844(n))%A258398(n)`
-/

namespace A317691.P16802193674806305897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317697 (A001844 n).toNat) (A258398 (n + 10))

end

end A317691.P16802193674806305897

/-! ## A317691.P9082721448444945787

`lcm(A131561(n), A317697(A001844(n)))`
-/

namespace A317691.P9082721448444945787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A317697 (A001844 n).toNat)

end

end A317691.P9082721448444945787

/-! ## A317691.P5090546954547920882

`or(A000007(n), A317697(A001844(n)))`
-/

namespace A317691.P5090546954547920882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A317697 (A001844 n).toNat)

end

end A317691.P5090546954547920882

/-!
# A317692: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317692, there is no canonical definition to state claims against.
-/

/-! ## A317692.P18032552589297984110

`A317697(∑[n+2]+4)`
-/

namespace A317692.P18032552589297984110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A317692.P18032552589297984110

/-! ## A317692.P4385064641062375941

`lcm((-1)^n, A317697(A167614(n+1)))`
-/

namespace A317692.P4385064641062375941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A317697 (A167614 (n + 1)).toNat)

end

end A317692.P4385064641062375941

/-! ## A317692.P15282667401146541996

`A317697(A167614(n+1))+A025466(n)`
-/

namespace A317692.P15282667401146541996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A167614 (n + 1)).toNat + A025466 n

end

end A317692.P15282667401146541996

/-! ## A317692.P16545566595092017180

`A317697(A167614(n+1))+A185037(n)`
-/

namespace A317692.P16545566595092017180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A167614 (n + 1)).toNat + A185037 n

end

end A317692.P16545566595092017180

/-! ## A317692.P8086345094426566102

`A317697(A167614(n+1))+A185284(n)`
-/

namespace A317692.P8086345094426566102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A167614 (n + 1)).toNat + A185284 n

end

end A317692.P8086345094426566102

/-!
# A317693: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317693, there is no canonical definition to state claims against.
-/

/-! ## A317693.P5531773018162246990

`A317697(A374004(n+1))`
-/

namespace A317693.P5531773018162246990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A374004 (n + 1)).toNat

end

end A317693.P5531773018162246990

/-! ## A317693.P14645630771560868598

`A317697(A052905(n)+9)`
-/

namespace A317693.P14645630771560868598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A052905 n + 9).toNat

end

end A317693.P14645630771560868598

/-! ## A317693.P15590177035679117001

`A317697(A167614(n+2)+1)`
-/

namespace A317693.P15590177035679117001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A167614 (n + 2) + 1).toNat

end

end A317693.P15590177035679117001

/-! ## A317693.P11027894472033283341

`A317697(Δ[A264443(n)-n²])`
-/

namespace A317693.P11027894472033283341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (f1 (n + 1) - f1 n).toNat

end

end A317693.P11027894472033283341

/-! ## A317693.P15704632214563583693

`A317697(A167499(n)+A005843(n+2))`
-/

namespace A317693.P15704632214563583693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A167499 n + A005843 (n + 2)).toNat

end

end A317693.P15704632214563583693

/-!
# A317694: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317694, there is no canonical definition to state claims against.
-/

/-! ## A317694.P6376825354918603404

`A317697(A374005(n+1))`
-/

namespace A317694.P6376825354918603404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A374005 (n + 1)).toNat

end

end A317694.P6376825354918603404

/-! ## A317694.P15183998702936241823

`A317697(A167499(n+3))`
-/

namespace A317694.P15183998702936241823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A167499 (n + 3)).toNat

end

end A317694.P15183998702936241823

/-! ## A317694.P18169958436728914714

`A317697(eq[6, A131818(n+1)])`
-/

namespace A317694.P18169958436728914714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317694.P18169958436728914714

/-! ## A317694.P15467422436686282307

`A317697(eq[5, A002260(n+1)]+1)`
-/

namespace A317694.P15467422436686282307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A317694.P15467422436686282307

/-! ## A317694.P15877335120888882019

`A317697(Δ[A264443(n)])`
-/

namespace A317694.P15877335120888882019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (f1 (n + 1) - f1 n).toNat

end

end A317694.P15877335120888882019

/-!
# A317695: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317695, there is no canonical definition to state claims against.
-/

/-! ## A317695.P9554300871341638692

`A317697(A374007(n+1))`
-/

namespace A317695.P9554300871341638692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A374007 (n + 1)).toNat

end

end A317695.P9554300871341638692

/-! ## A317695.P8824759515777934756

`A317697(eq[7, A131818(n+1)])`
-/

namespace A317695.P8824759515777934756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317695.P8824759515777934756

/-! ## A317695.P4969050738500319839

`A317697(eq[3, A219347(n)])`
-/

namespace A317695.P4969050738500319839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317695.P4969050738500319839

/-! ## A317695.P5113917081126636011

`A317697(eq[5, A193592(n)])`
-/

namespace A317695.P5113917081126636011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317695.P5113917081126636011

/-! ## A317695.P7273588213065552090

`A317697(eq[8, A258709(n)])`
-/

namespace A317695.P7273588213065552090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317695.P7273588213065552090

/-!
# A317696: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317696, there is no canonical definition to state claims against.
-/

/-! ## A317696.P15122589485444062911

`A317697(A374008(n+1))`
-/

namespace A317696.P15122589485444062911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A374008 (n + 1)).toNat

end

end A317696.P15122589485444062911

/-! ## A317696.P10354608694337370457

`A317697(eq[8, A131818(n+1)])`
-/

namespace A317696.P10354608694337370457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317696.P10354608694337370457

/-! ## A317696.P680798014296469694

`A317697(A055999(n+4))`
-/

namespace A317696.P680798014296469694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (A055999 (n + 4)).toNat

end

end A317696.P680798014296469694

/-! ## A317696.P18210600420136126716

`A317697(eq[4, A219347(n)])`
-/

namespace A317696.P18210600420136126716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317696.P18210600420136126716

/-! ## A317696.P18359832985499191788

`A317697(eq[6, A193592(n)])`
-/

namespace A317696.P18359832985499191788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317697 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A317696.P18359832985499191788

/-!
# A317697: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317697, there is no canonical definition to state claims against.
-/

/-! ## A317697.P3479560953600329961

`A317043(n+1)+A309785(A299321(n+1))`
-/

namespace A317697.P3479560953600329961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (n + 1) + A309785 (A299321 (n + 1)).toNat

end

end A317697.P3479560953600329961

/-! ## A317697.P1741516793115682814

`A317043(n+1)+A004198(A185044(n))`
-/

namespace A317697.P1741516793115682814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (n + 1) + A004198 (A185044 n).toNat

end

end A317697.P1741516793115682814

/-! ## A317697.P10248462059447028079

`A317043(n+1)+A309785(A331562(n))`
-/

namespace A317697.P10248462059447028079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (n + 1) + A309785 (A331562 n).toNat

end

end A317697.P10248462059447028079

/-! ## A317697.P10157208437307803032

`A317043(n+1)+A309785(A135225(n)²)`
-/

namespace A317697.P10157208437307803032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (n + 1) + A309785 (A135225 n ^ 2).toNat

end

end A317697.P10157208437307803032

/-! ## A317697.P12178205353985510346

`A317043(n+1)+A111427(A180995(n+1))`
-/

namespace A317697.P12178205353985510346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317043 (n + 1) + A111427 (A180995 (n + 1)).toNat

end

end A317697.P12178205353985510346

/-!
# A317699: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A317699, there is no canonical definition to state claims against.
-/

/-! ## A317699.P2501677345247755824

`A317703(∑[4*n]+1)`
-/

namespace A317699.P2501677345247755824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A317699.P2501677345247755824

/-! ## A317699.P12857924480650996375

`record[A317703(A330613(n+1))]`
-/

namespace A317699.P12857924480650996375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317703 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317699.P12857924480650996375

/-! ## A317699.P1650226474355013686

`record[A003982(n)*A317703(n+1)]`
-/

namespace A317699.P1650226474355013686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A317703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317699.P1650226474355013686

/-! ## A317699.P15310849094349809141

`record[gcd(A274650(n), A317703(n+1))]`
-/

namespace A317699.P15310849094349809141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274650 n) (A317703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317699.P15310849094349809141

/-! ## A317699.P15677201203316682282

`record[A204177(n+1)*A317703(n+1)]`
-/

namespace A317699.P15677201203316682282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204177 (n + 1) * A317703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A317699.P15677201203316682282

