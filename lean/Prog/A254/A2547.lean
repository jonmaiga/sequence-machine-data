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
import Seq.B000.C020
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254700: Number of length 2+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254700, there is no canonical definition to state claims against.
-/

/-! ## A254700.P8815315266667128197

`A254698(∑[n+1]+2)`
-/

namespace A254700.P8815315266667128197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254700.P8815315266667128197

/-! ## A254700.P1741194607686071459

`or(char[1], A254698(A133263(n+1)))`
-/

namespace A254700.P1741194607686071459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254698 (A133263 (n + 1)).toNat)

end

end A254700.P1741194607686071459

/-! ## A254700.P6370668784840242114

`A143431(n)²*A254698(A133263(n+1))`
-/

namespace A254700.P6370668784840242114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 n ^ 2 * A254698 (A133263 (n + 1)).toNat

end

end A254700.P6370668784840242114

/-! ## A254700.P1310715703886224464

`A254698(A133263(n+1))%A254705(n+1)`
-/

namespace A254700.P1310715703886224464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (A133263 (n + 1)).toNat) (A254705 (n + 1))

end

end A254700.P1310715703886224464

/-! ## A254700.P8142717352675714066

`Δ[A002819(n)]²*A254698(A133263(n+1))`
-/

namespace A254700.P8142717352675714066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A254698 (A133263 (n + 1)).toNat

end

end A254700.P8142717352675714066

/-! ## A254700.P1170652773668718313

`A062157(n+1)²*A254698(A133263(n+1))`
-/

namespace A254700.P1170652773668718313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) ^ 2 * A254698 (A133263 (n + 1)).toNat

end

end A254700.P1170652773668718313

/-! ## A254700.P8235895247829267741

`A254698(A133263(n+1))*A294935(2*n+1)`
-/

namespace A254700.P8235895247829267741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A133263 (n + 1)).toNat * A294935 (2 * n + 1)

end

end A254700.P8235895247829267741

/-! ## A254700.P8822798675244402274

`A000108(gcd(n, n+1))*A254698(A133263(n+1))`
-/

namespace A254700.P8822798675244402274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A254698 (A133263 (n + 1)).toNat

end

end A254700.P8822798675244402274

/-! ## A254700.P16404111029996540676

`A254698(A133263(n+1))+n*A055758(n)%2`
-/

namespace A254700.P16404111029996540676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A133263 (n + 1)).toNat + (n : ℤ) * Int.tmod (A055758 n) 2

end

end A254700.P16404111029996540676

/-! ## A254700.P12552356221160790804

`A007318(A000096(n))*A254698(A133263(n+1))`
-/

namespace A254700.P12552356221160790804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A254698 (A133263 (n + 1)).toNat

end

end A254700.P12552356221160790804

/-! ## A254700.P5646130892225692154

`A056926(A125239(n+1))*A254698(A133263(n+1))`
-/

namespace A254700.P5646130892225692154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A125239 (n + 1)).toNat * A254698 (A133263 (n + 1)).toNat

end

end A254700.P5646130892225692154

/-! ## A254700.P10634500178681105699

`A225561(90*(n+1)-7)*A254698(A133263(n+1))`
-/

namespace A254700.P10634500178681105699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (90 * (n + 1) - 7) * A254698 (A133263 (n + 1)).toNat

end

end A254700.P10634500178681105699

/-! ## A254700.P3073356275106890541

`A025177(n²)*A254698(A133263(n+1))`
-/

namespace A254700.P3073356275106890541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 (n ^ 2) * A254698 (A133263 (n + 1)).toNat

end

end A254700.P3073356275106890541

/-!
# A254701: Number of length 3+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254701, there is no canonical definition to state claims against.
-/

/-! ## A254701.P7888636702104165746

`A254698(∑[n+2]+4)`
-/

namespace A254701.P7888636702104165746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254701.P7888636702104165746

/-! ## A254701.P5726785833360761104

`A254698(A167614(n+1))%A017260(n)`
-/

namespace A254701.P5726785833360761104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (A167614 (n + 1)).toNat) (A017260 n)

end

end A254701.P5726785833360761104

/-! ## A254701.P17565733330835879642

`A254698(A000124(n+2)+2)%A082253(n+1)`
-/

namespace A254701.P17565733330835879642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (A000124 (n + 2) + 2).toNat) (A082253 (n + 1))

end

end A254701.P17565733330835879642

/-! ## A254701.P6918159911491958344

`A089688(A057944(n))*A254698(A167614(n+1))`
-/

namespace A254701.P6918159911491958344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A057944 n).toNat * A254698 (A167614 (n + 1)).toNat

end

end A254701.P6918159911491958344

/-! ## A254701.P12489984310793594933

`A254698(A167614(n+1))-A236374(A002260(n+1))`
-/

namespace A254701.P12489984310793594933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167614 (n + 1)).toNat - A236374 (A002260 (n + 1)).toNat

end

end A254701.P12489984310793594933

/-!
# A254702: Number of length 4+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254702, there is no canonical definition to state claims against.
-/

/-! ## A254702.P9308807886734897122

`A254698(A052905(n)+9)`
-/

namespace A254702.P9308807886734897122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A052905 n + 9).toNat

end

end A254702.P9308807886734897122

/-! ## A254702.P1820486144883042892

`A254698(A055999(n)+10)`
-/

namespace A254702.P1820486144883042892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A055999 n + 10).toNat

end

end A254702.P1820486144883042892

/-! ## A254702.P18298561938188332785

`A254698(A167614(n+2)+1)`
-/

namespace A254702.P18298561938188332785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167614 (n + 2) + 1).toNat

end

end A254702.P18298561938188332785

/-! ## A254702.P17193736548385413453

`A254698(A167499(n+2)-1)`
-/

namespace A254702.P17193736548385413453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 2) - 1).toNat

end

end A254702.P17193736548385413453

/-! ## A254702.P5382890475553062511

`A254698(A133263(n+3)+2)`
-/

namespace A254702.P5382890475553062511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A133263 (n + 3) + 2).toNat

end

end A254702.P5382890475553062511

/-! ## A254702.P12679756308651184281

`A254698(A166136(n+2)-2)`
-/

namespace A254702.P12679756308651184281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A166136 (n + 2) - 2).toNat

end

end A254702.P12679756308651184281

/-! ## A254702.P17107083380726975122

`A254698(A055998(n+1)+7)`
-/

namespace A254702.P17107083380726975122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A055998 (n + 1) + 7).toNat

end

end A254702.P17107083380726975122

/-! ## A254702.P133243549539134689

`A254698(Δ[A264443(n)-n²])`
-/

namespace A254702.P133243549539134689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (f1 (n + 1) - f1 n).toNat

end

end A254702.P133243549539134689

/-! ## A254702.P11765878979418657822

`A254698(Δ[A000292(n+2)]+4)`
-/

namespace A254702.P11765878979418657822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (f1 (n + 1) - f1 n + 4).toNat

end

end A254702.P11765878979418657822

/-! ## A254702.P17714813497333257568

`A254698(A166136(n+1)+1+n)`
-/

namespace A254702.P17714813497333257568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A254702.P17714813497333257568

/-! ## A254702.P5376142513250795089

`A254698(Δ[A023545(n+1)-n²])`
-/

namespace A254702.P5376142513250795089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (f1 (n + 1) - f1 n).toNat

end

end A254702.P5376142513250795089

/-!
# A254703: Number of length 5+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254703, there is no canonical definition to state claims against.
-/

/-! ## A254703.P164687875133113655

`A254698(∑[n+4]+11)`
-/

namespace A254703.P164687875133113655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A254703.P164687875133113655

/-! ## A254703.P16116034215865270706

`or(char[3], A254698(A167499(n+3)))`
-/

namespace A254703.P16116034215865270706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254698 (A167499 (n + 3)).toNat)

end

end A254703.P16116034215865270706

/-! ## A254703.P11923381153261124421

`A054977(n+1)*A254698(A167499(n+3))`
-/

namespace A254703.P11923381153261124421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A254698 (A167499 (n + 3)).toNat

end

end A254703.P11923381153261124421

/-! ## A254703.P16848482306669315623

`A254698(A167499(n+3))+A000035(2*n)`
-/

namespace A254703.P16848482306669315623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 3)).toNat + A000035 (2 * n)

end

end A254703.P16848482306669315623

/-! ## A254703.P16109819108919353386

`A254698(A167499(n+3))+A021913(4*n)`
-/

namespace A254703.P16109819108919353386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 3)).toNat + A021913 (4 * n)

end

end A254703.P16109819108919353386

/-! ## A254703.P4803445848740387002

`A254698(A167499(n+3))%A254705(n+1)`
-/

namespace A254703.P4803445848740387002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (A167499 (n + 3)).toNat) (A254705 (n + 1))

end

end A254703.P4803445848740387002

/-! ## A254703.P13979254560866082732

`A113282(n)%2*A254698(A167499(n+3))`
-/

namespace A254703.P13979254560866082732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113282 n) 2 * A254698 (A167499 (n + 3)).toNat

end

end A254703.P13979254560866082732

/-! ## A254703.P4052063263026361976

`A295819(or(3, n))+A254698(A167499(n+3))`
-/

namespace A254703.P4052063263026361976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295819 (Nat.lor 3 n) + A254698 (A167499 (n + 3)).toNat

end

end A254703.P4052063263026361976

/-! ## A254703.P11726209106668750494

`A254698(A056000(n)+15)%A254704(n+1)`
-/

namespace A254703.P11726209106668750494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (A056000 n + 15).toNat) (A254704 (n + 1))

end

end A254703.P11726209106668750494

/-! ## A254703.P9377965277691207709

`A254698(A167499(n+3))+A035444(2*n+1)`
-/

namespace A254703.P9377965277691207709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 3)).toNat + A035444 (2 * n + 1)

end

end A254703.P9377965277691207709

/-! ## A254703.P10853429586136234390

`A014963(6*(n+1))*A254698(A167499(n+3))`
-/

namespace A254703.P10853429586136234390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A254698 (A167499 (n + 3)).toNat

end

end A254703.P10853429586136234390

/-! ## A254703.P15200986653133566918

`A254698(A167499(n+3))+A019274(n+1)%2`
-/

namespace A254703.P15200986653133566918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 3)).toNat + Int.tmod (A019274 (n + 1)) 2

end

end A254703.P15200986653133566918

/-! ## A254703.P1333121430702087511

`A254698(A167499(n+3))+A175161(n+1)%2`
-/

namespace A254703.P1333121430702087511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 3)).toNat + Int.tmod (A175161 (n + 1)) 2

end

end A254703.P1333121430702087511

/-! ## A254703.P4631465765497804689

`A254698(A052905(n+1)+10)%A112002(n+1)`
-/

namespace A254703.P4631465765497804689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (A052905 (n + 1) + 10).toNat) (A112002 (n + 1))

end

end A254703.P4631465765497804689

/-! ## A254703.P14661174494058907934

`A001222(A252005(n+1))*A254698(A167499(n+3))`
-/

namespace A254703.P14661174494058907934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A252005 (n + 1)).toNat * A254698 (A167499 (n + 3)).toNat

end

end A254703.P14661174494058907934

/-! ## A254703.P6818610343921218647

`A190843(A190860(n+1))*A254698(A167499(n+3))`
-/

namespace A254703.P6818610343921218647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190843 (A190860 (n + 1)).toNat * A254698 (A167499 (n + 3)).toNat

end

end A254703.P6818610343921218647

/-! ## A254703.P10493491458774636192

`A003415(A020639(n+2))*A254698(A167499(n+3))`
-/

namespace A254703.P10493491458774636192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A020639 (n + 2)).toNat * A254698 (A167499 (n + 3)).toNat

end

end A254703.P10493491458774636192

/-! ## A254703.P14743297238485277846

`A254698(A167499(n+3))+A113263(n+1)*A113277(n)`
-/

namespace A254703.P14743297238485277846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 3)).toNat + A113263 (n + 1) * A113277 n

end

end A254703.P14743297238485277846

/-! ## A254703.P10688704319221592786

`A213234(A136480(n²)²)*A254698(A167499(n+3))`
-/

namespace A254703.P10688704319221592786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213234 (A136480 (n ^ 2) ^ 2).toNat * A254698 (A167499 (n + 3)).toNat

end

end A254703.P10688704319221592786

/-!
# A254704: Number of length 6+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254704, there is no canonical definition to state claims against.
-/

/-! ## A254704.P9180035534066775988

`A254698(A166136(n+4))`
-/

namespace A254704.P9180035534066775988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A166136 (n + 4)).toNat

end

end A254704.P9180035534066775988

/-! ## A254704.P3122278683295178664

`A254698(A167499(n+4)+1)`
-/

namespace A254704.P3122278683295178664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167499 (n + 4) + 1).toNat

end

end A254704.P3122278683295178664

/-! ## A254704.P16258893138076509125

`A254698(A167614(n+4)+3)`
-/

namespace A254704.P16258893138076509125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A167614 (n + 4) + 3).toNat

end

end A254704.P16258893138076509125

/-! ## A254704.P15053724675401286267

`A254698(A000096(n+4)+7)`
-/

namespace A254704.P15053724675401286267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (n + 4) + 7).toNat

end

end A254704.P15053724675401286267

/-! ## A254704.P6940071670152409413

`A254698(A000217(n+5)+6)`
-/

namespace A254704.P6940071670152409413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000217 (n + 5) + 6).toNat

end

end A254704.P6940071670152409413

/-! ## A254704.P16389360706108718923

`A254698(A161680(n+6)+6)`
-/

namespace A254704.P16389360706108718923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A161680 (n + 6) + 6).toNat

end

end A254704.P16389360706108718923

/-!
# A254705: Number of length 7+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254705, there is no canonical definition to state claims against.
-/

/-! ## A254705.P14277174610236636047

`A254698(A133263(n+6)+5)`
-/

namespace A254705.P14277174610236636047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A133263 (n + 6) + 5).toNat

end

end A254705.P14277174610236636047

/-! ## A254705.P12673814455272584932

`A254698(A000217(n+6)+7)`
-/

namespace A254705.P12673814455272584932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000217 (n + 6) + 7).toNat

end

end A254705.P12673814455272584932

/-! ## A254705.P2917731944038269121

`A254698(A152947(n+8)+6)`
-/

namespace A254705.P2917731944038269121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A152947 (n + 8) + 6).toNat

end

end A254705.P2917731944038269121

/-! ## A254705.P10325511187976842741

`A254698(A161680(n+7)+7)`
-/

namespace A254705.P10325511187976842741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A161680 (n + 7) + 7).toNat

end

end A254705.P10325511187976842741

/-! ## A254705.P12410019412186107499

`A254698(A000124(n+12)-A270545(n+9))`
-/

namespace A254705.P12410019412186107499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000124 (n + 12) - A270545 (n + 9)).toNat

end

end A254705.P12410019412186107499

/-!
# A254706: a(n) = Catalan(2*n) mod prime(n).

The programs for A254706, there is no canonical definition to state claims against.
-/

/-! ## A254706.P9851183405620781163

`A048990(n+1)%p?[A014681(n)]`
-/

namespace A254706.P9851183405620781163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048990 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A254706.P9851183405620781163

/-! ## A254706.P2043269014049045092

`A000108(2*(n+1))%A000040(n+1)`
-/

namespace A254706.P2043269014049045092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (2 * (n + 1))) (A000040 (n + 1))

end

end A254706.P2043269014049045092

/-!
# A254707: Expansion of (1 + 2*x^2) / ((1 - x^2)^2 * (1 - x^3) * (1 - x^4)) in powers of x.

The programs for A254707, the canonical program `A254707.P370968306155579139` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254707 has offset 0).

The definition of A254707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-2x^2-x^3+2x^5+2x^6-x^8-2x^9+x^11))` (program `A254707.P370968306155579139`, by `A254707.P370968306155579139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254707.P370968306155579139

`ogf((1+2x^2)/(1-2x^2-x^3+2x^5+2x^6-x^8-2x^9+x^11))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254707

/-- `ogf((1+2x^2)/(1-2x^2-x^3+2x^5+2x^6-x^8-2x^9+x^11))` -/
def P370968306155579139.Spec : Prop :=
  ∀ n, P370968306155579139.a n = A254707 n

theorem P370968306155579139.correct : P370968306155579139.Spec := by
  intro n
  simp only [A254707]

end A254707

/-! ## A254707.P8557444761772548626

`A254708(n)-A266755(n)`
-/

namespace A254707.P8557444761772548626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A266755 n

end

end A254707.P8557444761772548626

namespace A254707

/-- `A254708(n)-A266755(n)` -/
def P8557444761772548626.Spec : Prop :=
  ∀ n, P8557444761772548626.a n = A254707 n

end A254707

/-! ## A254707.P1774732235880204760

`2*A165188(n+1)-A254594(n)`
-/

namespace A254707.P1774732235880204760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165188 (n + 1) - A254594 n

end

end A254707.P1774732235880204760

namespace A254707

/-- `2*A165188(n+1)-A254594(n)` -/
def P1774732235880204760.Spec : Prop :=
  ∀ n, P1774732235880204760.a n = A254707 n

end A254707

/-! ## A254707.P13896585630430514991

`A254708(n)-(A060023(n)+A026810(n))`
-/

namespace A254707.P13896585630430514991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - (A060023 n + A026810 n)

end

end A254707.P13896585630430514991

namespace A254707

/-- `A254708(n)-(A060023(n)+A026810(n))` -/
def P13896585630430514991.Spec : Prop :=
  ∀ n, P13896585630430514991.a n = A254707 n

end A254707

/-! ## A254707.P8487122519444250660

`A254708(n)-A005044(n+3)`
-/

namespace A254707.P8487122519444250660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A005044 (n + 3)

end

end A254707.P8487122519444250660

namespace A254707

/-- `A254708(n)-A005044(n+3)` -/
def P8487122519444250660.Spec : Prop :=
  ∀ n, P8487122519444250660.a n = A254707 n

end A254707

/-! ## A254707.P15450517911727323965

`A254708(n)-Δ[A026810(n+3)]`
-/

namespace A254707.P15450517911727323965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - (f1 (n + 1) - f1 n)

end

end A254707.P15450517911727323965

namespace A254707

/-- `A254708(n)-Δ[A026810(n+3)]` -/
def P15450517911727323965.Spec : Prop :=
  ∀ n, P15450517911727323965.a n = A254707 n

end A254707

/-! ## A254707.P4182821030268951074

`A254708(n)-A211540(A060762(n+4))`
-/

namespace A254707.P4182821030268951074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A211540 (A060762 (n + 4)).toNat

end

end A254707.P4182821030268951074

namespace A254707

/-- `A254708(n)-A211540(A060762(n+4))` -/
def P4182821030268951074.Spec : Prop :=
  ∀ n, P4182821030268951074.a n = A254707 n

end A254707

/-! ## A254707.P13714712553651761327

`A254708(n)-A008743(A168195(n+2))`
-/

namespace A254707.P13714712553651761327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A008743 (A168195 (n + 2)).toNat

end

end A254707.P13714712553651761327

namespace A254707

/-- `A254708(n)-A008743(A168195(n+2))` -/
def P13714712553651761327.Spec : Prop :=
  ∀ n, P13714712553651761327.a n = A254707 n

end A254707

/-! ## A254707.P14382282475002735599

`A165188(n+1)+A029223(A136320(n))`
-/

namespace A254707.P14382282475002735599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (n + 1) + A029223 (A136320 n).toNat

end

end A254707.P14382282475002735599

namespace A254707

/-- `A165188(n+1)+A029223(A136320(n))` -/
def P14382282475002735599.Spec : Prop :=
  ∀ n, P14382282475002735599.a n = A254707 n

end A254707

/-! ## A254707.P2313318592741236488

`2*A029253(A136320(n))-A254594(n)`
-/

namespace A254707.P2313318592741236488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029253 (A136320 n).toNat - A254594 n

end

end A254707.P2313318592741236488

namespace A254707

/-- `2*A029253(A136320(n))-A254594(n)` -/
def P2313318592741236488.Spec : Prop :=
  ∀ n, P2313318592741236488.a n = A254707 n

end A254707

/-! ## A254707.P13361819728946077282

`A029179(3*n+2)`
-/

namespace A254707.P13361819728946077282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 (3 * n + 2)

end

end A254707.P13361819728946077282

namespace A254707

/-- `A029179(3*n+2)` -/
def P13361819728946077282.Spec : Prop :=
  ∀ n, P13361819728946077282.a n = A254707 n

end A254707

/-! ## A254707.P15447893447830214380

`2*A029253(A047270(n+1))-A254594(n)`
-/

namespace A254707.P15447893447830214380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029253 (A047270 (n + 1)).toNat - A254594 n

end

end A254707.P15447893447830214380

namespace A254707

/-- `2*A029253(A047270(n+1))-A254594(n)` -/
def P15447893447830214380.Spec : Prop :=
  ∀ n, P15447893447830214380.a n = A254707 n

end A254707

/-! ## A254707.P15919259807213091858

`A029371(A016957(n))`
-/

namespace A254707.P15919259807213091858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (A016957 n).toNat

end

end A254707.P15919259807213091858

namespace A254707

/-- `A029371(A016957(n))` -/
def P15919259807213091858.Spec : Prop :=
  ∀ n, P15919259807213091858.a n = A254707 n

end A254707

/-! ## A254707.P2057917021990129426

`A029371(A016933(n)+2)`
-/

namespace A254707.P2057917021990129426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (A016933 n + 2).toNat

end

end A254707.P2057917021990129426

namespace A254707

/-- `A029371(A016933(n)+2)` -/
def P2057917021990129426.Spec : Prop :=
  ∀ n, P2057917021990129426.a n = A254707 n

end A254707

/-! ## A254707.P10783434711879423334

`A266755(n)+A008585(A254594(n)-A266755(n))`
-/

namespace A254707.P10783434711879423334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A008585 (A254594 n - A266755 n).toNat

end

end A254707.P10783434711879423334

namespace A254707

/-- `A266755(n)+A008585(A254594(n)-A266755(n))` -/
def P10783434711879423334.Spec : Prop :=
  ∀ n, P10783434711879423334.a n = A254707 n

end A254707

/-! ## A254707.P4017491162177733988

`A254594(n)+A005843(A165188(n+1)-A254594(n))`
-/

namespace A254707.P4017491162177733988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n + A005843 (A165188 (n + 1) - A254594 n).toNat

end

end A254707.P4017491162177733988

namespace A254707

/-- `A254594(n)+A005843(A165188(n+1)-A254594(n))` -/
def P4017491162177733988.Spec : Prop :=
  ∀ n, P4017491162177733988.a n = A254707 n

end A254707

/-! ## A254707.P17531553092117464042

`A008585(A254594(n))-2*A266755(n)`
-/

namespace A254707.P17531553092117464042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A254594 n).toNat - 2 * A266755 n

end

end A254707.P17531553092117464042

namespace A254707

/-- `A008585(A254594(n))-2*A266755(n)` -/
def P17531553092117464042.Spec : Prop :=
  ∀ n, P17531553092117464042.a n = A254707 n

end A254707

/-! ## A254707.P998547537004979808

`A005843(A165188(n+1))-A254594(n)`
-/

namespace A254707.P998547537004979808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A165188 (n + 1)).toNat - A254594 n

end

end A254707.P998547537004979808

namespace A254707

/-- `A005843(A165188(n+1))-A254594(n)` -/
def P998547537004979808.Spec : Prop :=
  ∀ n, P998547537004979808.a n = A254707 n

end A254707

/-! ## A254707.P18042822924319248457

`A008585(A165188(n+1))-A254708(n)`
-/

namespace A254707.P18042822924319248457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A165188 (n + 1)).toNat - A254708 n

end

end A254707.P18042822924319248457

namespace A254707

/-- `A008585(A165188(n+1))-A254708(n)` -/
def P18042822924319248457.Spec : Prop :=
  ∀ n, P18042822924319248457.a n = A254707 n

end A254707

/-!
# A254708: Expansion of (1 + 2*x^2) / (1 - 2*x^2 - x^3 + 2*x^5 + 2*x^6 - x^8 - 2*x^9 + x^11) in powers of x.

The programs for A254708, the canonical program `A254708.P15475653326016787145` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254708 has offset 0).

The definition of A254708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254708.P15475653326016787145

`A266755(n)+A254707(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254708

/-- `A266755(n)+A254707(n)` -/
def P15475653326016787145.Spec : Prop :=
  ∀ n, P15475653326016787145.a n = A254708 n

theorem P15475653326016787145.correct : P15475653326016787145.Spec := by
  intro n
  simp only [A254708]

end A254708

/-! ## A254708.P14595765698744546973

`A254594(n)+A165188(n+1)`
-/

namespace A254708.P14595765698744546973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n + A165188 (n + 1)

end

end A254708.P14595765698744546973

namespace A254708

/-- `A254594(n)+A165188(n+1)` -/
def P14595765698744546973.Spec : Prop :=
  ∀ n, P14595765698744546973.a n = A254708 n

end A254708

/-! ## A254708.P14867809148861118699

`3*A254594(n)-A266755(n)`
-/

namespace A254708.P14867809148861118699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A254594 n - A266755 n

end

end A254708.P14867809148861118699

namespace A254708

/-- `3*A254594(n)-A266755(n)` -/
def P14867809148861118699.Spec : Prop :=
  ∀ n, P14867809148861118699.a n = A254708 n

end A254708

/-! ## A254708.P12836597327368711837

`A026810(n)+A254707(n)+A060023(n)`
-/

namespace A254708.P12836597327368711837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + (A254707 n + A060023 n)

end

end A254708.P12836597327368711837

namespace A254708

/-- `A026810(n)+A254707(n)+A060023(n)` -/
def P12836597327368711837.Spec : Prop :=
  ∀ n, P12836597327368711837.a n = A254708 n

end A254708

/-! ## A254708.P16712656826027095755

`A251260(n+1)-A165188(n+2)`
-/

namespace A254708.P16712656826027095755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251260 (n + 1) - A165188 (n + 2)

end

end A254708.P16712656826027095755

namespace A254708

/-- `A251260(n+1)-A165188(n+2)` -/
def P16712656826027095755.Spec : Prop :=
  ∀ n, P16712656826027095755.a n = A254708 n

end A254708

/-! ## A254708.P13458221551022596061

`A254707(n)+A005044(n+3)`
-/

namespace A254708.P13458221551022596061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254707 n + A005044 (n + 3)

end

end A254708.P13458221551022596061

namespace A254708

/-- `A254707(n)+A005044(n+3)` -/
def P13458221551022596061.Spec : Prop :=
  ∀ n, P13458221551022596061.a n = A254708 n

end A254708

/-! ## A254708.P7179702638130402117

`A254707(n+2)-Δ[A266769(n+1)]`
-/

namespace A254708.P7179702638130402117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254707 (n + 2) - (f1 (n + 1) - f1 n)

end

end A254708.P7179702638130402117

namespace A254708

/-- `A254707(n+2)-Δ[A266769(n+1)]` -/
def P7179702638130402117.Spec : Prop :=
  ∀ n, P7179702638130402117.a n = A254708 n

end A254708

/-! ## A254708.P5059071967136495859

`A254594(n)+A029253(A136320(n))`
-/

namespace A254708.P5059071967136495859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n + A029253 (A136320 n).toNat

end

end A254708.P5059071967136495859

namespace A254708

/-- `A254594(n)+A029253(A136320(n))` -/
def P5059071967136495859.Spec : Prop :=
  ∀ n, P5059071967136495859.a n = A254708 n

end A254708

/-! ## A254708.P790980874121848022

`2*A165188(n+1)-A029223(A136320(n))`
-/

namespace A254708.P790980874121848022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165188 (n + 1) - A029223 (A136320 n).toNat

end

end A254708.P790980874121848022

namespace A254708

/-- `2*A165188(n+1)-A029223(A136320(n))` -/
def P790980874121848022.Spec : Prop :=
  ∀ n, P790980874121848022.a n = A254708 n

end A254708

/-! ## A254708.P5610989220013806863

`A254594(n)+A029253(A047270(n+1))`
-/

namespace A254708.P5610989220013806863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 n + A029253 (A047270 (n + 1)).toNat

end

end A254708.P5610989220013806863

namespace A254708

/-- `A254594(n)+A029253(A047270(n+1))` -/
def P5610989220013806863.Spec : Prop :=
  ∀ n, P5610989220013806863.a n = A254708 n

end A254708

/-! ## A254708.P2651054377991401040

`A029179(3*n+4)`
-/

namespace A254708.P2651054377991401040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 (3 * n + 4)

end

end A254708.P2651054377991401040

namespace A254708

/-- `A029179(3*n+4)` -/
def P2651054377991401040.Spec : Prop :=
  ∀ n, P2651054377991401040.a n = A254708 n

end A254708

/-! ## A254708.P8702658991197871484

`A029371(6*n+8)`
-/

namespace A254708.P8702658991197871484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 (6 * n + 8)

end

end A254708.P8702658991197871484

namespace A254708

/-- `A029371(6*n+8)` -/
def P8702658991197871484.Spec : Prop :=
  ∀ n, P8702658991197871484.a n = A254708 n

end A254708

/-! ## A254708.P7633794700885427538

`A008585(A254594(n))-A266755(n)`
-/

namespace A254708.P7633794700885427538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A254594 n).toNat - A266755 n

end

end A254708.P7633794700885427538

namespace A254708

/-- `A008585(A254594(n))-A266755(n)` -/
def P7633794700885427538.Spec : Prop :=
  ∀ n, P7633794700885427538.a n = A254708 n

end A254708

/-! ## A254708.P1057105911773008858

`A008585(A165188(n+1))-A254707(n)`
-/

namespace A254708.P1057105911773008858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A165188 (n + 1)).toNat - A254707 n

end

end A254708.P1057105911773008858

namespace A254708

/-- `A008585(A165188(n+1))-A254707(n)` -/
def P1057105911773008858.Spec : Prop :=
  ∀ n, P1057105911773008858.a n = A254708 n

end A254708

/-!
# A254709: Indices of pentagonal numbers (A000326) which are also centered square numbers (A001844).

The programs for A254709, the canonical program `A254709.P2768729584503613930` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254709 has offset 1).

The definition of A254709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254709.P2768729584503613930

`a(n-1)+14*a(n-2)-14*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=25, a(4)=137`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254709

/-- `a(n-1)+14*a(n-2)-14*a(n-3)-a(n-4)+a(n-5)` -/
def P2768729584503613930.Spec : Prop :=
  ∀ n, P2768729584503613930.a n = A254709 (n + 1)

theorem P2768729584503613930.correct : P2768729584503613930.Spec := by
  intro n
  simp only [A254709, Nat.add_sub_cancel]

end A254709

/-! ## A254709.P4973695100071348343

`∑[gcd(2, n)*A001353(n)]+1`
-/

namespace A254709.P4973695100071348343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A254709.P4973695100071348343

namespace A254709

/-- `∑[gcd(2, n)*A001353(n)]+1` -/
def P4973695100071348343.Spec : Prop :=
  ∀ n, P4973695100071348343.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P2798369683254660657

`A002530(n+1)²+A002530(n)²`
-/

namespace A254709.P2798369683254660657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (n + 1) ^ 2 + A002530 n ^ 2

end

end A254709.P2798369683254660657

namespace A254709

/-- `A002530(n+1)²+A002530(n)²` -/
def P2798369683254660657.Spec : Prop :=
  ∀ n, P2798369683254660657.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P4563072393952735908

`∑[A000034(n+1)*A001353(n)]+1`
-/

namespace A254709.P4563072393952735908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A254709.P4563072393952735908

namespace A254709

/-- `∑[A000034(n+1)*A001353(n)]+1` -/
def P4563072393952735908.Spec : Prop :=
  ∀ n, P4563072393952735908.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P676490212892823860

`A048788(2*n+1)-Δ[A005246(n+1)]²`
-/

namespace A254709.P676490212892823860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (2 * n + 1) - (f1 (n + 1) - f1 n) ^ 2

end

end A254709.P676490212892823860

namespace A254709

/-- `A048788(2*n+1)-Δ[A005246(n+1)]²` -/
def P676490212892823860.Spec : Prop :=
  ∀ n, P676490212892823860.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P17019105957667771532

`A259592(n)²-2*A109437(n)`
-/

namespace A254709.P17019105957667771532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 n ^ 2 - 2 * A109437 n

end

end A254709.P17019105957667771532

namespace A254709

/-- `A259592(n)²-2*A109437(n)` -/
def P17019105957667771532.Spec : Prop :=
  ∀ n, P17019105957667771532.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P9756901181956004440

`A082841(n)+2-A237250(n+1)²`
-/

namespace A254709.P9756901181956004440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + (2 - A237250 (n + 1) ^ 2)

end

end A254709.P9756901181956004440

namespace A254709

/-- `A082841(n)+2-A237250(n+1)²` -/
def P9756901181956004440.Spec : Prop :=
  ∀ n, P9756901181956004440.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P11960825984711363382

`Δ[A001353(n)]-A001353(A123108(n+1))²`
-/

namespace A254709.P11960825984711363382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001353 (A123108 (n + 1)).toNat ^ 2

end

end A254709.P11960825984711363382

namespace A254709

/-- `Δ[A001353(n)]-A001353(A123108(n+1))²` -/
def P11960825984711363382.Spec : Prop :=
  ∀ n, P11960825984711363382.a n = A254709 (n + 1)

end A254709

/-! ## A254709.P14349866531059638302

`∑[gcd(A045899(n+1), A098301(n))]+1`
-/

namespace A254709.P14349866531059638302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045899 (n + 1)) (A098301 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A254709.P14349866531059638302

namespace A254709

/-- `∑[gcd(A045899(n+1), A098301(n))]+1` -/
def P14349866531059638302.Spec : Prop :=
  ∀ n, (P14349866531059638302.a n : ℤ) = A254709 (n + 1)

end A254709

/-!
# A254710: Indices of centered square numbers (A001844) which are also pentagonal numbers (A000326).

The programs for A254710, the canonical program `A254710.P11721759978177624269` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254710 has offset 1).

The definition of A254710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254710.P11721759978177624269

`a(n-1)+14*a(n-2)-14*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=22, a(4)=119`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254710

/-- `a(n-1)+14*a(n-2)-14*a(n-3)-a(n-4)+a(n-5)` -/
def P11721759978177624269.Spec : Prop :=
  ∀ n, P11721759978177624269.a n = A254710 (n + 1)

theorem P11721759978177624269.correct : P11721759978177624269.Spec := by
  intro n
  simp only [A254710, Nat.add_sub_cancel]

end A254710

/-! ## A254710.P4418099334656185050

`∑[14*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=7, a(3)=13, a(4)=97`
-/

namespace A254710.P4418099334656185050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 13, 97] fun n f1 =>
  14 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P4418099334656185050

namespace A254710

/-- `∑[14*a(n-2)-a(n-4)]` -/
def P4418099334656185050.Spec : Prop :=
  ∀ n, P4418099334656185050.a n = A254710 (n + 1)

end A254710

/-! ## A254710.P1466365087675159986

`∑[lcm(2, A001075(n))/2]`
-/

namespace A254710.P1466365087675159986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A001075 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P1466365087675159986

namespace A254710

/-- `∑[lcm(2, A001075(n))/2]` -/
def P1466365087675159986.Spec : Prop :=
  ∀ n, P1466365087675159986.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P16175757091871351547

`A110293(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A254710.P16175757091871351547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110293 (n - 1) + a (n - 1)

end

end A254710.P16175757091871351547

namespace A254710

/-- `A110293(n-1)+a(n-1)` -/
def P16175757091871351547.Spec : Prop :=
  ∀ n, P16175757091871351547.a n = A254710 (n + 1)

end A254710

/-! ## A254710.P16752475568289382293

`∑[A001075(n)/A000034(n)]`
-/

namespace A254710.P16752475568289382293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P16752475568289382293

namespace A254710

/-- `∑[A001075(n)/A000034(n)]` -/
def P16752475568289382293.Spec : Prop :=
  ∀ n, P16752475568289382293.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P5414340543784426858

`∑[A001075(n)/(A000035(n)+1)]`
-/

namespace A254710.P5414340543784426858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n : ℚ) / (A000035 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P5414340543784426858

namespace A254710

/-- `∑[A001075(n)/(A000035(n)+1)]` -/
def P5414340543784426858.Spec : Prop :=
  ∀ n, P5414340543784426858.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P13830625278360366469

`∑[A001075(n)/A040001(n+1)]`
-/

namespace A254710.P13830625278360366469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n : ℚ) / (A040001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P13830625278360366469

namespace A254710

/-- `∑[A001075(n)/A040001(n+1)]` -/
def P13830625278360366469.Spec : Prop :=
  ∀ n, P13830625278360366469.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P16077759107270288521

`∑[(A092184(n)+1)/A000034(n)]`
-/

namespace A254710.P16077759107270288521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092184 n + 1 : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P16077759107270288521

namespace A254710

/-- `∑[(A092184(n)+1)/A000034(n)]` -/
def P16077759107270288521.Spec : Prop :=
  ∀ n, P16077759107270288521.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P4743927069003927800

`∑[A001075(n)/Δ[A001651(n+1)]]`
-/

namespace A254710.P4743927069003927800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P4743927069003927800

namespace A254710

/-- `∑[A001075(n)/Δ[A001651(n+1)]]` -/
def P4743927069003927800.Spec : Prop :=
  ∀ n, P4743927069003927800.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P11928093955057992905

`ceil(A106256(n+1)/2)`
-/

namespace A254710.P11928093955057992905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106256 (n + 1) : ℚ) / 2⌉

end

end A254710.P11928093955057992905

namespace A254710

/-- `ceil(A106256(n+1)/2)` -/
def P11928093955057992905.Spec : Prop :=
  ∀ n, P11928093955057992905.a n = A254710 (n + 1)

end A254710

/-! ## A254710.P10263753343054690088

`∑[A001075(n)/A001834(n)%3]`
-/

namespace A254710.P10263753343054690088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001075 n : ℚ) / (Int.tmod (A001834 n) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P10263753343054690088

namespace A254710

/-- `∑[A001075(n)/A001834(n)%3]` -/
def P10263753343054690088.Spec : Prop :=
  ∀ n, P10263753343054690088.a n = (A254710 (n + 1) : ℚ)

end A254710

/-! ## A254710.P1174920729731231655

`∑[A003500(n)/gcd(4, A003500(n))]`
-/

namespace A254710.P1174920729731231655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003500 n : ℚ) / (Int.gcd 4 (A003500 n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254710.P1174920729731231655

namespace A254710

/-- `∑[A003500(n)/gcd(4, A003500(n))]` -/
def P1174920729731231655.Spec : Prop :=
  ∀ n, P1174920729731231655.a n = (A254710 (n + 1) : ℚ)

end A254710

/-!
# A254711: Pentagonal numbers (A000326) which are also centered square numbers (A001844).

The programs for A254711, there is no canonical definition to state claims against.
-/

/-! ## A254711.P11219162554746042855

`ceil(A106256(n+1)²/2)`
-/

namespace A254711.P11219162554746042855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106256 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A254711.P11219162554746042855

/-! ## A254711.P12817202227239600048

`floor(A106256(A000027(n+1))²/2)+1`
-/

namespace A254711.P12817202227239600048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106256 (A000027 (n + 1)).toNat ^ 2 : ℚ) / 2⌋ + 1

end

end A254711.P12817202227239600048

/-! ## A254711.P15677878923565247008

`floor(A106256(n+1)²/2)-A057428(n+1)`
-/

namespace A254711.P15677878923565247008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106256 (n + 1) ^ 2 : ℚ) / 2⌋ - A057428 (n + 1)

end

end A254711.P15677878923565247008

/-! ## A254711.P3284478256762368403

`C((A106257(n+1)+1)/2, 2)/3`
-/

namespace A254711.P3284478256762368403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.roundAway ((A106257 (n + 1) + 1 : ℚ) / 2)).toNat 2 : ℚ) / 3

end

end A254711.P3284478256762368403

/-! ## A254711.P15073204926037782199

`floor(A106256(A023052(n+1)+1)²/2)+1`
-/

namespace A254711.P15073204926037782199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A106256 (A023052 (n + 1) + 1).toNat ^ 2 : ℚ) / 2⌋ + 1

end

end A254711.P15073204926037782199

/-!
# A254712: Semiprimes that are the sum of five successive semiprimes.

The programs for A254712, the canonical program `A254712.P5501969628988394953` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254712 has offset 1).

The definition of A254712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254712.P5501969628988394953

`∩[A001358(n+1), A281824(n+1)-A001358(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A254712

/-- `∩[A001358(n+1), A281824(n+1)-A001358(n+1)]` -/
def P5501969628988394953.Spec : Prop :=
  ∀ n, (P5501969628988394953.a n : ℤ) = A254712 (n + 1)

theorem P5501969628988394953.correct : P5501969628988394953.Spec := by
  intro n
  simp only [A254712, Nat.add_sub_cancel]

end A254712

/-!
# A254713: All numbers k such that the number of distinct parts of all A045917(k) Goldbach partitions of 2k is prime.

The programs for A254713, there is no canonical definition to state claims against.
-/

/-! ## A254713.P6775589257262615662

`eq[1, A003415(A035026(n+1))]+1`
-/

namespace A254713.P6775589257262615662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A035026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254713.P6775589257262615662

/-! ## A254713.P7979782892188855239

`eq[2, A000005(A035026(n+2))]+2`
-/

namespace A254713.P7979782892188855239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A035026 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A254713.P7979782892188855239

/-! ## A254713.P10913810779997356720

`eq[2, A000005(A035026(A233583(n+1)))]`
-/

namespace A254713.P10913810779997356720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A035026 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254713.P10913810779997356720

/-! ## A254713.P4004464916462620235

`eq[1-A159075(n), A001222(A002126(2*n))]`
-/

namespace A254713.P4004464916462620235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002126 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254713.P4004464916462620235

/-! ## A254713.P2800507841490870402

`eq[A007920(A002126(2*n)), A055672(2*n)]`
-/

namespace A254713.P2800507841490870402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A002126 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254713.P2800507841490870402

/-!
# A254715: Number of n-digit semiprimes with semiprime digits (4, 6, 9).

The programs for A254715, there is no canonical definition to state claims against.
-/

/-! ## A254715.P9951784057391824324

`A033862(A148037(n+2)+char[∑[n]])`
-/

namespace A254715.P9951784057391824324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148037 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A254715.P9951784057391824324

/-! ## A254715.P4672368844821156133

`A003057(∑[(∑[A360672(n)^n]+2)^n]+2)`
-/

namespace A254715.P4672368844821156133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360672 n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A254715.P4672368844821156133

/-!
# A254718: a(n) is the least semiprime having a(n-1) as a substring, a(1)=4.

The programs for A254718, there is no canonical definition to state claims against.
-/

/-! ## A254718.P16281679662408027229

`A040219(A217900(n))+A002275(n+1)`
-/

namespace A254718.P16281679662408027229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040219 (A217900 n).toNat + A002275 (n + 1)

end

end A254718.P16281679662408027229

/-!
# A254719: Perfect powers of Fibonacci numbers: a(n) = F(m)^k for appropriate m > 2 and k > 1, with F = A000045.

The programs for A254719, there is no canonical definition to state claims against.
-/

/-! ## A254719.P10641688328006915383

`∩[A001690(n+1), A105317(n+1)]`
-/

namespace A254719.P10641688328006915383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254719.P10641688328006915383

/-! ## A254719.P12765620677998236499

`A246655(lt[A025473(n+1), A088296(n+1)])`
-/

namespace A254719.P12765620677998236499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254719.P12765620677998236499

/-! ## A254719.P9927360475359317193

`A025475(∑[∏{e}[A083424(n)+1, #!]]+1)`
-/

namespace A254719.P9927360475359317193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083424 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254719.P9927360475359317193

/-! ## A254719.P16027802796233133140

`A025475(lt[A000122(n), A278073(2*(n+2))])`
-/

namespace A254719.P16027802796233133140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278073 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254719.P16027802796233133140

/-! ## A254719.P12878470754246055105

`∩[A122379(n+1), A273200(n+1)]`
-/

namespace A254719.P12878470754246055105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254719.P12878470754246055105

/-!
# A254720: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254720, there is no canonical definition to state claims against.
-/

/-! ## A254720.P13544567972398551464

`A254728(∑[4*n]+1)`
-/

namespace A254720.P13544567972398551464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254720.P13544567972398551464

/-! ## A254720.P12009737871892293632

`record[A003982(n)*A254728(n+1)]`
-/

namespace A254720.P12009737871892293632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254720.P12009737871892293632

/-! ## A254720.P8980415378416947042

`record[gcd(A114327(n), A254728(n+1))]`
-/

namespace A254720.P8980415378416947042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254720.P8980415378416947042

/-! ## A254720.P15559984607108654879

`record[root(A254728(n+1), A059897(n+1))]`
-/

namespace A254720.P15559984607108654879
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254728 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254720.P15559984607108654879

/-! ## A254720.P17706360787376034639

`A254728(A001844(n))+A025438(n)`
-/

namespace A254720.P17706360787376034639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A001844 n).toNat + A025438 n

end

end A254720.P17706360787376034639

/-!
# A254721: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254721, there is no canonical definition to state claims against.
-/

/-! ## A254721.P594417231151375113

`A254775(∑[n]+1)`
-/

namespace A254721.P594417231151375113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254721.P594417231151375113

/-! ## A254721.P14651409402616474534

`record[A010054(n)*A254775(n+1)]`
-/

namespace A254721.P14651409402616474534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254721.P14651409402616474534

/-! ## A254721.P15090108351942574503

`record[A254775(n+1)/A163626(n)]`
-/

namespace A254721.P15090108351942574503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254775 (n + 1) : ℚ) / (A163626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254721.P15090108351942574503

/-! ## A254721.P13980391559790086848

`record[root(A254775(n+1), A193592(n))]`
-/

namespace A254721.P13980391559790086848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254775 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254721.P13980391559790086848

/-! ## A254721.P14143710820309135766

`record[gcd(A002262(n), A254775(n+1))]`
-/

namespace A254721.P14143710820309135766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254721.P14143710820309135766

/-!
# A254722: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254722, there is no canonical definition to state claims against.
-/

/-! ## A254722.P11038265774831937418

`A254728(∑[n+1]+2)`
-/

namespace A254722.P11038265774831937418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254722.P11038265774831937418

/-! ## A254722.P8512218683132051623

`record[A254728(A135223(n+1)+2)]`
-/

namespace A254722.P8512218683132051623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254722.P8512218683132051623

/-! ## A254722.P11497789946565486854

`record[A254728(Δ[A003453(n+5)])]`
-/

namespace A254722.P11497789946565486854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254722.P11497789946565486854

/-! ## A254722.P17955957098781831573

`A254728(A000096(n+1))/A361338(n)`
-/

namespace A254722.P17955957098781831573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254728 (A000096 (n + 1)).toNat : ℚ) / (A361338 n : ℚ)

end

end A254722.P17955957098781831573

/-! ## A254722.P16291556428736985117

`record[A254728(A131818(n+1)+A038722(n+1))]`
-/

namespace A254722.P16291556428736985117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A131818 (n + 1) + A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254722.P16291556428736985117

/-!
# A254723: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254723, there is no canonical definition to state claims against.
-/

/-! ## A254723.P8177867125305582778

`A254728(∑[n+2]+4)`
-/

namespace A254723.P8177867125305582778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254723.P8177867125305582778

/-! ## A254723.P2630268230662128577

`A254728(A167614(n+1))+A025438(n)`
-/

namespace A254723.P2630268230662128577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A167614 (n + 1)).toNat + A025438 n

end

end A254723.P2630268230662128577

/-! ## A254723.P15750361534147424454

`or(A000007(n), A254728(A167614(n+1)))`
-/

namespace A254723.P15750361534147424454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254728 (A167614 (n + 1)).toNat)

end

end A254723.P15750361534147424454

/-! ## A254723.P14776537010746505784

`or(A003982(n), A254728(A167614(n+1)))`
-/

namespace A254723.P14776537010746505784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A254728 (A167614 (n + 1)).toNat)

end

end A254723.P14776537010746505784

/-! ## A254723.P14701049272447808566

`or(A010054(n), A254728(A167614(n+1)))`
-/

namespace A254723.P14701049272447808566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A254728 (A167614 (n + 1)).toNat)

end

end A254723.P14701049272447808566

/-!
# A254724: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254724, there is no canonical definition to state claims against.
-/

/-! ## A254724.P17027293260120624063

`A254728(A374004(n+1))`
-/

namespace A254724.P17027293260120624063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A374004 (n + 1)).toNat

end

end A254724.P17027293260120624063

/-! ## A254724.P12869119073384392205

`A254728(A141214(n)+7)`
-/

namespace A254724.P12869119073384392205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A141214 n + 7).toNat

end

end A254724.P12869119073384392205

/-! ## A254724.P16571744715612821784

`A254728(A052905(n)+9)`
-/

namespace A254724.P16571744715612821784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A052905 n + 9).toNat

end

end A254724.P16571744715612821784

/-! ## A254724.P15270757295790157946

`A254728(A055999(n)+10)`
-/

namespace A254724.P15270757295790157946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A055999 n + 10).toNat

end

end A254724.P15270757295790157946

/-! ## A254724.P16221614703203373741

`A254728(A167614(n+2)+1)`
-/

namespace A254724.P16221614703203373741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A167614 (n + 2) + 1).toNat

end

end A254724.P16221614703203373741

/-!
# A254725: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254725, there is no canonical definition to state claims against.
-/

/-! ## A254725.P3465542084586194077

`A254728(A374005(n+1))`
-/

namespace A254725.P3465542084586194077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A374005 (n + 1)).toNat

end

end A254725.P3465542084586194077

/-! ## A254725.P17555910123175926067

`A254728(A167499(n+3))`
-/

namespace A254725.P17555910123175926067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A167499 (n + 3)).toNat

end

end A254725.P17555910123175926067

/-! ## A254725.P9720006123360535585

`A254728(A155212(n)+13)`
-/

namespace A254725.P9720006123360535585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A155212 n + 13).toNat

end

end A254725.P9720006123360535585

/-! ## A254725.P11397850428815734257

`A254728(A027379(n+2)+8)`
-/

namespace A254725.P11397850428815734257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A027379 (n + 2) + 8).toNat

end

end A254725.P11397850428815734257

/-! ## A254725.P6175705779948600016

`A254728(A055998(n+2)+8)`
-/

namespace A254725.P6175705779948600016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A055998 (n + 2) + 8).toNat

end

end A254725.P6175705779948600016

/-!
# A254726: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254726, there is no canonical definition to state claims against.
-/

/-! ## A254726.P17800623378612279021

`A254728(A374007(n+1))`
-/

namespace A254726.P17800623378612279021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A374007 (n + 1)).toNat

end

end A254726.P17800623378612279021

/-! ## A254726.P10246719621555590281

`A254728(A027379(n+3)+9)`
-/

namespace A254726.P10246719621555590281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A027379 (n + 3) + 9).toNat

end

end A254726.P10246719621555590281

/-! ## A254726.P16218558905851096818

`A254728(A052905(n+2)+11)`
-/

namespace A254726.P16218558905851096818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A052905 (n + 2) + 11).toNat

end

end A254726.P16218558905851096818

/-! ## A254726.P14576080332852937993

`A254728(eq[7, A131818(n+1)])`
-/

namespace A254726.P14576080332852937993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254726.P14576080332852937993

/-! ## A254726.P5515207094851686726

`A254728(A000124(n+6)-(n+1))`
-/

namespace A254726.P5515207094851686726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A254726.P5515207094851686726

/-!
# A254727: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254727, there is no canonical definition to state claims against.
-/

/-! ## A254727.P4507676294531855075

`A254728(A374008(n+1))`
-/

namespace A254727.P4507676294531855075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A374008 (n + 1)).toNat

end

end A254727.P4507676294531855075

/-! ## A254727.P4515399050670970343

`A254728(eq[8, A131818(n+1)])`
-/

namespace A254727.P4515399050670970343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254727.P4515399050670970343

/-! ## A254727.P14923895421073709914

`A254728(A055999(n+4))`
-/

namespace A254727.P14923895421073709914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (A055999 (n + 4)).toNat

end

end A254727.P14923895421073709914

/-! ## A254727.P13374434262386625588

`A254728(eq[4, A219347(n)])`
-/

namespace A254727.P13374434262386625588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254727.P13374434262386625588

/-! ## A254727.P5806213131265953377

`A254728(eq[6, A193592(n)])`
-/

namespace A254727.P5806213131265953377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254727.P5806213131265953377

/-!
# A254729: Number of numbers j + k*sqrt(2) of length n, where the length is the least number of steps to reach 0, the allowable steps being x -> x + 1 and x -> x*sqrt(2).

The programs for A254729, the canonical program `A254729.P5806604136523306291` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254729 has offset 0).

The definition of A254729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254729.P5806604136523306291

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254729

/-- `a(n-1)+a(n-2)` -/
def P5806604136523306291.Spec : Prop :=
  ∀ n, (P5806604136523306291.a n : ℤ) = A254729 n

theorem P5806604136523306291.correct : P5806604136523306291.Spec := by
  intro n
  simp only [A254729]

end A254729

/-! ## A254729.P623872437341283248

`round(ϕ^(n-1))`
-/

namespace A254729.P623872437341283248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ))

end

end A254729.P623872437341283248

namespace A254729

/-- `round(ϕ^(n-1))` -/
def P623872437341283248.Spec : Prop :=
  ∀ n, P623872437341283248.a n = A254729 n

end A254729

/-! ## A254729.P5713554787406805808

`floor(cos(1)+ϕ^(n-1))`
-/

namespace A254729.P5713554787406805808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A254729.P5713554787406805808

namespace A254729

/-- `floor(cos(1)+ϕ^(n-1))` -/
def P5713554787406805808.Spec : Prop :=
  ∀ n, P5713554787406805808.a n = A254729 n

end A254729

/-! ## A254729.P2009552303431879518

`ceil(cos(2)+ϕ^(n-1))`
-/

namespace A254729.P2009552303431879518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (2 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A254729.P2009552303431879518

namespace A254729

/-- `ceil(cos(2)+ϕ^(n-1))` -/
def P2009552303431879518.Spec : Prop :=
  ∀ n, P2009552303431879518.a n = A254729 n

end A254729

/-! ## A254729.P16692407777459570173

`ceil(ϕ^(n-1)-cos(1))`
-/

namespace A254729.P16692407777459570173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - Real.cos (1 : ℝ)⌉

end

end A254729.P16692407777459570173

namespace A254729

/-- `ceil(ϕ^(n-1)-cos(1))` -/
def P16692407777459570173.Spec : Prop :=
  ∀ n, P16692407777459570173.a n = A254729 n

end A254729

/-! ## A254729.P1462753523442424055

`floor(ϕ^(n-1)-cos(2))`
-/

namespace A254729.P1462753523442424055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - Real.cos (2 : ℝ)⌋

end

end A254729.P1462753523442424055

namespace A254729

/-- `floor(ϕ^(n-1)-cos(2))` -/
def P1462753523442424055.Spec : Prop :=
  ∀ n, P1462753523442424055.a n = A254729 n

end A254729

/-! ## A254729.P6460445300574046747

`floor(ϕ^(n-1)-sin(4))`
-/

namespace A254729.P6460445300574046747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - Real.sin (4 : ℝ)⌋

end

end A254729.P6460445300574046747

namespace A254729

/-- `floor(ϕ^(n-1)-sin(4))` -/
def P6460445300574046747.Spec : Prop :=
  ∀ n, P6460445300574046747.a n = A254729 n

end A254729

/-! ## A254729.P5871100335921132974

`ceil(sin(6)+ϕ^(n-1))`
-/

namespace A254729.P5871100335921132974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (6 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A254729.P5871100335921132974

namespace A254729

/-- `ceil(sin(6)+ϕ^(n-1))` -/
def P5871100335921132974.Spec : Prop :=
  ∀ n, P5871100335921132974.a n = A254729 n

end A254729

/-! ## A254729.P5127622572792131141

`floor(tanh(1)+ϕ^(n-1))`
-/

namespace A254729.P5127622572792131141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A254729.P5127622572792131141

namespace A254729

/-- `floor(tanh(1)+ϕ^(n-1))` -/
def P5127622572792131141.Spec : Prop :=
  ∀ n, P5127622572792131141.a n = A254729 n

end A254729

/-! ## A254729.P2125663602166914973

`ceil(tan(6)+ϕ^(n-1))`
-/

namespace A254729.P2125663602166914973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (6 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A254729.P2125663602166914973

namespace A254729

/-- `ceil(tan(6)+ϕ^(n-1))` -/
def P2125663602166914973.Spec : Prop :=
  ∀ n, P2125663602166914973.a n = A254729 n

end A254729

/-! ## A254729.P10234338035210422467

`floor(cot(1)+ϕ^(n-1))`
-/

namespace A254729.P10234338035210422467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (1 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A254729.P10234338035210422467

namespace A254729

/-- `floor(cot(1)+ϕ^(n-1))` -/
def P10234338035210422467.Spec : Prop :=
  ∀ n, P10234338035210422467.a n = A254729 n

end A254729

/-! ## A254729.P11494135195705343143

`ceil(cot(2)+ϕ^(n-1))`
-/

namespace A254729.P11494135195705343143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A254729.P11494135195705343143

namespace A254729

/-- `ceil(cot(2)+ϕ^(n-1))` -/
def P11494135195705343143.Spec : Prop :=
  ∀ n, P11494135195705343143.a n = A254729 n

end A254729

/-! ## A254729.P7178955808889214114

`floor(acot(2)+ϕ^(n-1))`
-/

namespace A254729.P7178955808889214114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A254729.P7178955808889214114

namespace A254729

/-- `floor(acot(2)+ϕ^(n-1))` -/
def P7178955808889214114.Spec : Prop :=
  ∀ n, P7178955808889214114.a n = A254729 n

end A254729

/-! ## A254729.P7929143771987817570

`floor(tan(10)+ϕ^(n-1))`
-/

namespace A254729.P7929143771987817570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (10 : ℝ) + Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A254729.P7929143771987817570

namespace A254729

/-- `floor(tan(10)+ϕ^(n-1))` -/
def P7929143771987817570.Spec : Prop :=
  ∀ n, P7929143771987817570.a n = A254729 n

end A254729

/-! ## A254729.P5038448699975165996

`floor(ϕ^(n-1)-cot(2))`
-/

namespace A254729.P5038448699975165996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - Real.cot (2 : ℝ)⌋

end

end A254729.P5038448699975165996

namespace A254729

/-- `floor(ϕ^(n-1)-cot(2))` -/
def P5038448699975165996.Spec : Prop :=
  ∀ n, P5038448699975165996.a n = A254729 n

end A254729

/-! ## A254729.P13363128436588877812

`ceil(ϕ^(n-1)-sin(9))`
-/

namespace A254729.P13363128436588877812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - Real.sin (9 : ℝ)⌉

end

end A254729.P13363128436588877812

namespace A254729

/-- `ceil(ϕ^(n-1)-sin(9))` -/
def P13363128436588877812.Spec : Prop :=
  ∀ n, P13363128436588877812.a n = A254729 n

end A254729

/-! ## A254729.P12433091143211596670

`floor(ϕ^(n-1)-tan(9))`
-/

namespace A254729.P12433091143211596670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - Real.tan (9 : ℝ)⌋

end

end A254729.P12433091143211596670

namespace A254729

/-- `floor(ϕ^(n-1)-tan(9))` -/
def P12433091143211596670.Spec : Prop :=
  ∀ n, P12433091143211596670.a n = A254729 n

end A254729

/-! ## A254729.P9566548870418858844

`ceil(ϕ^(n-1)-acot(2))`
-/

namespace A254729.P9566548870418858844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ ((n : ℤ) - 1 : ℤ) - SequenceMachineLib.acot (2 : ℝ)⌉

end

end A254729.P9566548870418858844

namespace A254729

/-- `ceil(ϕ^(n-1)-acot(2))` -/
def P9566548870418858844.Spec : Prop :=
  ∀ n, P9566548870418858844.a n = A254729 n

end A254729

/-! ## A254729.P15641922148357091266

`floor(∑[ϕ^((n-3)%(n+3))])`
-/

namespace A254729.P15641922148357091266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 3) (n + 3 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A254729.P15641922148357091266

namespace A254729

/-- `floor(∑[ϕ^((n-3)%(n+3))])` -/
def P15641922148357091266.Spec : Prop :=
  ∀ n, P15641922148357091266.a n = A254729 n

end A254729

/-! ## A254729.P10084764766920663093

`floor(∑[ϕ*a(n-1)])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A254729.P10084764766920663093
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A254729.P10084764766920663093

namespace A254729

/-- `floor(∑[ϕ*a(n-1)])` -/
def P10084764766920663093.Spec : Prop :=
  ∀ n, P10084764766920663093.a n = A254729 n

end A254729

/-!
# A254730: Triangle read by rows: T(n,k) = A243758(n)/(A243758(k)*A243758(n-k)).

The programs for A254730, there is no canonical definition to state claims against.
-/

/-! ## A254730.P715212159443559335

`A008458(val(A022167(n), 7))`
-/

namespace A254730.P715212159443559335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.valuation (A022167 n).toNat 7)

end

end A254730.P715212159443559335

/-! ## A254730.P10199433582279639845

`A184413(3*val(A022167(n), 7)+1)`
-/

namespace A254730.P10199433582279639845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184413 (3 * SequenceMachineLib.valuation (A022167 n).toNat 7 + 1)

end

end A254730.P10199433582279639845

/-! ## A254730.P9318999048155453176

`A008486(val(A022167(n)², 7))`
-/

namespace A254730.P9318999048155453176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.valuation (A022167 n ^ 2).toNat 7)

end

end A254730.P9318999048155453176

/-! ## A254730.P5672200087946184838

`val(A022183(n), 7)!`
-/

namespace A254730.P5672200087946184838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A022183 n).toNat 7)

end

end A254730.P5672200087946184838

/-! ## A254730.P17201984210176101989

`A009963(gcd(A022188(n), A176643(n)))`
-/

namespace A254730.P17201984210176101989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (Int.gcd (A022188 n) (A176643 n))

end

end A254730.P17201984210176101989

/-! ## A254730.P16024372750967570319

`∏{e}[A010048(n), #*A079125(A102568(#+1)+1)]`
-/

namespace A254730.P16024372750967570319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A079125 (A102568 (Nat.factorization (f1 n).natAbs p + 1) + 1).toNat

end

end A254730.P16024372750967570319

/-! ## A254730.P13306344161947644083

`A010122(A172358(n))`
-/

namespace A254730.P13306344161947644083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 (A172358 n).toNat

end

end A254730.P13306344161947644083

/-! ## A254730.P6638775287297023814

`gcd(6, A008683(A010048(n)))`
-/

namespace A254730.P6638775287297023814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A008683 (A010048 n).toNat)

end

end A254730.P6638775287297023814

/-!
# A254732: a(n) is the least k > n such that n divides k^2.

The programs for A254732, the canonical program `A254732.P8036064587861871874` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254732 has offset 1).

The definition of A254732 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A019554, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254732.P17064236381221656999

`sqrt((n+1)*A072905(n+1))`
-/

namespace A254732.P17064236381221656999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A072905 (n + 1) : ℝ)

end

end A254732.P17064236381221656999

namespace A254732

/-- `sqrt((n+1)*A072905(n+1))` -/
def P17064236381221656999.Spec : Prop :=
  ∀ n, P17064236381221656999.a n = (A254732 (n + 1) : ℝ)

end A254732

/-! ## A254732.P8036064587861871874

`A019554(n+1)*(A000188(n+1)+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A254732

/-- `A019554(n+1)*(A000188(n+1)+1)` -/
def P8036064587861871874.Spec : Prop :=
  ∀ n, P8036064587861871874.a n = A254732 (n + 1)

theorem P8036064587861871874.correct : P8036064587861871874.Spec := by
  intro n
  simp only [A254732, Nat.add_sub_cancel]

end A254732

/-! ## A254732.P10560656774648933896

`A019554(n+1)+1+n`
-/

namespace A254732.P10560656774648933896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) + 1 + (n : ℤ)

end

end A254732.P10560656774648933896

namespace A254732

/-- `A019554(n+1)+1+n` -/
def P10560656774648933896.Spec : Prop :=
  ∀ n, P10560656774648933896.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P16020307662218611952

`sqrt(A053143(n+1))+1+n`
-/

namespace A254732.P16020307662218611952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A254732.P16020307662218611952

namespace A254732

/-- `sqrt(A053143(n+1))+1+n` -/
def P16020307662218611952.Spec : Prop :=
  ∀ n, P16020307662218611952.a n = (A254732 (n + 1) : ℝ)

end A254732

/-! ## A254732.P4284293522990261949

`n+1+sqrt((n+1)*A007913(n+1))`
-/

namespace A254732.P4284293522990261949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + Real.sqrt ((n + 1 : ℤ) * A007913 (n + 1) : ℝ)

end

end A254732.P4284293522990261949

namespace A254732

/-- `n+1+sqrt((n+1)*A007913(n+1))` -/
def P4284293522990261949.Spec : Prop :=
  ∀ n, P4284293522990261949.a n = (A254732 (n + 1) : ℝ)

end A254732

/-! ## A254732.P9439156725558029172

`(n+1)/(A057918(n+1)+1)+n+1`
-/

namespace A254732.P9439156725558029172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057918 (n + 1) + 1 : ℚ) + (n + 1 : ℚ)

end

end A254732.P9439156725558029172

namespace A254732

/-- `(n+1)/(A057918(n+1)+1)+n+1` -/
def P9439156725558029172.Spec : Prop :=
  ∀ n, P9439156725558029172.a n = (A254732 (n + 1) : ℚ)

end A254732

/-! ## A254732.P6549224288948713938

`n+1+(n+1)/A337101(2*(n+1))`
-/

namespace A254732.P6549224288948713938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (n + 1 : ℚ) / (A337101 (2 * (n + 1)) : ℚ)

end

end A254732.P6549224288948713938

namespace A254732

/-- `n+1+(n+1)/A337101(2*(n+1))` -/
def P6549224288948713938.Spec : Prop :=
  ∀ n, P6549224288948713938.a n = (A254732 (n + 1) : ℚ)

end A254732

/-! ## A254732.P17064596736983946972

`A020725(A019554(n+1))+n`
-/

namespace A254732.P17064596736983946972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A019554 (n + 1)).toNat + (n : ℤ)

end

end A254732.P17064596736983946972

namespace A254732

/-- `A020725(A019554(n+1))+n` -/
def P17064596736983946972.Spec : Prop :=
  ∀ n, P17064596736983946972.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P15524679598489381259

`A038388(A186646(n+1))+1+n`
-/

namespace A254732.P15524679598489381259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A186646 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254732.P15524679598489381259

namespace A254732

/-- `A038388(A186646(n+1))+1+n` -/
def P15524679598489381259.Spec : Prop :=
  ∀ n, P15524679598489381259.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P29823427683795985

`A038388(A350390(n+1))+1+n`
-/

namespace A254732.P29823427683795985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (A350390 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254732.P29823427683795985

namespace A254732

/-- `A038388(A350390(n+1))+1+n` -/
def P29823427683795985.Spec : Prop :=
  ∀ n, P29823427683795985.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P11827279252461167218

`n+1+A000188(n+1)*A007913(n+1)`
-/

namespace A254732.P11827279252461167218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000188 (n + 1) * A007913 (n + 1)

end

end A254732.P11827279252461167218

namespace A254732

/-- `n+1+A000188(n+1)*A007913(n+1)` -/
def P11827279252461167218.Spec : Prop :=
  ∀ n, P11827279252461167218.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P17078421488724588884

`A007947(n+1)*A295657(n+1)+1+n`
-/

namespace A254732.P17078421488724588884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A295657 (n + 1) + 1 + (n : ℤ)

end

end A254732.P17078421488724588884

namespace A254732

/-- `A007947(n+1)*A295657(n+1)+1+n` -/
def P17078421488724588884.Spec : Prop :=
  ∀ n, P17078421488724588884.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P5015445877007428843

`A000037(A008833(n+1))*A007913(n+1)`
-/

namespace A254732.P5015445877007428843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A008833 (n + 1)).toNat * A007913 (n + 1)

end

end A254732.P5015445877007428843

namespace A254732

/-- `A000037(A008833(n+1))*A007913(n+1)` -/
def P5015445877007428843.Spec : Prop :=
  ∀ n, P5015445877007428843.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P1715635970649147124

`A020725(A000188(n+1)*A007913(n+1))+n`
-/

namespace A254732.P1715635970649147124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000188 (n + 1) * A007913 (n + 1)).toNat + (n : ℤ)

end

end A254732.P1715635970649147124

namespace A254732

/-- `A020725(A000188(n+1)*A007913(n+1))+n` -/
def P1715635970649147124.Spec : Prop :=
  ∀ n, P1715635970649147124.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P4714805927564311372

`(A003557(n+1)+A000188(A003557(n+1)))*A007947(n+1)`
-/

namespace A254732.P4714805927564311372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) + A000188 (A003557 (n + 1)).toNat) * A007947 (n + 1)

end

end A254732.P4714805927564311372

namespace A254732

/-- `(A003557(n+1)+A000188(A003557(n+1)))*A007947(n+1)` -/
def P4714805927564311372.Spec : Prop :=
  ∀ n, P4714805927564311372.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P10725127079177973973

`A242219(2*(n+1))/2`
-/

namespace A254732.P10725127079177973973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242219 (2 * (n + 1)) : ℚ) / 2

end

end A254732.P10725127079177973973

namespace A254732

/-- `A242219(2*(n+1))/2` -/
def P10725127079177973973.Spec : Prop :=
  ∀ n, P10725127079177973973.a n = (A254732 (n + 1) : ℚ)

end A254732

/-! ## A254732.P9155530068134079098

`n+1+A110654(A038388(2*(n+1)))`
-/

namespace A254732.P9155530068134079098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A110654 (A038388 (2 * (n + 1))).toNat

end

end A254732.P9155530068134079098

namespace A254732

/-- `n+1+A110654(A038388(2*(n+1)))` -/
def P9155530068134079098.Spec : Prop :=
  ∀ n, P9155530068134079098.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P6750033470782107136

`A014681(A000188(n+1)*A007913(n+1)+n)`
-/

namespace A254732.P6750033470782107136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A000188 (n + 1) * A007913 (n + 1) + (n : ℤ)).toNat

end

end A254732.P6750033470782107136

namespace A254732

/-- `A014681(A000188(n+1)*A007913(n+1)+n)` -/
def P6750033470782107136.Spec : Prop :=
  ∀ n, P6750033470782107136.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P8259913943623617424

`A019555(A355264(n+1))+1+n`
-/

namespace A254732.P8259913943623617424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A355264 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254732.P8259913943623617424

namespace A254732

/-- `A019555(A355264(n+1))+1+n` -/
def P8259913943623617424.Spec : Prop :=
  ∀ n, P8259913943623617424.a n = A254732 (n + 1)

end A254732

/-! ## A254732.P4845307366546643094

`A053166(A102631(n+1))+n+1`
-/

namespace A254732.P4845307366546643094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A102631 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254732.P4845307366546643094

namespace A254732

/-- `A053166(A102631(n+1))+n+1` -/
def P4845307366546643094.Spec : Prop :=
  ∀ n, P4845307366546643094.a n = A254732 (n + 1)

end A254732

/-!
# A254733: a(n) is the least k > n such that n divides k^3.

The programs for A254733, the canonical program `A254733.P14747783543240587922` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254733 has offset 1).

The definition of A254733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019555, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254733.P14747783543240587922

`n+1+A019555(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A254733

/-- `n+1+A019555(n+1)` -/
def P14747783543240587922.Spec : Prop :=
  ∀ n, P14747783543240587922.a n = A254733 (n + 1)

theorem P14747783543240587922.correct : P14747783543240587922.Spec := by
  intro n
  simp only [A254733, Nat.add_sub_cancel]

end A254733

/-! ## A254733.P16088920043728453858

`(n+1)/A000189(n+1)+1+n`
-/

namespace A254733.P16088920043728453858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000189 (n + 1) : ℚ) + 1 + (n : ℚ)

end

end A254733.P16088920043728453858

namespace A254733

/-- `(n+1)/A000189(n+1)+1+n` -/
def P16088920043728453858.Spec : Prop :=
  ∀ n, P16088920043728453858.a n = (A254733 (n + 1) : ℚ)

end A254733

/-! ## A254733.P6822223528264282126

`A019554((n+1)/A053150(n+1))+n+1`
-/

namespace A254733.P6822223528264282126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053150 (n + 1) : ℚ))).toNat + (n + 1 : ℤ)

end

end A254733.P6822223528264282126

namespace A254733

/-- `A019554((n+1)/A053150(n+1))+n+1` -/
def P6822223528264282126.Spec : Prop :=
  ∀ n, P6822223528264282126.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P8949014124916268481

`A014681(A019555(n+1)+n)`
-/

namespace A254733.P8949014124916268481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A019555 (n + 1) + (n : ℤ)).toNat

end

end A254733.P8949014124916268481

namespace A254733

/-- `A014681(A019555(n+1)+n)` -/
def P8949014124916268481.Spec : Prop :=
  ∀ n, P8949014124916268481.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P5967875194713977972

`A053166((n+1)*A053150(n+1))+n+1`
-/

namespace A254733.P5967875194713977972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1 : ℤ) * A053150 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P5967875194713977972

namespace A254733

/-- `A053166((n+1)*A053150(n+1))+n+1` -/
def P5967875194713977972.Spec : Prop :=
  ∀ n, P5967875194713977972.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P157891709384473815

`A053166(A053166(n+1)*A057521(n+1))+n+1`
-/

namespace A254733.P157891709384473815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1) * A057521 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P157891709384473815

namespace A254733

/-- `A053166(A053166(n+1)*A057521(n+1))+n+1` -/
def P157891709384473815.Spec : Prop :=
  ∀ n, P157891709384473815.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P5350820604797312339

`A015052((n+1)*A000189(n+1))+n+1`
-/

namespace A254733.P5350820604797312339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A000189 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P5350820604797312339

namespace A254733

/-- `A015052((n+1)*A000189(n+1))+n+1` -/
def P5350820604797312339.Spec : Prop :=
  ∀ n, P5350820604797312339.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P13847748099893842132

`A015052((n+1)*A000190(n+1))+n+1`
-/

namespace A254733.P13847748099893842132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A000190 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P13847748099893842132

namespace A254733

/-- `A015052((n+1)*A000190(n+1))+n+1` -/
def P13847748099893842132.Spec : Prop :=
  ∀ n, P13847748099893842132.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P12295536588857095965

`A015053(A102631(n+1))+n+1`
-/

namespace A254733.P12295536588857095965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A102631 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P12295536588857095965

namespace A254733

/-- `A015053(A102631(n+1))+n+1` -/
def P12295536588857095965.Spec : Prop :=
  ∀ n, P12295536588857095965.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P12644870243520155143

`A015052((n+1)²/A015052(n+1))+n+1`
-/

namespace A254733.P12644870243520155143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A015052 (n + 1) : ℚ))).toNat + (n + 1 : ℤ)

end

end A254733.P12644870243520155143

namespace A254733

/-- `A015052((n+1)²/A015052(n+1))+n+1` -/
def P12644870243520155143.Spec : Prop :=
  ∀ n, P12644870243520155143.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P8567109037379098209

`A015052((n+1)*(n+1)/A015052(n+1))+n+1`
-/

namespace A254733.P8567109037379098209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / (A015052 (n + 1) : ℚ)))).toNat + (n + 1 : ℤ)

end

end A254733.P8567109037379098209

namespace A254733

/-- `A015052((n+1)*(n+1)/A015052(n+1))+n+1` -/
def P8567109037379098209.Spec : Prop :=
  ∀ n, P8567109037379098209.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P8258988698375085942

`A272327(∑[n+2]+4)`
-/

namespace A254733.P8258988698375085942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272327 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254733.P8258988698375085942

namespace A254733

/-- `A272327(∑[n+2]+4)` -/
def P8258988698375085942.Spec : Prop :=
  ∀ n, P8258988698375085942.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P8996736402646346042

`A015053((n+1)²)+n+1`
-/

namespace A254733.P8996736402646346042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 ((n + 1) ^ 2) + (n + 1 : ℤ)

end

end A254733.P8996736402646346042

namespace A254733

/-- `A015053((n+1)²)+n+1` -/
def P8996736402646346042.Spec : Prop :=
  ∀ n, P8996736402646346042.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P17585460044657149733

`(n+1)/A053150((n+1)²)+n+1`
-/

namespace A254733.P17585460044657149733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053150 ((n + 1) ^ 2) : ℚ) + (n + 1 : ℚ)

end

end A254733.P17585460044657149733

namespace A254733

/-- `(n+1)/A053150((n+1)²)+n+1` -/
def P17585460044657149733.Spec : Prop :=
  ∀ n, P17585460044657149733.a n = (A254733 (n + 1) : ℚ)

end A254733

/-! ## A254733.P10628157721625816066

`A053166(A064549(n+1))+1+n`
-/

namespace A254733.P10628157721625816066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A064549 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254733.P10628157721625816066

namespace A254733

/-- `A053166(A064549(n+1))+1+n` -/
def P10628157721625816066.Spec : Prop :=
  ∀ n, P10628157721625816066.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P16916235360684401984

`A053166(A285109(n+1))+1+n`
-/

namespace A254733.P16916235360684401984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A285109 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254733.P16916235360684401984

namespace A254733

/-- `A053166(A285109(n+1))+1+n` -/
def P16916235360684401984.Spec : Prop :=
  ∀ n, P16916235360684401984.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P6752128890541477707

`A053166((n+1)*A020639(n+1))+n+1`
-/

namespace A254733.P6752128890541477707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1 : ℤ) * A020639 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P6752128890541477707

namespace A254733

/-- `A053166((n+1)*A020639(n+1))+n+1` -/
def P6752128890541477707.Spec : Prop :=
  ∀ n, P6752128890541477707.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P13565616743627507132

`A053166((n+1)*A053166(n+1))+1+n`
-/

namespace A254733.P13565616743627507132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1 : ℤ) * A053166 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254733.P13565616743627507132

namespace A254733

/-- `A053166((n+1)*A053166(n+1))+1+n` -/
def P13565616743627507132.Spec : Prop :=
  ∀ n, P13565616743627507132.a n = A254733 (n + 1)

end A254733

/-! ## A254733.P10272891952548180278

`A000188(A000189(n+1)*A048798(n+1))+n+1`
-/

namespace A254733.P10272891952548180278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000189 (n + 1) * A048798 (n + 1)).toNat + (n + 1 : ℤ)

end

end A254733.P10272891952548180278

namespace A254733

/-- `A000188(A000189(n+1)*A048798(n+1))+n+1` -/
def P10272891952548180278.Spec : Prop :=
  ∀ n, P10272891952548180278.a n = A254733 (n + 1)

end A254733

/-!
# A254734: a(n) is the least k > n such that n divides k^4.

The programs for A254734, the canonical program `A254734.P5864895102281337725` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254734 has offset 1).

The definition of A254734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254734.P5864895102281337725

`A053166(n+1)+1+n`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A254734

/-- `A053166(n+1)+1+n` -/
def P5864895102281337725.Spec : Prop :=
  ∀ n, P5864895102281337725.a n = A254734 (n + 1)

theorem P5864895102281337725.correct : P5864895102281337725.Spec := by
  intro n
  simp only [A254734, Nat.add_sub_cancel]

end A254734

/-! ## A254734.P8765281129036939107

`sqrt(sqrt(A053167(n+1)))+1+n`
-/

namespace A254734.P8765281129036939107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A053167 (n + 1) : ℝ)) + 1 + (n : ℝ)

end

end A254734.P8765281129036939107

namespace A254734

/-- `sqrt(sqrt(A053167(n+1)))+1+n` -/
def P8765281129036939107.Spec : Prop :=
  ∀ n, P8765281129036939107.a n = (A254734 (n + 1) : ℝ)

end A254734

/-! ## A254734.P13143977895732748562

`ceil((n+2)/A000190(n+1)+n)`
-/

namespace A254734.P13143977895732748562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / (A000190 (n + 1) : ℚ) + (n : ℚ)⌉

end

end A254734.P13143977895732748562

namespace A254734

/-- `ceil((n+2)/A000190(n+1)+n)` -/
def P13143977895732748562.Spec : Prop :=
  ∀ n, P13143977895732748562.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P8121769398587539561

`A015906(A053166(n+1)+n)`
-/

namespace A254734.P8121769398587539561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A053166 (n + 1) + (n : ℤ)).toNat

end

end A254734.P8121769398587539561

namespace A254734

/-- `A015906(A053166(n+1)+n)` -/
def P8121769398587539561.Spec : Prop :=
  ∀ n, P8121769398587539561.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P9506611532320935352

`A019554(A019554(n+1))+1+n`
-/

namespace A254734.P9506611532320935352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254734.P9506611532320935352

namespace A254734

/-- `A019554(A019554(n+1))+1+n` -/
def P9506611532320935352.Spec : Prop :=
  ∀ n, P9506611532320935352.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P6676011894840558246

`sqrt(A053143(sqrt(A053143(n+1))))+n+1`
-/

namespace A254734.P6676011894840558246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (SequenceMachineLib.roundAway (Real.sqrt (A053143 (n + 1) : ℝ))).toNat : ℝ) + (n + 1 : ℝ)

end

end A254734.P6676011894840558246

namespace A254734

/-- `sqrt(A053143(sqrt(A053143(n+1))))+n+1` -/
def P6676011894840558246.Spec : Prop :=
  ∀ n, P6676011894840558246.a n = (A254734 (n + 1) : ℝ)

end A254734

/-! ## A254734.P11968907364287532918

`A015052(A114562(n+1))+1+n`
-/

namespace A254734.P11968907364287532918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A114562 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254734.P11968907364287532918

namespace A254734

/-- `A015052(A114562(n+1))+1+n` -/
def P11968907364287532918.Spec : Prop :=
  ∀ n, P11968907364287532918.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P431805127629395378

`A272327(A167614(n+2)+1)`
-/

namespace A254734.P431805127629395378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272327 (A167614 (n + 2) + 1).toNat

end

end A254734.P431805127629395378

namespace A254734

/-- `A272327(A167614(n+2)+1)` -/
def P431805127629395378.Spec : Prop :=
  ∀ n, P431805127629395378.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P5554516328382588330

`A015052(A053143(n+1))+1+n`
-/

namespace A254734.P5554516328382588330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A053143 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254734.P5554516328382588330

namespace A254734

/-- `A015052(A053143(n+1))+1+n` -/
def P5554516328382588330.Spec : Prop :=
  ∀ n, P5554516328382588330.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P15770924340643908763

`A015052(A064549(n+1))+1+n`
-/

namespace A254734.P15770924340643908763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A064549 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254734.P15770924340643908763

namespace A254734

/-- `A015052(A064549(n+1))+1+n` -/
def P15770924340643908763.Spec : Prop :=
  ∀ n, P15770924340643908763.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P2229465373502118119

`A015052(A285109(n+1))+1+n`
-/

namespace A254734.P2229465373502118119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A285109 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254734.P2229465373502118119

namespace A254734

/-- `A015052(A285109(n+1))+1+n` -/
def P2229465373502118119.Spec : Prop :=
  ∀ n, P2229465373502118119.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P10574865117185399672

`A019555(A019555((n+1)²))+1+n`
-/

namespace A254734.P10574865117185399672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019555 ((n + 1) ^ 2)).toNat + 1 + (n : ℤ)

end

end A254734.P10574865117185399672

namespace A254734

/-- `A019555(A019555((n+1)²))+1+n` -/
def P10574865117185399672.Spec : Prop :=
  ∀ n, P10574865117185399672.a n = A254734 (n + 1)

end A254734

/-! ## A254734.P8892143971614378432

`A019555(A019555(A000290(n+1)))+n+1`
-/

namespace A254734.P8892143971614378432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A019555 (A000290 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A254734.P8892143971614378432

namespace A254734

/-- `A019555(A019555(A000290(n+1)))+n+1` -/
def P8892143971614378432.Spec : Prop :=
  ∀ n, P8892143971614378432.a n = A254734 (n + 1)

end A254734

/-!
# A254735: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254735, there is no canonical definition to state claims against.
-/

/-! ## A254735.P9399633658815795392

`A254743(∑[4*n]+1)`
-/

namespace A254735.P9399633658815795392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254735.P9399633658815795392

/-! ## A254735.P421949773664257118

`A254743(A001844(n))+char[10]`
-/

namespace A254735.P421949773664257118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254735.P421949773664257118

/-! ## A254735.P12965962768127675612

`record[A003982(n)*A254743(n+1)]`
-/

namespace A254735.P12965962768127675612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254735.P12965962768127675612

/-! ## A254735.P6943017214511410537

`record[gcd(A003987(n), A254743(n+1))]`
-/

namespace A254735.P6943017214511410537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A254743 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254735.P6943017214511410537

/-! ## A254735.P2869709605683665429

`A254743(A001844(n))/A007318(A007318(n))`
-/

namespace A254735.P2869709605683665429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254743 (A001844 n).toNat : ℚ) / (A007318 (A007318 n).toNat : ℚ)

end

end A254735.P2869709605683665429

/-!
# A254736: Number of (n+2) X (1+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254736, there is no canonical definition to state claims against.
-/

/-! ## A254736.P6509271048527941352

`A254743(∑[n]+1)`
-/

namespace A254736.P6509271048527941352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254736.P6509271048527941352

/-! ## A254736.P6194383691136344821

`record[root(A254743(n+1), A278493(n))]`
-/

namespace A254736.P6194383691136344821
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254743 (n + 1) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254736.P6194383691136344821

/-! ## A254736.P6002805860806264001

`record[gcd(A002262(n), A254743(n+1))]`
-/

namespace A254736.P6002805860806264001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254743 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254736.P6002805860806264001

/-! ## A254736.P16614417200368267352

`record[A254743(n+1)/A296039(n+1)]`
-/

namespace A254736.P16614417200368267352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254743 (n + 1) : ℚ) / (A296039 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254736.P16614417200368267352

/-! ## A254736.P10202564857039262473

`record[A254743(n+1)/A199530(n+1)²]`
-/

namespace A254736.P10202564857039262473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254743 (n + 1) : ℚ) / (A199530 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254736.P10202564857039262473

/-!
# A254737: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254737, there is no canonical definition to state claims against.
-/

/-! ## A254737.P3293715542403382146

`A254743(∑[n+1]+2)`
-/

namespace A254737.P3293715542403382146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254737.P3293715542403382146

/-! ## A254737.P11659265370411374827

`record[root(A254743(n+2), A278493(n))]`
-/

namespace A254737.P11659265370411374827
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254743 (n + 2) : ℝ) ^ (1 / (A278493 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254737.P11659265370411374827

/-! ## A254737.P17018131872752188739

`record[gcd(A002262(n), A254743(n+2))]`
-/

namespace A254737.P17018131872752188739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254743 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254737.P17018131872752188739

/-! ## A254737.P11366470254002373031

`record[A254743(abs(A201163(n)))]`
-/

namespace A254737.P11366470254002373031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254737.P11366470254002373031

/-! ## A254737.P12767095690593734785

`record[A254743(Δ[A003453(n+5)])]`
-/

namespace A254737.P12767095690593734785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254737.P12767095690593734785

/-!
# A254738: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254738, there is no canonical definition to state claims against.
-/

/-! ## A254738.P3862130815296258984

`A254743(∑[n+2]+4)`
-/

namespace A254738.P3862130815296258984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254738.P3862130815296258984

/-! ## A254738.P1253153084523096423

`A254743(A167614(n+1))+A185284(n)`
-/

namespace A254738.P1253153084523096423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A167614 (n + 1)).toNat + A185284 n

end

end A254738.P1253153084523096423

/-! ## A254738.P13190869141320947744

`A254743(A167614(n+1))+A235044(n)`
-/

namespace A254738.P13190869141320947744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A167614 (n + 1)).toNat + A235044 n

end

end A254738.P13190869141320947744

/-! ## A254738.P11496341801034892501

`lcm(A054977(n), A254743(A167614(n+1)))`
-/

namespace A254738.P11496341801034892501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A254743 (A167614 (n + 1)).toNat)

end

end A254738.P11496341801034892501

/-! ## A254738.P1517213463775250914

`A254743(A167614(n+1))%A254741(n+1)`
-/

namespace A254738.P1517213463775250914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254743 (A167614 (n + 1)).toNat) (A254741 (n + 1))

end

end A254738.P1517213463775250914

/-!
# A254739: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254739, there is no canonical definition to state claims against.
-/

/-! ## A254739.P12062483909653301546

`A254743(A374004(n+1))`
-/

namespace A254739.P12062483909653301546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A374004 (n + 1)).toNat

end

end A254739.P12062483909653301546

/-! ## A254739.P1236822708353404904

`A254743(A141214(n)+7)`
-/

namespace A254739.P1236822708353404904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A141214 n + 7).toNat

end

end A254739.P1236822708353404904

/-! ## A254739.P11795781772461608304

`A254743(A052905(n)+9)`
-/

namespace A254739.P11795781772461608304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A052905 n + 9).toNat

end

end A254739.P11795781772461608304

/-! ## A254739.P10786106323902290596

`A254743(Δ[A006503(n)]+7)`
-/

namespace A254739.P10786106323902290596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (f1 (n + 1) - f1 n + 7).toNat

end

end A254739.P10786106323902290596

/-! ## A254739.P7995112215763700488

`A254743(A167614(n+2)+1)`
-/

namespace A254739.P7995112215763700488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A167614 (n + 2) + 1).toNat

end

end A254739.P7995112215763700488

/-!
# A254740: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254740, there is no canonical definition to state claims against.
-/

/-! ## A254740.P10651639329318860803

`A254743(A374005(n+1))`
-/

namespace A254740.P10651639329318860803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A374005 (n + 1)).toNat

end

end A254740.P10651639329318860803

/-! ## A254740.P14255173591543806487

`A254743(A056000(n)+15)`
-/

namespace A254740.P14255173591543806487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A056000 n + 15).toNat

end

end A254740.P14255173591543806487

/-! ## A254740.P3672128427734385500

`A254743(eq[6, A131818(n+1)])`
-/

namespace A254740.P3672128427734385500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254740.P3672128427734385500

/-! ## A254740.P3382717079023575678

`A254743(eq[4, A193592(n)])`
-/

namespace A254740.P3382717079023575678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254740.P3382717079023575678

/-! ## A254740.P10227230686289625426

`A254743(A246172(n+1)+10)`
-/

namespace A254740.P10227230686289625426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A246172 (n + 1) + 10).toNat

end

end A254740.P10227230686289625426

/-!
# A254741: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254741, there is no canonical definition to state claims against.
-/

/-! ## A254741.P13906028874747460285

`A254743(A374007(n+1))`
-/

namespace A254741.P13906028874747460285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A374007 (n + 1)).toNat

end

end A254741.P13906028874747460285

/-! ## A254741.P14839298180244599309

`A254743(eq[7, A131818(n+1)])`
-/

namespace A254741.P14839298180244599309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254741.P14839298180244599309

/-! ## A254741.P4595531068127556169

`A254743(eq[3, A219347(n)])`
-/

namespace A254741.P4595531068127556169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254741.P4595531068127556169

/-! ## A254741.P16134046725705123633

`A254743(eq[5, A193592(n)])`
-/

namespace A254741.P16134046725705123633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254741.P16134046725705123633

/-! ## A254741.P7298413020292457822

`A254743(eq[16, A209439(n)])`
-/

namespace A254741.P7298413020292457822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254741.P7298413020292457822

/-!
# A254742: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and column minus the sum of the minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254742, there is no canonical definition to state claims against.
-/

/-! ## A254742.P14860734874301291913

`A254743(A374008(n+1))`
-/

namespace A254742.P14860734874301291913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A374008 (n + 1)).toNat

end

end A254742.P14860734874301291913

/-! ## A254742.P10214375428532357112

`A254743(eq[8, A131818(n+1)])`
-/

namespace A254742.P10214375428532357112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254742.P10214375428532357112

/-! ## A254742.P13373494669250128261

`A254743(A000096(n+6)-(n-1))`
-/

namespace A254742.P13373494669250128261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A254742.P13373494669250128261

/-! ## A254742.P2046200446390801266

`A254743(A055999(n+4))`
-/

namespace A254742.P2046200446390801266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (A055999 (n + 4)).toNat

end

end A254742.P2046200446390801266

/-! ## A254742.P3659175901295607476

`A254743(eq[4, A219347(n)])`
-/

namespace A254742.P3659175901295607476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254743 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254742.P3659175901295607476

/-!
# A254744: a(n) = 2^n * Sum_{k=1 .. n-1} a(k) * a(n-1-k) with a(0) = 1.

The programs for A254744, there is no canonical definition to state claims against.
-/

/-! ## A254744.P15097492429056262912

`2^n*A135867(n)`
-/

namespace A254744.P15097492429056262912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A135867 n

end

end A254744.P15097492429056262912

/-! ## A254744.P10055101639912555828

`A135867(n)*A163864(2*n+1)`
-/

namespace A254744.P10055101639912555828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135867 n * A163864 (2 * n + 1)

end

end A254744.P10055101639912555828

/-! ## A254744.P1754339977386962927

`A016116(2*n+3)*A135867(n)/2`
-/

namespace A254744.P1754339977386962927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n + 3) * A135867 n : ℚ) / 2

end

end A254744.P1754339977386962927

/-! ## A254744.P12851026238368117647

`A135867(n)*A156552(A000040(n+1))`
-/

namespace A254744.P12851026238368117647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135867 n * A156552 (A000040 (n + 1)).toNat

end

end A254744.P12851026238368117647

/-! ## A254744.P10766330259333977359

`A135867(n)*A159634(A000079(n))`
-/

namespace A254744.P10766330259333977359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135867 n * A159634 (A000079 n).toNat

end

end A254744.P10766330259333977359

/-!
# A254745: Chebyshev polynomials of the second kind, U(n,x)^2, evaluated at x = sqrt(3)/2.

The programs for A254745, the canonical program `A254745.P1476520725255344508` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254745 has offset 0).

The definition of A254745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254745.P1476520725255344508

`(-1)^n*A078070(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254745

/-- `(-1)^n*A078070(n)` -/
def P1476520725255344508.Spec : Prop :=
  ∀ n, P1476520725255344508.a n = A254745 n

theorem P1476520725255344508.correct : P1476520725255344508.Spec := by
  intro n
  simp only [A254745]

end A254745

/-!
# A254746: a(n) = Catalan(n^2) mod prime(n).

The programs for A254746, there is no canonical definition to state claims against.
-/

/-! ## A254746.P6072629810920731927

`A000108((n+1)²)%A000040(n+1)`
-/

namespace A254746.P6072629810920731927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 ((n + 1) ^ 2)) (A000040 (n + 1))

end

end A254746.P6072629810920731927

/-!
# A254747: a(n) = (1 + Sum_{j=0..n} (C(n,j)*C(3*j-1,j))) / 2.

The programs for A254747, there is no canonical definition to state claims against.
-/

/-! ## A254747.P5350991006749886643

`ceil(A188686(n)/3)`
-/

namespace A254747.P5350991006749886643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A188686 n : ℚ) / 3⌉

end

end A254747.P5350991006749886643

/-! ## A254747.P1317747456592629582

`floor((A188686(n)+A010815(n))/3)+1`
-/

namespace A254747.P1317747456592629582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188686 n + A010815 n : ℚ) / 3⌋ + 1

end

end A254747.P1317747456592629582

/-! ## A254747.P17557364563694441303

`floor(A188686(n)/A000040(A000203(((-1)^n)²)+1))+1`
-/

namespace A254747.P17557364563694441303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188686 n : ℚ) / (A000040 (A000203 (((-1) ^ n) ^ 2).toNat + 1).toNat : ℚ)⌋ + 1

end

end A254747.P17557364563694441303

/-!
# A254748: Numbers without superdivisors: numbers n such that n/k + n fails to divide at least one of (n/k)^(n/k) + n, (n/k)^n + n/k or n^(n/k) + n/k for any divisor k of n.

The programs for A254748, there is no canonical definition to state claims against.
-/

/-! ## A254748.P3191856385331021908

`eq[0, A247477(n+1)]+1`
-/

namespace A254748.P3191856385331021908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254748.P3191856385331021908

/-! ## A254748.P5149981834206792249

`eq[0, A247477(A028310(n))]`
-/

namespace A254748.P5149981834206792249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254748.P5149981834206792249

/-! ## A254748.P6691711091318627804

`A014681(eq[0, A247477(n+1)])`
-/

namespace A254748.P6691711091318627804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254748.P6691711091318627804

/-! ## A254748.P14537995445047721551

`A092486(eq[0, A247477(n+1)])`
-/

namespace A254748.P14537995445047721551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254748.P14537995445047721551

/-! ## A254748.P375842159152054995

`A133265(eq[0, A247477(n+1)])`
-/

namespace A254748.P375842159152054995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254748.P375842159152054995

/-! ## A254748.P14965067314670522293

`A285326(eq[0, A247477(n+1)])`
-/

namespace A254748.P14965067314670522293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254748.P14965067314670522293

/-!
# A254749: 1-gonal pyramidal numbers.

The programs for A254749, the canonical program `A254749.P3684778431787933425` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254749 has offset 1).

The definition of A254749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254749.P13708124636329450907

`(n+1)*(4+3*(n+1)-(n+1)²)/6`
-/

namespace A254749.P13708124636329450907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((4 + 3 * (n + 1) : ℤ) - ((n + 1) ^ 2 : ℤ)) : ℚ) / 6

end

end A254749.P13708124636329450907

namespace A254749

/-- `(n+1)*(4+3*(n+1)-(n+1)²)/6` -/
def P13708124636329450907.Spec : Prop :=
  ∀ n, P13708124636329450907.a n = (A254749 (n + 1) : ℚ)

theorem P13708124636329450907.correct : P13708124636329450907.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A254749, Nat.add_sub_cancel, A254749.P13708124636329450907.a, A254749.P3684778431787933425.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A254749, Nat.add_sub_cancel, A254749.P13708124636329450907.a, A254749.P3684778431787933425.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A254749

/-! ## A254749.P3684778431787933425

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254749

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3684778431787933425.Spec : Prop :=
  ∀ n, P3684778431787933425.a n = A254749 (n + 1)

theorem P3684778431787933425.correct : P3684778431787933425.Spec := by
  intro n
  simp only [A254749, Nat.add_sub_cancel]

end A254749

/-! ## A254749.P4072895819729563341

`n+1-∑[C(n, 2)]`
-/

namespace A254749.P4072895819729563341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254749.P4072895819729563341

namespace A254749

/-- `n+1-∑[C(n, 2)]` -/
def P4072895819729563341.Spec : Prop :=
  ∀ n, P4072895819729563341.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P6957947180638219687

`-∑[∑[xor(-1, -n)]]`
-/

namespace A254749.P6957947180638219687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254749.P6957947180638219687

namespace A254749

/-- `-∑[∑[xor(-1, -n)]]` -/
def P6957947180638219687.Spec : Prop :=
  ∀ n, P6957947180638219687.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P1399000534676355581

`1-C(n+1, 3)+n`
-/

namespace A254749.P1399000534676355581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (n + 1) 3 : ℤ) + (n : ℤ)

end

end A254749.P1399000534676355581

namespace A254749

/-- `1-C(n+1, 3)+n` -/
def P1399000534676355581.Spec : Prop :=
  ∀ n, P1399000534676355581.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P16236923918615110170

`ogf((1-2x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A254749.P16236923918615110170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 6, -4, 1] n

end

end A254749.P16236923918615110170

namespace A254749

/-- `ogf((1-2x)/(1-4x+6x^2-4x^3+x^4))` -/
def P16236923918615110170.Spec : Prop :=
  ∀ n, P16236923918615110170.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P1769673369763003939

`1-(C(n, 2)-a(n-1))` with `a(0)=1`
-/

namespace A254749.P1769673369763003939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((Nat.choose n 2 : ℤ) - a (n - 1))

end

end A254749.P1769673369763003939

namespace A254749

/-- `1-(C(n, 2)-a(n-1))` -/
def P1769673369763003939.Spec : Prop :=
  ∀ n, P1769673369763003939.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P16465239599909694168

`Δ[-C(n+1, 4)]+n+1`
-/

namespace A254749.P16465239599909694168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose (n + 1) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A254749.P16465239599909694168

namespace A254749

/-- `Δ[-C(n+1, 4)]+n+1` -/
def P16465239599909694168.Spec : Prop :=
  ∀ n, P16465239599909694168.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P11005170595983695077

`xor(-1, C(n+1, 3))+n+2`
-/

namespace A254749.P11005170595983695077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (Nat.choose (n + 1) 3 : ℤ) + (n + 2 : ℤ)

end

end A254749.P11005170595983695077

namespace A254749

/-- `xor(-1, C(n+1, 3))+n+2` -/
def P11005170595983695077.Spec : Prop :=
  ∀ n, P11005170595983695077.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P17287196631571059229

`a(n-2)-(1-n)²+2` with `a(0)=1, a(1)=2`
-/

namespace A254749.P17287196631571059229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (1 - (n : ℤ)) ^ 2 + 2

end

end A254749.P17287196631571059229

namespace A254749

/-- `a(n-2)-(1-n)²+2` -/
def P17287196631571059229.Spec : Prop :=
  ∀ n, P17287196631571059229.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P11251320461459487317

`2-((1-n)²-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A254749.P11251320461459487317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - ((1 - (n : ℤ)) ^ 2 - a (n - 2))

end

end A254749.P11251320461459487317

namespace A254749

/-- `2-((1-n)²-a(n-2))` -/
def P11251320461459487317.Spec : Prop :=
  ∀ n, P11251320461459487317.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P5331702771287639212

`n*(2-n)+a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A254749.P5331702771287639212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (2 - (n : ℤ)) + (a (n - 2) + 1)

end

end A254749.P5331702771287639212

namespace A254749

/-- `n*(2-n)+a(n-2)+1` -/
def P5331702771287639212.Spec : Prop :=
  ∀ n, P5331702771287639212.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P3495809856307646970

`a(n-2)-(n*(n-2)-1)` with `a(0)=1, a(1)=2`
-/

namespace A254749.P3495809856307646970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - ((n : ℤ) * ((n : ℤ) - 2) - 1)

end

end A254749.P3495809856307646970

namespace A254749

/-- `a(n-2)-(n*(n-2)-1)` -/
def P3495809856307646970.Spec : Prop :=
  ∀ n, P3495809856307646970.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P7022556741823706991

`a(n-1)+a(n-1)+1-a(n-2)-n` with `a(0)=1, a(1)=2`
-/

namespace A254749.P7022556741823706991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 1) - a (n - 2) - (n : ℤ)

end

end A254749.P7022556741823706991

namespace A254749

/-- `a(n-1)+a(n-1)+1-a(n-2)-n` -/
def P7022556741823706991.Spec : Prop :=
  ∀ n, P7022556741823706991.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P10096771001552408726

`1-(a(n-2)-a(n-1)-(a(n-1)-n))` with `a(0)=1, a(1)=2`
-/

namespace A254749.P10096771001552408726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  1 - (a (n - 2) - a (n - 1) - (a (n - 1) - (n : ℤ)))

end

end A254749.P10096771001552408726

namespace A254749

/-- `1-(a(n-2)-a(n-1)-(a(n-1)-n))` -/
def P10096771001552408726.Spec : Prop :=
  ∀ n, P10096771001552408726.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P11514792491479781490

`Δ[(n/2+1)*lcm(n, n+1)/3]-(n/2+1)*lcm(n, n+1)/3`
-/

namespace A254749.P11514792491479781490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (Nat.lcm n (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℚ) / 2 + 1) * (Nat.lcm n (n + 1) : ℚ) / 3

end

end A254749.P11514792491479781490

namespace A254749

/-- `Δ[(n/2+1)*lcm(n, n+1)/3]-(n/2+1)*lcm(n, n+1)/3` -/
def P11514792491479781490.Spec : Prop :=
  ∀ n, P11514792491479781490.a n = (A254749 (n + 1) : ℚ)

end A254749

/-! ## A254749.P934673516910296395

`-∑[∑[A023443(n)]]`
-/

namespace A254749.P934673516910296395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254749.P934673516910296395

namespace A254749

/-- `-∑[∑[A023443(n)]]` -/
def P934673516910296395.Spec : Prop :=
  ∀ n, P934673516910296395.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P1249110832829516414

`3-A270809(n)/2`
-/

namespace A254749.P1249110832829516414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - (A270809 n : ℚ) / 2

end

end A254749.P1249110832829516414

namespace A254749

/-- `3-A270809(n)/2` -/
def P1249110832829516414.Spec : Prop :=
  ∀ n, P1249110832829516414.a n = (A254749 (n + 1) : ℚ)

end A254749

/-! ## A254749.P6461334273855935089

`2*n-A283551(n)`
-/

namespace A254749.P6461334273855935089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A283551 n

end

end A254749.P6461334273855935089

namespace A254749

/-- `2*n-A283551(n)` -/
def P6461334273855935089.Spec : Prop :=
  ∀ n, P6461334273855935089.a n = A254749 (n + 1)

end A254749

/-! ## A254749.P13852141366109061235

`Δ[n²]-A004006(n)`
-/

namespace A254749.P13852141366109061235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A004006 n

end

end A254749.P13852141366109061235

namespace A254749

/-- `Δ[n²]-A004006(n)` -/
def P13852141366109061235.Spec : Prop :=
  ∀ n, P13852141366109061235.a n = A254749 (n + 1)

end A254749

/-!
# A254750: Numbers such that, in base 10, all their proper prefixes and suffixes represent composites.

The programs for A254750, there is no canonical definition to state claims against.
-/

/-! ## A254750.P1788781416869536613

`∪[A254752(n+1), A254754(n+1)]`
-/

namespace A254750.P1788781416869536613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254750.P1788781416869536613

/-! ## A254750.P4709565121392414911

`A000188(A029581(n+5)²)`
-/

namespace A254750.P4709565121392414911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A029581 (n + 5) ^ 2).toNat

end

end A254750.P4709565121392414911

/-! ## A254750.P3003423230067420618

`∪[A254752(n+1), A003059(A029581(n+5)²)]`
-/

namespace A254750.P3003423230067420618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A029581 (n + 5) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254750.P3003423230067420618

/-! ## A254750.P1362436838366157848

`∪[A254752(n+2), A000196(A029581(n+5)²)]`
-/

namespace A254750.P1362436838366157848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254752 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A029581 (n + 5) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254750.P1362436838366157848

/-!
# A254752: Composite numbers such that, in base 10, all their proper prefixes and suffixes represent composites.

The programs for A254752, there is no canonical definition to state claims against.
-/

/-! ## A254752.P13705556252644240263

`filter[A254750(n+1), A005171(#)]`
-/

namespace A254752.P13705556252644240263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A254752.P13705556252644240263

/-! ## A254752.P18188433863566947208

`filter[A254750(n+1), A066247(#)]`
-/

namespace A254752.P18188433863566947208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A254752.P18188433863566947208

/-! ## A254752.P12719665062683412991

`∩[A202260(n+1), A254750(n+1)]`
-/

namespace A254752.P12719665062683412991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254752.P12719665062683412991

/-! ## A254752.P17638918230452195921

`∩[A202259(n+1), A254750(n+1)]`
-/

namespace A254752.P17638918230452195921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254752.P17638918230452195921

/-! ## A254752.P3406022768258026144

`record[A191558(A254750(n+1))]`
-/

namespace A254752.P3406022768258026144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A254750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254752.P3406022768258026144

/-! ## A254752.P3808436867962134334

`∩[A002808(n+1), A254750(n+1)]`
-/

namespace A254752.P3808436867962134334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254752.P3808436867962134334

/-! ## A254752.P10996925737232663372

`∩[A018252(n+1), A254750(n+1)]`
-/

namespace A254752.P10996925737232663372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254752.P10996925737232663372

/-! ## A254752.P16180772995544971423

`∩[A254750(n+1), A254755(n+1)]`
-/

namespace A254752.P16180772995544971423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254752.P16180772995544971423

/-! ## A254752.P4248347460026476268

`record[A329428(A254750(n+1)%A254754(n+1))]`
-/

namespace A254752.P4248347460026476268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 (Int.tmod (A254750 (n + 1)) (A254754 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254752.P4248347460026476268

/-!
# A254753: Composite numbers with only prime proper prefixes and suffixes in base 10.

The programs for A254753, there is no canonical definition to state claims against.
-/

/-! ## A254753.P220179332202510759

`∩[A121609(n+1), A254751(n+1)]`
-/

namespace A254753.P220179332202510759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254753.P220179332202510759

/-! ## A254753.P3672878224820629175

`filter[A254751(n+1), A005171(#)]`
-/

namespace A254753.P3672878224820629175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A254753.P3672878224820629175

/-! ## A254753.P11098640290339584405

`filter[A254751(n+1), A066247(#)]`
-/

namespace A254753.P11098640290339584405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A254753.P11098640290339584405

/-! ## A254753.P8371074400307414567

`record[A191558(A254751(n+1))]`
-/

namespace A254753.P8371074400307414567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A254751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254753.P8371074400307414567

/-!
# A254754: Prime numbers such that, in base 10, all their proper prefixes and suffixes represent composites.

The programs for A254754, there is no canonical definition to state claims against.
-/

/-! ## A254754.P7015406548587416530

`p?[A254750(n+1)]`
-/

namespace A254754.P7015406548587416530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A254754.P7015406548587416530

/-! ## A254754.P7014799239450178356

`record[p?[A254750(A291769(n))]]`
-/

namespace A254754.P7014799239450178356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254754.P7014799239450178356

/-! ## A254754.P9224899376935030917

`record[p?[A254750(A324343(n))]]`
-/

namespace A254754.P9224899376935030917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254754.P9224899376935030917

/-! ## A254754.P7997636740601325666

`record[p?[A254750(A324344(n))]]`
-/

namespace A254754.P7997636740601325666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254754.P7997636740601325666

/-! ## A254754.P14732342071473241781

`record[p?[A254750(A324347(n))]]`
-/

namespace A254754.P14732342071473241781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254754.P14732342071473241781

/-! ## A254754.P7139022840517742784

`record[p?[A254750(A328399(n))]]`
-/

namespace A254754.P7139022840517742784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254754.P7139022840517742784

/-! ## A254754.P9539721238299869951

`∩[A030433(n+1), A254750(n+1)]`
-/

namespace A254754.P9539721238299869951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254754.P9539721238299869951

/-! ## A254754.P6627397942334881857

`∩[A045457(n+1), A254750(n+1)]`
-/

namespace A254754.P6627397942334881857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254754.P6627397942334881857

/-! ## A254754.P1002701577218384950

`∩[A069090(n+1), A254750(n+1)]`
-/

namespace A254754.P1002701577218384950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254754.P1002701577218384950

/-! ## A254754.P10851429316767691941

`∩[A223458(n+1), A254750(n+1)]`
-/

namespace A254754.P10851429316767691941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254754.P10851429316767691941

/-! ## A254754.P2916484858960195270

`∩[A121608(n+1), A254750(n+1)]`
-/

namespace A254754.P2916484858960195270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254754.P2916484858960195270

/-!
# A254755: Left-truncatable composites: every decimal suffix is a composite number.

The programs for A254755, there is no canonical definition to state claims against.
-/

/-! ## A254755.P1768194307191962944

`eq[A331097(n), A331097(2-and(1, n)+n)]`
-/

namespace A254755.P1768194307191962944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (2 - (Nat.land 1 n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254755.P1768194307191962944

/-! ## A254755.P8397358012378034445

`eq[A331097(n), A339579(A274206(n+1))]`
-/

namespace A254755.P8397358012378034445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A274206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254755.P8397358012378034445

/-! ## A254755.P6829467164001101036

`record[A262389(n+1)-A331097(A262389(n+1))]`
-/

namespace A254755.P6829467164001101036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262389 (n + 1) - A331097 (A262389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254755.P6829467164001101036

/-! ## A254755.P2054014238621129015

`eq[A055671(A274206(n+2)), A331097(n)]`
-/

namespace A254755.P2054014238621129015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A274206 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254755.P2054014238621129015

/-! ## A254755.P9561258260102488884

`eq[A331097(lcm(2, n+1)), A331097(n)]`
-/

namespace A254755.P9561258260102488884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (Nat.lcm 2 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254755.P9561258260102488884

/-!
# A254756: Numbers such that all their proper hexadecimal prefixes and suffixes represent primes.

The programs for A254756, there is no canonical definition to state claims against.
-/

/-! ## A254756.P11736383991233761941

`A255346(n+5)-A287372(A002387(n))`
-/

namespace A254756.P11736383991233761941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255346 (n + 5) - A287372 (A002387 n).toNat

end

end A254756.P11736383991233761941

/-!
# A254757: Part of the positive proper solutions x of the Pell equation x^2 - 2*y^2 = - 7^2 based on the fundamental solution (x0, y0)= (-1, 5).

The programs for A254757, the canonical program `A254757.P7569850723526495805` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254757 has offset 1).

The definition of A254757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254757.P7569850723526495805

`6*a(n-1)-a(n-2)` with `a(0)=17, a(1)=103`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254757

/-- `6*a(n-1)-a(n-2)` -/
def P7569850723526495805.Spec : Prop :=
  ∀ n, P7569850723526495805.a n = A254757 (n + 1)

theorem P7569850723526495805.correct : P7569850723526495805.Spec := by
  intro n
  simp only [A254757, Nat.add_sub_cancel]

end A254757

/-! ## A254757.P10092898905361092574

`ogf((17+x)/(1-6x+x^2))`
-/

namespace A254757.P10092898905361092574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [17, 1] [1, -6, 1] n

end

end A254757.P10092898905361092574

namespace A254757

/-- `ogf((17+x)/(1-6x+x^2))` -/
def P10092898905361092574.Spec : Prop :=
  ∀ n, P10092898905361092574.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P16957696621874480621

`Δ[A275151(n+1)]`
-/

namespace A254757.P16957696621874480621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254757.P16957696621874480621

namespace A254757

/-- `Δ[A275151(n+1)]` -/
def P16957696621874480621.Spec : Prop :=
  ∀ n, P16957696621874480621.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P16908022060169342542

`Δ[A275793(n)/2]`
-/

namespace A254757.P16908022060169342542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275793 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254757.P16908022060169342542

namespace A254757

/-- `Δ[A275793(n)/2]` -/
def P16908022060169342542.Spec : Prop :=
  ∀ n, P16908022060169342542.a n = (A254757 (n + 1) : ℚ)

end A254757

/-! ## A254757.P11235576350057741500

`A076293(3*n+2)`
-/

namespace A254757.P11235576350057741500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076293 (3 * n + 2)

end

end A254757.P11235576350057741500

namespace A254757

/-- `A076293(3*n+2)` -/
def P11235576350057741500.Spec : Prop :=
  ∀ n, P11235576350057741500.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P6587837434406069587

`A075848(n)+Δ[A275796(n)]`
-/

namespace A254757.P6587837434406069587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n + (f1 (n + 1) - f1 n)

end

end A254757.P6587837434406069587

namespace A254757

/-- `A075848(n)+Δ[A275796(n)]` -/
def P6587837434406069587.Spec : Prop :=
  ∀ n, P6587837434406069587.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P1436918636581051982

`Δ[A101386(n)]-A101386(n)`
-/

namespace A254757.P1436918636581051982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101386 n

end

end A254757.P1436918636581051982

namespace A254757

/-- `Δ[A101386(n)]-A101386(n)` -/
def P1436918636581051982.Spec : Prop :=
  ∀ n, P1436918636581051982.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P6103585603966718388

`A275794(n+1)+A275794(n)`
-/

namespace A254757.P6103585603966718388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 (n + 1) + A275794 n

end

end A254757.P6103585603966718388

namespace A254757

/-- `A275794(n+1)+A275794(n)` -/
def P6103585603966718388.Spec : Prop :=
  ∀ n, P6103585603966718388.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P10759358386122594241

`A005319(n)+A001541(n+2)`
-/

namespace A254757.P10759358386122594241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n + A001541 (n + 2)

end

end A254757.P10759358386122594241

namespace A254757

/-- `A005319(n)+A001541(n+2)` -/
def P10759358386122594241.Spec : Prop :=
  ∀ n, P10759358386122594241.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P10683042602258513259

`A253811(n+1)-A266507(n)`
-/

namespace A254757.P10683042602258513259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253811 (n + 1) - A266507 n

end

end A254757.P10683042602258513259

namespace A254757

/-- `A253811(n+1)-A266507(n)` -/
def P10683042602258513259.Spec : Prop :=
  ∀ n, P10683042602258513259.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P15924025973718027368

`Δ[A001108(n)+Δ[A005319(n)]]`
-/

namespace A254757.P15924025973718027368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254757.P15924025973718027368

namespace A254757

/-- `Δ[A001108(n)+Δ[A005319(n)]]` -/
def P15924025973718027368.Spec : Prop :=
  ∀ n, P15924025973718027368.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P6636466445483132887

`A002315(n)+Δ[Δ[A005319(n)]]`
-/

namespace A254757.P6636466445483132887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + (f1 (n + 1) - f1 n)

end

end A254757.P6636466445483132887

namespace A254757

/-- `A002315(n)+Δ[Δ[A005319(n)]]` -/
def P6636466445483132887.Spec : Prop :=
  ∀ n, P6636466445483132887.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P7345201217908155486

`A054490(n)+Δ[Δ[A038723(n)]]`
-/

namespace A254757.P7345201217908155486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n + (f1 (n + 1) - f1 n)

end

end A254757.P7345201217908155486

namespace A254757

/-- `A054490(n)+Δ[Δ[A038723(n)]]` -/
def P7345201217908155486.Spec : Prop :=
  ∀ n, P7345201217908155486.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P3971478408492435668

`A002315(n)+Δ[A077445(n+1)]`
-/

namespace A254757.P3971478408492435668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + (f1 (n + 1) - f1 n)

end

end A254757.P3971478408492435668

namespace A254757

/-- `A002315(n)+Δ[A077445(n+1)]` -/
def P3971478408492435668.Spec : Prop :=
  ∀ n, P3971478408492435668.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P7808599188853563818

`A255236(n)+Δ[A075841(n+1)]`
-/

namespace A254757.P7808599188853563818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255236 n + (f1 (n + 1) - f1 n)

end

end A254757.P7808599188853563818

namespace A254757

/-- `A255236(n)+Δ[A075841(n+1)]` -/
def P7808599188853563818.Spec : Prop :=
  ∀ n, P7808599188853563818.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P2822011452158062899

`Δ[A275795(n)/2-A002315(n)]`
-/

namespace A254757.P2822011452158062899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275795 n : ℚ) / 2 - (A002315 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254757.P2822011452158062899

namespace A254757

/-- `Δ[A275795(n)/2-A002315(n)]` -/
def P2822011452158062899.Spec : Prop :=
  ∀ n, P2822011452158062899.a n = (A254757 (n + 1) : ℚ)

end A254757

/-! ## A254757.P2784997156201727274

`A275151(n+2)-A275151(n+1)`
-/

namespace A254757.P2784997156201727274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275151 (n + 2) - A275151 (n + 1)

end

end A254757.P2784997156201727274

namespace A254757

/-- `A275151(n+2)-A275151(n+1)` -/
def P2784997156201727274.Spec : Prop :=
  ∀ n, P2784997156201727274.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P13269657427284824814

`A089499(2*n)+A001541(n+2)`
-/

namespace A254757.P13269657427284824814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (2 * n) + A001541 (n + 2)

end

end A254757.P13269657427284824814

namespace A254757

/-- `A089499(2*n)+A001541(n+2)` -/
def P13269657427284824814.Spec : Prop :=
  ∀ n, P13269657427284824814.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P16188392544813251893

`A143608(2*n)+A001541(n+2)`
-/

namespace A254757.P16188392544813251893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (2 * n) + A001541 (n + 2)

end

end A254757.P16188392544813251893

namespace A254757

/-- `A143608(2*n)+A001541(n+2)` -/
def P16188392544813251893.Spec : Prop :=
  ∀ n, P16188392544813251893.a n = A254757 (n + 1)

end A254757

/-! ## A254757.P17839244535017978566

`A101386(n+1)-2*A101386(n)`
-/

namespace A254757.P17839244535017978566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101386 (n + 1) - 2 * A101386 n

end

end A254757.P17839244535017978566

namespace A254757

/-- `A101386(n+1)-2*A101386(n)` -/
def P17839244535017978566.Spec : Prop :=
  ∀ n, P17839244535017978566.a n = A254757 (n + 1)

end A254757

/-!
# A254758: Part of the positive proper solutions x of the Pell equation x^2 - 2*y^2 = - 7^2 based on the fundamental solution (x0, y0)= (1, 5).

The programs for A254758, the canonical program `A254758.P13277496032642204479` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254758 has offset 0).

The definition of A254758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254758.P13277496032642204479

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254758

/-- `6*a(n-1)-a(n-2)` -/
def P13277496032642204479.Spec : Prop :=
  ∀ n, P13277496032642204479.a n = A254758 n

theorem P13277496032642204479.correct : P13277496032642204479.Spec := by
  intro n
  simp only [A254758]

end A254758

/-! ## A254758.P3388542916654313569

`ogf((1+17x)/(1-6x+x^2))`
-/

namespace A254758.P3388542916654313569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 17] [1, -6, 1] n

end

end A254758.P3388542916654313569

namespace A254758

/-- `ogf((1+17x)/(1-6x+x^2))` -/
def P3388542916654313569.Spec : Prop :=
  ∀ n, P3388542916654313569.a n = A254758 n

end A254758

/-! ## A254758.P9871829818277431606

`lcm(6, a(n-1))-a(n-2)` with `a(0)=1, a(1)=23`
-/

namespace A254758.P9871829818277431606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  (Int.lcm 6 (a (n - 1)) : ℤ) - a (n - 2)

end

end A254758.P9871829818277431606

namespace A254758

/-- `lcm(6, a(n-1))-a(n-2)` -/
def P9871829818277431606.Spec : Prop :=
  ∀ n, P9871829818277431606.a n = A254758 n

end A254758

/-! ## A254758.P15472976322574054150

`A076293(3*n)`
-/

namespace A254758.P15472976322574054150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076293 (3 * n)

end

end A254758.P15472976322574054150

namespace A254758

/-- `A076293(3*n)` -/
def P15472976322574054150.Spec : Prop :=
  ∀ n, P15472976322574054150.a n = A254758 n

end A254758

/-! ## A254758.P5679095992364637854

`record[A076293(A071045(n))]`
-/

namespace A254758.P5679095992364637854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076293 (A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254758.P5679095992364637854

namespace A254758

/-- `record[A076293(A071045(n))]` -/
def P5679095992364637854.Spec : Prop :=
  ∀ n, P5679095992364637854.a n = A254758 n

end A254758

/-! ## A254758.P5161105979752451571

`A164541(n)+A081554(n)`
-/

namespace A254758.P5161105979752451571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164541 n + A081554 n

end

end A254758.P5161105979752451571

namespace A254758

/-- `A164541(n)+A081554(n)` -/
def P5161105979752451571.Spec : Prop :=
  ∀ n, P5161105979752451571.a n = A254758 n

end A254758

/-! ## A254758.P10677894821652823206

`A002315(n)+2*A081554(n)`
-/

namespace A254758.P10677894821652823206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 2 * A081554 n

end

end A254758.P10677894821652823206

namespace A254758

/-- `A002315(n)+2*A081554(n)` -/
def P10677894821652823206.Spec : Prop :=
  ∀ n, P10677894821652823206.a n = A254758 n

end A254758

/-! ## A254758.P6398084830423666437

`A002315(n)+4*A005319(n)`
-/

namespace A254758.P6398084830423666437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 4 * A005319 n

end

end A254758.P6398084830423666437

namespace A254758

/-- `A002315(n)+4*A005319(n)` -/
def P6398084830423666437.Spec : Prop :=
  ∀ n, P6398084830423666437.a n = A254758 n

end A254758

/-! ## A254758.P12706397083519018587

`A001541(n)+5*A005319(n)`
-/

namespace A254758.P12706397083519018587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + 5 * A005319 n

end

end A254758.P12706397083519018587

namespace A254758

/-- `A001541(n)+5*A005319(n)` -/
def P12706397083519018587.Spec : Prop :=
  ∀ n, P12706397083519018587.a n = A254758 n

end A254758

/-! ## A254758.P16392042103142799911

`A002315(n)+8*A001542(n)`
-/

namespace A254758.P16392042103142799911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n + 8 * A001542 n

end

end A254758.P16392042103142799911

namespace A254758

/-- `A002315(n)+8*A001542(n)` -/
def P16392042103142799911.Spec : Prop :=
  ∀ n, P16392042103142799911.a n = A254758 n

end A254758

/-! ## A254758.P6449156337830452355

`A001541(n)+10*A001542(n)`
-/

namespace A254758.P6449156337830452355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n + 10 * A001542 n

end

end A254758.P6449156337830452355

namespace A254758

/-- `A001541(n)+10*A001542(n)` -/
def P6449156337830452355.Spec : Prop :=
  ∀ n, P6449156337830452355.a n = A254758 n

end A254758

/-! ## A254758.P9176904085132774207

`Δ[A001108(n)]+2*A081554(n)`
-/

namespace A254758.P9176904085132774207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A081554 n

end

end A254758.P9176904085132774207

namespace A254758

/-- `Δ[A001108(n)]+2*A081554(n)` -/
def P9176904085132774207.Spec : Prop :=
  ∀ n, P9176904085132774207.a n = A254758 n

end A254758

/-! ## A254758.P18350878110077328971

`A154150(2*n+1)-A001108(n)`
-/

namespace A254758.P18350878110077328971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154150 (2 * n + 1) - A001108 n

end

end A254758.P18350878110077328971

namespace A254758

/-- `A154150(2*n+1)-A001108(n)` -/
def P18350878110077328971.Spec : Prop :=
  ∀ n, P18350878110077328971.a n = A254758 n

end A254758

/-! ## A254758.P10303267637662368825

`A154149(2*n+1)-A072221(n)`
-/

namespace A254758.P10303267637662368825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154149 (2 * n + 1) - A072221 n

end

end A254758.P10303267637662368825

namespace A254758

/-- `A154149(2*n+1)-A072221(n)` -/
def P10303267637662368825.Spec : Prop :=
  ∀ n, P10303267637662368825.a n = A254758 n

end A254758

/-! ## A254758.P8867284295572798883

`A054488(n)+3*A276598(n+1)`
-/

namespace A254758.P8867284295572798883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n + 3 * A276598 (n + 1)

end

end A254758.P8867284295572798883

namespace A254758

/-- `A054488(n)+3*A276598(n+1)` -/
def P8867284295572798883.Spec : Prop :=
  ∀ n, P8867284295572798883.a n = A254758 n

end A254758

/-! ## A254758.P13309642340654932211

`A048697(2*n)+A000129(2*n)`
-/

namespace A254758.P13309642340654932211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048697 (2 * n) + A000129 (2 * n)

end

end A254758.P13309642340654932211

namespace A254758

/-- `A048697(2*n)+A000129(2*n)` -/
def P13309642340654932211.Spec : Prop :=
  ∀ n, P13309642340654932211.a n = A254758 n

end A254758

/-! ## A254758.P14956400163775377104

`A001653(n+1)+18*A001109(n)`
-/

namespace A254758.P14956400163775377104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) + 18 * A001109 n

end

end A254758.P14956400163775377104

namespace A254758

/-- `A001653(n+1)+18*A001109(n)` -/
def P14956400163775377104.Spec : Prop :=
  ∀ n, P14956400163775377104.a n = A254758 n

end A254758

/-! ## A254758.P15356980761438511562

`A001541(n+1)+2*A078343(2*n)`
-/

namespace A254758.P15356980761438511562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1) + 2 * A078343 (2 * n)

end

end A254758.P15356980761438511562

namespace A254758

/-- `A001541(n+1)+2*A078343(2*n)` -/
def P15356980761438511562.Spec : Prop :=
  ∀ n, P15356980761438511562.a n = A254758 n

end A254758

/-! ## A254758.P10215023894655063323

`A006451(2*n)+A154146(2*n)+1`
-/

namespace A254758.P10215023894655063323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (2 * n) + (A154146 (2 * n) + 1)

end

end A254758.P10215023894655063323

namespace A254758

/-- `A006451(2*n)+A154146(2*n)+1` -/
def P10215023894655063323.Spec : Prop :=
  ∀ n, P10215023894655063323.a n = A254758 n

end A254758

/-! ## A254758.P5709954404819078

`A163271(2*n+1)+A048696(2*n)`
-/

namespace A254758.P5709954404819078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (2 * n + 1) + A048696 (2 * n)

end

end A254758.P5709954404819078

namespace A254758

/-- `A163271(2*n+1)+A048696(2*n)` -/
def P5709954404819078.Spec : Prop :=
  ∀ n, P5709954404819078.a n = A254758 n

end A254758

/-!
# A254759: Part of the positive proper solutions y of the Pell equation x^2 - 2*y^2 = - 7^2 based on the fundamental solution (x0, y0)= (1, 5).

The programs for A254759, the canonical program `A254759.P17952377638596560404` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254759 has offset 0).

The definition of A254759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254759.P17952377638596560404

`6*a(n-1)-a(n-2)` with `a(0)=5, a(1)=17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254759

/-- `6*a(n-1)-a(n-2)` -/
def P17952377638596560404.Spec : Prop :=
  ∀ n, P17952377638596560404.a n = A254759 n

theorem P17952377638596560404.correct : P17952377638596560404.Spec := by
  intro n
  simp only [A254759]

end A254759

/-! ## A254759.P9353060964016514292

`ogf((5-13x)/(1-6x+x^2))`
-/

namespace A254759.P9353060964016514292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13] [1, -6, 1] n

end

end A254759.P9353060964016514292

namespace A254759

/-- `ogf((5-13x)/(1-6x+x^2))` -/
def P9353060964016514292.Spec : Prop :=
  ∀ n, P9353060964016514292.a n = A254759 n

end A254759

/-! ## A254759.P811619513280908783

`record[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=5, a(1)=-6`
-/

namespace A254759.P811619513280908783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, -6] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254759.P811619513280908783

namespace A254759

/-- `record[a(n-2)-a(n-1)-a(n-1)]` -/
def P811619513280908783.Spec : Prop :=
  ∀ n, P811619513280908783.a n = A254759 n

end A254759

/-! ## A254759.P1831142530120516317

`A076294(3*n)`
-/

namespace A254759.P1831142530120516317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (3 * n)

end

end A254759.P1831142530120516317

namespace A254759

/-- `A076294(3*n)` -/
def P1831142530120516317.Spec : Prop :=
  ∀ n, P1831142530120516317.a n = A254759 n

end A254759

/-! ## A254759.P16358081486902177696

`A221174(Δ[n²])`
-/

namespace A254759.P16358081486902177696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A254759.P16358081486902177696

namespace A254759

/-- `A221174(Δ[n²])` -/
def P16358081486902177696.Spec : Prop :=
  ∀ n, P16358081486902177696.a n = A254759 n

end A254759

/-! ## A254759.P9900827197876785637

`record[A221174(xor(1, n))]`
-/

namespace A254759.P9900827197876785637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254759.P9900827197876785637

namespace A254759

/-- `record[A221174(xor(1, n))]` -/
def P9900827197876785637.Spec : Prop :=
  ∀ n, P9900827197876785637.a n = A254759 n

end A254759

/-! ## A254759.P12193996228439214963

`abs(A221174(2*n+1))`
-/

namespace A254759.P12193996228439214963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A221174 (2 * n + 1)|

end

end A254759.P12193996228439214963

namespace A254759

/-- `abs(A221174(2*n+1))` -/
def P12193996228439214963.Spec : Prop :=
  ∀ n, P12193996228439214963.a n = A254759 n

end A254759

/-! ## A254759.P1752674301372428704

`record[A221174(n+1)/(-1)^n]`
-/

namespace A254759.P1752674301372428704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221174 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254759.P1752674301372428704

namespace A254759

/-- `record[A221174(n+1)/(-1)^n]` -/
def P1752674301372428704.Spec : Prop :=
  ∀ n, P1752674301372428704.a n = (A254759 n : ℚ)

end A254759

/-! ## A254759.P2409243378610756012

`A001542(n)+5*A001541(n)`
-/

namespace A254759.P2409243378610756012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n + 5 * A001541 n

end

end A254759.P2409243378610756012

namespace A254759

/-- `A001542(n)+5*A001541(n)` -/
def P2409243378610756012.Spec : Prop :=
  ∀ n, P2409243378610756012.a n = A254759 n

end A254759

/-! ## A254759.P17151277296487513285

`A001653(n+1)+2*A003499(n)`
-/

namespace A254759.P17151277296487513285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) + 2 * A003499 n

end

end A254759.P17151277296487513285

namespace A254759

/-- `A001653(n+1)+2*A003499(n)` -/
def P17151277296487513285.Spec : Prop :=
  ∀ n, P17151277296487513285.a n = A254759 n

end A254759

/-! ## A254759.P310326923132857767

`A001653(n+1)+4*A001541(n)`
-/

namespace A254759.P310326923132857767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) + 4 * A001541 n

end

end A254759.P310326923132857767

namespace A254759

/-- `A001653(n+1)+4*A001541(n)` -/
def P310326923132857767.Spec : Prop :=
  ∀ n, P310326923132857767.a n = A254759 n

end A254759

/-! ## A254759.P12371049906338743411

`A221173(2*n+1)+A001333(2*n)`
-/

namespace A254759.P12371049906338743411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (2 * n + 1) + A001333 (2 * n)

end

end A254759.P12371049906338743411

namespace A254759

/-- `A221173(2*n+1)+A001333(2*n)` -/
def P12371049906338743411.Spec : Prop :=
  ∀ n, P12371049906338743411.a n = A254759 n

end A254759

/-! ## A254759.P1500344588156138956

`A221172(2*n+1)+A002203(2*n)`
-/

namespace A254759.P1500344588156138956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + A002203 (2 * n)

end

end A254759.P1500344588156138956

namespace A254759

/-- `A221172(2*n+1)+A002203(2*n)` -/
def P1500344588156138956.Spec : Prop :=
  ∀ n, P1500344588156138956.a n = A254759 n

end A254759

/-! ## A254759.P11420043438653290148

`A000129(2*n+1)+2*A002203(2*n)`
-/

namespace A254759.P11420043438653290148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n + 1) + 2 * A002203 (2 * n)

end

end A254759.P11420043438653290148

namespace A254759

/-- `A000129(2*n+1)+2*A002203(2*n)` -/
def P11420043438653290148.Spec : Prop :=
  ∀ n, P11420043438653290148.a n = A254759 n

end A254759

/-! ## A254759.P12792204866897244769

`A077443(2*n+1)+2*A006452(2*n)`
-/

namespace A254759.P12792204866897244769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (2 * n + 1) + 2 * A006452 (2 * n)

end

end A254759.P12792204866897244769

namespace A254759

/-- `A077443(2*n+1)+2*A006452(2*n)` -/
def P12792204866897244769.Spec : Prop :=
  ∀ n, P12792204866897244769.a n = A254759 n

end A254759

/-! ## A254759.P12495217745617565944

`A215928(2*n+1)+2*A002203(2*n)`
-/

namespace A254759.P12495217745617565944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (2 * n + 1) + 2 * A002203 (2 * n)

end

end A254759.P12495217745617565944

namespace A254759

/-- `A215928(2*n+1)+2*A002203(2*n)` -/
def P12495217745617565944.Spec : Prop :=
  ∀ n, P12495217745617565944.a n = A254759 n

end A254759

/-! ## A254759.P15517049013823890730

`A221172(2*n+1)+2*A001333(2*n)`
-/

namespace A254759.P15517049013823890730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + 2 * A001333 (2 * n)

end

end A254759.P15517049013823890730

namespace A254759

/-- `A221172(2*n+1)+2*A001333(2*n)` -/
def P15517049013823890730.Spec : Prop :=
  ∀ n, P15517049013823890730.a n = A254759 n

end A254759

/-! ## A254759.P13326197073815540270

`A221173(2*n+1)+A002203(2*n)/2`
-/

namespace A254759.P13326197073815540270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221173 (2 * n + 1) : ℚ) + (A002203 (2 * n) : ℚ) / 2

end

end A254759.P13326197073815540270

namespace A254759

/-- `A221173(2*n+1)+A002203(2*n)/2` -/
def P13326197073815540270.Spec : Prop :=
  ∀ n, P13326197073815540270.a n = (A254759 n : ℚ)

end A254759

/-! ## A254759.P17859886335194487481

`A221172(2*n+1)+2*A126354(2*n+1)`
-/

namespace A254759.P17859886335194487481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (2 * n + 1) + 2 * A126354 (2 * n + 1)

end

end A254759.P17859886335194487481

namespace A254759

/-- `A221172(2*n+1)+2*A126354(2*n+1)` -/
def P17859886335194487481.Spec : Prop :=
  ∀ n, P17859886335194487481.a n = A254759 n

end A254759

/-! ## A254759.P13810139895238991661

`A038762(n)+A038762(n)-A038761(n)`
-/

namespace A254759.P13810139895238991661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038762 n + (A038762 n - A038761 n)

end

end A254759.P13810139895238991661

namespace A254759

/-- `A038762(n)+A038762(n)-A038761(n)` -/
def P13810139895238991661.Spec : Prop :=
  ∀ n, P13810139895238991661.a n = A254759 n

end A254759

/-!
# A254760: Fundamental positive solution x = x1(n) of the first class of the Pell equation x^2 - 2*y^2 = A007519(n), n>=1 (primes congruent to 1 mod 8).

The programs for A254760, there is no canonical definition to state claims against.
-/

/-! ## A254760.P8668122232995638242

`A254763(n+1)+3*A254761(n+1)`
-/

namespace A254760.P8668122232995638242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + 3 * A254761 (n + 1)

end

end A254760.P8668122232995638242

/-! ## A254760.P272112750789001342

`A254762(n+1)-2*A254934(n+1)`
-/

namespace A254760.P272112750789001342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254762 (n + 1) - 2 * A254934 (n + 1)

end

end A254760.P272112750789001342

/-! ## A254760.P4698645582548464413

`A254937(n+1)-2*A254761(n+1)`
-/

namespace A254760.P4698645582548464413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254937 (n + 1) - 2 * A254761 (n + 1)

end

end A254760.P4698645582548464413

/-! ## A254760.P937876833601428237

`2*A254937(n+1)-A254936(n+1)`
-/

namespace A254760.P937876833601428237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254937 (n + 1) - A254936 (n + 1)

end

end A254760.P937876833601428237

/-! ## A254760.P16114768776430044488

`(A254936(n+1)+A254934(n+1))/2`
-/

namespace A254760.P16114768776430044488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254936 (n + 1) + A254934 (n + 1) : ℚ) / 2

end

end A254760.P16114768776430044488

/-!
# A254761: One half of the fundamental positive solution y = y1(n) of the first class of the Pell equation x^2 - 2*y^2 = A007519(n), n >= 1 (primes congruent to 1 mod 8).

The programs for A254761, there is no canonical definition to state claims against.
-/

/-! ## A254761.P1542042836943466981

`A254763(n+1)-A254934(n+1)`
-/

namespace A254761.P1542042836943466981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) - A254934 (n + 1)

end

end A254761.P1542042836943466981

/-! ## A254761.P15430426671690558409

`A254935(n+1)-A254763(n+1)`
-/

namespace A254761.P15430426671690558409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254935 (n + 1) - A254763 (n + 1)

end

end A254761.P15430426671690558409

/-! ## A254761.P17870978694786501518

`(A254936(n+1)-A254763(n+1))/7`
-/

namespace A254761.P17870978694786501518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254936 (n + 1) - A254763 (n + 1) : ℚ) / 7

end

end A254761.P17870978694786501518

/-! ## A254761.P7479265689429834869

`(A254936(n+1)-A254934(n+1))/8`
-/

namespace A254761.P7479265689429834869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254936 (n + 1) - A254934 (n + 1) : ℚ) / 8

end

end A254761.P7479265689429834869

/-! ## A254761.P13669183656694256590

`A056239(p?[A073846(A002335(n+1))])`
-/

namespace A254761.P13669183656694256590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A002335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A254761.P13669183656694256590

/-! ## A254761.P12983220897769285738

`A110656(A254936(n+1)-A254934(n+1))`
-/

namespace A254761.P12983220897769285738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A254936 (n + 1) - A254934 (n + 1)).toNat

end

end A254761.P12983220897769285738

/-!
# A254762: Fundamental positive solution x = x2(n) of the second class of the Pell equation x^2 - 2*y^2 = A007519(n), n >= 1 (primes congruent to 1 mod 8).

The programs for A254762, there is no canonical definition to state claims against.
-/

/-! ## A254762.P11467038522736529765

`3*A254760(n+1)-8*A254761(n+1)`
-/

namespace A254762.P11467038522736529765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A254760 (n + 1) - 8 * A254761 (n + 1)

end

end A254762.P11467038522736529765

/-! ## A254762.P2065532405333180070

`A254760(n+1)+2*A254934(n+1)`
-/

namespace A254762.P2065532405333180070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (n + 1) + 2 * A254934 (n + 1)

end

end A254762.P2065532405333180070

/-! ## A254762.P13725706948902709753

`A254761(n+1)+3*A254763(n+1)`
-/

namespace A254762.P13725706948902709753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254761 (n + 1) + 3 * A254763 (n + 1)

end

end A254762.P13725706948902709753

/-! ## A254762.P16498877350034420695

`4*A254763(n+1)-A254934(n+1)`
-/

namespace A254762.P16498877350034420695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A254763 (n + 1) - A254934 (n + 1)

end

end A254762.P16498877350034420695

/-! ## A254762.P15203152594446394560

`A254760(n+1)+A004277(A254934(n+1))`
-/

namespace A254762.P15203152594446394560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (n + 1) + A004277 (A254934 (n + 1)).toNat

end

end A254762.P15203152594446394560

/-!
# A254763: One half of the fundamental positive solution y = y2(n) of the second class of the Pell equation x^2 - 2*y^2 = A007519(n), n>=1 (primes congruent to 1 mod 8).

The programs for A254763, there is no canonical definition to state claims against.
-/

/-! ## A254763.P3445933307479022608

`A254760(n+1)-3*A254761(n+1)`
-/

namespace A254763.P3445933307479022608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (n + 1) - 3 * A254761 (n + 1)

end

end A254763.P3445933307479022608

/-! ## A254763.P6366176922909738602

`A254934(n+1)+A254761(n+1)`
-/

namespace A254763.P6366176922909738602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + A254761 (n + 1)

end

end A254763.P6366176922909738602

/-! ## A254763.P3673897454440414319

`A254935(n+1)-A254761(n+1)`
-/

namespace A254763.P3673897454440414319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254935 (n + 1) - A254761 (n + 1)

end

end A254763.P3673897454440414319

/-! ## A254763.P11400831996083687787

`A254936(n+1)-7*A254761(n+1)`
-/

namespace A254763.P11400831996083687787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254936 (n + 1) - 7 * A254761 (n + 1)

end

end A254763.P11400831996083687787

/-! ## A254763.P7474105570459102707

`A254936(n+1)-A008589(A254761(n+1))`
-/

namespace A254763.P7474105570459102707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254936 (n + 1) - A008589 (A254761 (n + 1)).toNat

end

end A254763.P7474105570459102707

/-! ## A254763.P4504630710744631605

`A254934(n+1)+(A254936(n+1)-A254934(n+1))/8`
-/

namespace A254763.P4504630710744631605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254934 (n + 1) : ℚ) + (A254936 (n + 1) - A254934 (n + 1) : ℚ) / 8

end

end A254763.P4504630710744631605

/-! ## A254763.P17144926705125061479

`A254934(n+1)+A110656(A254936(n+1)-A254934(n+1))`
-/

namespace A254763.P17144926705125061479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + A110656 (A254936 (n + 1) - A254934 (n + 1)).toNat

end

end A254763.P17144926705125061479

/-!
# A254764: Fundamental positive solution x = x1(n) of the first class of the Pell equation x^2 - 2*y^2 = A007522(n), n >=1 (primes congruent to 7 mod 8).

The programs for A254764, there is no canonical definition to state claims against.
-/

/-! ## A254764.P6568847904396537365

`A255234(n+1)+A255232(n+1)`
-/

namespace A254764.P6568847904396537365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255234 (n + 1) + A255232 (n + 1)

end

end A254764.P6568847904396537365

/-! ## A254764.P9433902136229019882

`A254938(n+1)+2*A254765(n+1)`
-/

namespace A254764.P9433902136229019882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254938 (n + 1) + 2 * A254765 (n + 1)

end

end A254764.P9433902136229019882

/-! ## A254764.P5367267505612953750

`A254765(n+1)+2*A255232(n+1)`
-/

namespace A254764.P5367267505612953750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254765 (n + 1) + 2 * A255232 (n + 1)

end

end A254764.P5367267505612953750

/-! ## A254764.P7915060043398185008

`A254766(n+1)-2*A254938(n+1)`
-/

namespace A254764.P7915060043398185008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254766 (n + 1) - 2 * A254938 (n + 1)

end

end A254764.P7915060043398185008

/-! ## A254764.P15755172323654250665

`2*A255234(n+1)-A254765(n+1)`
-/

namespace A254764.P15755172323654250665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255234 (n + 1) - A254765 (n + 1)

end

end A254764.P15755172323654250665

/-! ## A254764.P656494167109600923

`A255233(n+1)-2*A254765(n+1)`
-/

namespace A254764.P656494167109600923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255233 (n + 1) - 2 * A254765 (n + 1)

end

end A254764.P656494167109600923

/-! ## A254764.P14149675613415048833

`(A255233(n+1)+A254938(n+1))/2`
-/

namespace A254764.P14149675613415048833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255233 (n + 1) + A254938 (n + 1) : ℚ) / 2

end

end A254764.P14149675613415048833

/-! ## A254764.P9298081499647980474

`4*A255232(n+1)-A254938(n+1)`
-/

namespace A254764.P9298081499647980474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A255232 (n + 1) - A254938 (n + 1)

end

end A254764.P9298081499647980474

/-! ## A254764.P7778482691322521520

`A000265(A255233(n+1)+A254938(n+1))`
-/

namespace A254764.P7778482691322521520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A255233 (n + 1) + A254938 (n + 1)).toNat

end

end A254764.P7778482691322521520

/-! ## A254764.P17823062733168607952

`A001281(A255233(n+1)+A254938(n+1))`
-/

namespace A254764.P17823062733168607952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255233 (n + 1) + A254938 (n + 1)).toNat

end

end A254764.P17823062733168607952

/-!
# A254765: Fundamental positive solution y = y1(n) of the first class of the Pell equation x^2 - 2*y^2 = A007522(n), n >=1 (primes congruent to 7 mod 8).

The programs for A254765, there is no canonical definition to state claims against.
-/

/-! ## A254765.P9707476386312661795

`filter[A002335(n+2), A000035(#)]`
-/

namespace A254765.P9707476386312661795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002335 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A254765.P9707476386312661795

/-! ## A254765.P4671422880346012007

`filter[A002335(n+2), A250299(#)]`
-/

namespace A254765.P4671422880346012007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002335 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A250299 (f1 j).toNat = 1) n)

end

end A254765.P4671422880346012007

/-! ## A254765.P9462807123027161078

`filter[A002335(n+2), A374134(#)]`
-/

namespace A254765.P9462807123027161078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002335 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A254765.P9462807123027161078

/-! ## A254765.P9556684934350078443

`A255234(n+1)-A255232(n+1)`
-/

namespace A254765.P9556684934350078443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255234 (n + 1) - A255232 (n + 1)

end

end A254765.P9556684934350078443

/-! ## A254765.P5873698331108781239

`A255233(n+1)%A255234(n+1)`
-/

namespace A254765.P5873698331108781239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255233 (n + 1)) (A255234 (n + 1))

end

end A254765.P5873698331108781239

/-! ## A254765.P11153533255234623626

`A254929(n+1)-2*A254938(n+1)`
-/

namespace A254765.P11153533255234623626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254929 (n + 1) - 2 * A254938 (n + 1)

end

end A254765.P11153533255234623626

/-! ## A254765.P4411251624013483920

`2*A255234(n+1)-A254764(n+1)`
-/

namespace A254765.P4411251624013483920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255234 (n + 1) - A254764 (n + 1)

end

end A254765.P4411251624013483920

/-! ## A254765.P10963971224790451504

`A254764(n+1)-2*A255232(n+1)`
-/

namespace A254765.P10963971224790451504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) - 2 * A255232 (n + 1)

end

end A254765.P10963971224790451504

/-! ## A254765.P4342016143172913832

`2*A255232(n+1)-A254938(n+1)`
-/

namespace A254765.P4342016143172913832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255232 (n + 1) - A254938 (n + 1)

end

end A254765.P4342016143172913832

/-!
# A254766: Fundamental positive solution x = x2(n) of the second class of the Pell equation x^2 - 2*y^2 = A007522(n), n >=1 (primes congruent to 7 mod 8).

The programs for A254766, there is no canonical definition to state claims against.
-/

/-! ## A254766.P5147268286757395826

`3*A254764(n+1)-4*A254765(n+1)`
-/

namespace A254766.P5147268286757395826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A254764 (n + 1) - 4 * A254765 (n + 1)

end

end A254766.P5147268286757395826

/-! ## A254766.P17724458601870242100

`A254764(n+1)+2*A254938(n+1)`
-/

namespace A254766.P17724458601870242100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) + 2 * A254938 (n + 1)

end

end A254766.P17724458601870242100

/-! ## A254766.P8670570915514183631

`A254929(n+1)+2*A255232(n+1)`
-/

namespace A254766.P8670570915514183631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254929 (n + 1) + 2 * A255232 (n + 1)

end

end A254766.P8670570915514183631

/-! ## A254766.P5891969015691866466

`2*A254929(n+1)-A254938(n+1)`
-/

namespace A254766.P5891969015691866466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254929 (n + 1) - A254938 (n + 1)

end

end A254766.P5891969015691866466

/-! ## A254766.P3248014504337482622

`A254938(n+1)+4*A255232(n+1)`
-/

namespace A254766.P3248014504337482622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254938 (n + 1) + 4 * A255232 (n + 1)

end

end A254766.P3248014504337482622

/-! ## A254766.P16266988750157088034

`6*A255232(n+1)-A254765(n+1)`
-/

namespace A254766.P16266988750157088034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A255232 (n + 1) - A254765 (n + 1)

end

end A254766.P16266988750157088034

/-! ## A254766.P18380392894692465996

`7*A255232(n+1)-A255234(n+1)`
-/

namespace A254766.P18380392894692465996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A255232 (n + 1) - A255234 (n + 1)

end

end A254766.P18380392894692465996

/-! ## A254766.P17773424129535346104

`A254764(n+1)+A004277(A254938(n+1))`
-/

namespace A254766.P17773424129535346104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) + A004277 (A254938 (n + 1)).toNat

end

end A254766.P17773424129535346104

/-! ## A254766.P7589151078701970675

`A254929(n+1)+A004277(A255232(n+1))`
-/

namespace A254766.P7589151078701970675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254929 (n + 1) + A004277 (A255232 (n + 1)).toNat

end

end A254766.P7589151078701970675

/-! ## A254766.P5578232662189837776

`A005843(A254929(n+1))-A254938(n+1)`
-/

namespace A254766.P5578232662189837776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A254929 (n + 1)).toNat - A254938 (n + 1)

end

end A254766.P5578232662189837776

/-!
# A254768: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254768, there is no canonical definition to state claims against.
-/

/-! ## A254768.P1723801996892686544

`A254775(∑[4*n]+1)`
-/

namespace A254768.P1723801996892686544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254768.P1723801996892686544

/-! ## A254768.P4017456726690191253

`record[A003982(n)*A254775(n+1)]`
-/

namespace A254768.P4017456726690191253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254768.P4017456726690191253

/-! ## A254768.P4651396975814608225

`record[gcd(A114327(n), A254775(n+1))]`
-/

namespace A254768.P4651396975814608225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254775 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254768.P4651396975814608225

/-! ## A254768.P16903276761527898747

`record[root(A254775(n+1), A059897(n+1))]`
-/

namespace A254768.P16903276761527898747
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254775 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254768.P16903276761527898747

/-! ## A254768.P10584173920747202608

`A254775(A001844(n))+A025438(n)`
-/

namespace A254768.P10584173920747202608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A001844 n).toNat + A025438 n

end

end A254768.P10584173920747202608

/-!
# A254769: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254769, there is no canonical definition to state claims against.
-/

/-! ## A254769.P2021208672274304077

`A254775(∑[n+2])`
-/

namespace A254769.P2021208672274304077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254769.P2021208672274304077

/-! ## A254769.P799664798982463077

`record[A254775(abs(A201163(n)))]`
-/

namespace A254769.P799664798982463077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254769.P799664798982463077

/-! ## A254769.P3681837174163746146

`A326292(n)+A254775(A000096(n+1))`
-/

namespace A254769.P3681837174163746146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A254775 (A000096 (n + 1)).toNat

end

end A254769.P3681837174163746146

/-! ## A254769.P1958768536914462116

`A254775(A000096(n+1))%A254770(n+1)`
-/

namespace A254769.P1958768536914462116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254775 (A000096 (n + 1)).toNat) (A254770 (n + 1))

end

end A254769.P1958768536914462116

/-! ## A254769.P2330808694629425750

`record[A254775(A000096(val(n+1, 2)+1))]`
-/

namespace A254769.P2330808694629425750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254769.P2330808694629425750

/-!
# A254770: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254770, there is no canonical definition to state claims against.
-/

/-! ## A254770.P16749201225396889809

`A254775(∑[n+3]+1)`
-/

namespace A254770.P16749201225396889809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254770.P16749201225396889809

/-! ## A254770.P8030114946446342266

`A254775(A034856(n+2))+A000007(n+1)`
-/

namespace A254770.P8030114946446342266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A254770.P8030114946446342266

/-! ## A254770.P1137861278981517025

`A254775(A034856(n+2))+A151933(n+1)`
-/

namespace A254770.P1137861278981517025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A034856 (n + 2)).toNat + A151933 (n + 1)

end

end A254770.P1137861278981517025

/-! ## A254770.P14644608141841208534

`A254775(A034856(n+2))%A254771(n+1)`
-/

namespace A254770.P14644608141841208534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254775 (A034856 (n + 2)).toNat) (A254771 (n + 1))

end

end A254770.P14644608141841208534

/-! ## A254770.P5993157295848866082

`and(A057428(n+1), A254775(A034856(n+2)))`
-/

namespace A254770.P5993157295848866082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A254775 (A034856 (n + 2)).toNat)

end

end A254770.P5993157295848866082

/-!
# A254771: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254771, there is no canonical definition to state claims against.
-/

/-! ## A254771.P9753675919850009540

`A254775(∑[n+4]+3)`
-/

namespace A254771.P9753675919850009540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254771.P9753675919850009540

/-!
# A254772: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254772, there is no canonical definition to state claims against.
-/

/-! ## A254772.P7868910161888121090

`A254775(Δ[A264443(n)])`
-/

namespace A254772.P7868910161888121090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (f1 (n + 1) - f1 n).toNat

end

end A254772.P7868910161888121090

/-! ## A254772.P5509388278383142512

`A254775(A046691(n+3))`
-/

namespace A254772.P5509388278383142512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A046691 (n + 3)).toNat

end

end A254772.P5509388278383142512

/-! ## A254772.P8387631845169851122

`A254775(A056115(n)+11)`
-/

namespace A254772.P8387631845169851122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A056115 n + 11).toNat

end

end A254772.P8387631845169851122

/-! ## A254772.P5555510068691326210

`A254775(eq[4, A193592(n)])`
-/

namespace A254772.P5555510068691326210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254772.P5555510068691326210

/-! ## A254772.P10152737389874770793

`A254775(eq[8, A140996(n)])`
-/

namespace A254772.P10152737389874770793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254772.P10152737389874770793

/-!
# A254773: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254773, there is no canonical definition to state claims against.
-/

/-! ## A254773.P9590932352275748410

`A254775(A052905(n+3))`
-/

namespace A254773.P9590932352275748410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A052905 (n + 3)).toNat

end

end A254773.P9590932352275748410

/-! ## A254773.P14463069482180743909

`A254775(eq[3, A219347(n)])`
-/

namespace A254773.P14463069482180743909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254773.P14463069482180743909

/-! ## A254773.P12512506550641748137

`A254775(eq[5, A193592(n)])`
-/

namespace A254773.P12512506550641748137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254773.P12512506550641748137

/-! ## A254773.P12079100073428469217

`A254775(eq[6, A200370(n+1)])`
-/

namespace A254773.P12079100073428469217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254773.P12079100073428469217

/-! ## A254773.P15836847869326577958

`A254775(Δ[Δ[A006504(n+1)]])`
-/

namespace A254773.P15836847869326577958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (f1 (n + 1) - f1 n).toNat

end

end A254773.P15836847869326577958

/-!
# A254774: Number of (n+2) X (7+2) 0..1 arrays with every 3 X 3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254774, there is no canonical definition to state claims against.
-/

/-! ## A254774.P2356322287439213151

`A254775(A055999(n+4))`
-/

namespace A254774.P2356322287439213151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A055999 (n + 4)).toNat

end

end A254774.P2356322287439213151

/-! ## A254774.P1552785798365814604

`A254775(eq[4, A219347(n)])`
-/

namespace A254774.P1552785798365814604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254774.P1552785798365814604

/-! ## A254774.P18111264590129770492

`A254775(eq[6, A193592(n)])`
-/

namespace A254774.P18111264590129770492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254774.P18111264590129770492

/-! ## A254774.P13235932539321006840

`A254775(A000096(n+6)-5)`
-/

namespace A254774.P13235932539321006840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A000096 (n + 6) - 5).toNat

end

end A254774.P13235932539321006840

/-! ## A254774.P7122593397179086731

`A254775(A000124(n+7)-7)`
-/

namespace A254774.P7122593397179086731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A000124 (n + 7) - 7).toNat

end

end A254774.P7122593397179086731

/-!
# A254776: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254776, there is no canonical definition to state claims against.
-/

/-! ## A254776.P11937894297124343203

`A254775(∑[n+1]+2)`
-/

namespace A254776.P11937894297124343203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254776.P11937894297124343203

/-! ## A254776.P6463541508348903209

`record[A254775(A112367(n)+2)]`
-/

namespace A254776.P6463541508348903209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254776.P6463541508348903209

/-! ## A254776.P11688746646039433933

`record[A010054(n)*A254775(n+2)]`
-/

namespace A254776.P11688746646039433933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254776.P11688746646039433933

/-! ## A254776.P9738096604576438692

`record[gcd(A002262(n), A254775(n+2))]`
-/

namespace A254776.P9738096604576438692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254775 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254776.P9738096604576438692

/-! ## A254776.P14523758398613139823

`record[A185916(n+1)*A254775(n+2)]`
-/

namespace A254776.P14523758398613139823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 1) * A254775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254776.P14523758398613139823

/-!
# A254777: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254777, there is no canonical definition to state claims against.
-/

/-! ## A254777.P12764402853559210672

`A254775(∑[n+2]+4)`
-/

namespace A254777.P12764402853559210672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254777.P12764402853559210672

/-! ## A254777.P4700160522319312470

`A254775(A167614(n+1))+A025438(n)`
-/

namespace A254777.P4700160522319312470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A167614 (n + 1)).toNat + A025438 n

end

end A254777.P4700160522319312470

/-! ## A254777.P16135454047475384163

`lcm(A033999(n), A254775(A167614(n+1)))`
-/

namespace A254777.P16135454047475384163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254775 (A167614 (n + 1)).toNat)

end

end A254777.P16135454047475384163

/-! ## A254777.P13974952254956222243

`or(A000007(n), A254775(A167614(n+1)))`
-/

namespace A254777.P13974952254956222243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254775 (A167614 (n + 1)).toNat)

end

end A254777.P13974952254956222243

/-! ## A254777.P14120909302344148008

`or(A003982(n), A254775(A167614(n+1)))`
-/

namespace A254777.P14120909302344148008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A254775 (A167614 (n + 1)).toNat)

end

end A254777.P14120909302344148008

/-!
# A254778: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254778, there is no canonical definition to state claims against.
-/

/-! ## A254778.P6583375016369882639

`A254775(A141214(n)+7)`
-/

namespace A254778.P6583375016369882639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A141214 n + 7).toNat

end

end A254778.P6583375016369882639

/-! ## A254778.P10082316965781786116

`A254775(A052905(n)+9)`
-/

namespace A254778.P10082316965781786116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A052905 n + 9).toNat

end

end A254778.P10082316965781786116

/-! ## A254778.P12890997739598994846

`A254775(A055999(n)+10)`
-/

namespace A254778.P12890997739598994846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A055999 n + 10).toNat

end

end A254778.P12890997739598994846

/-! ## A254778.P7308130913529747160

`A254775(A167614(n+2)+1)`
-/

namespace A254778.P7308130913529747160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A167614 (n + 2) + 1).toNat

end

end A254778.P7308130913529747160

/-! ## A254778.P14488308214563108739

`A254775(A167499(n+2)-1)`
-/

namespace A254778.P14488308214563108739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A167499 (n + 2) - 1).toNat

end

end A254778.P14488308214563108739

/-!
# A254779: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254779, there is no canonical definition to state claims against.
-/

/-! ## A254779.P2660877675684725672

`A254775(A167499(n+3))`
-/

namespace A254779.P2660877675684725672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A167499 (n + 3)).toNat

end

end A254779.P2660877675684725672

/-! ## A254779.P13197806740323562636

`A254775(A155212(n)+13)`
-/

namespace A254779.P13197806740323562636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A155212 n + 13).toNat

end

end A254779.P13197806740323562636

/-! ## A254779.P3370779447068288284

`A254775(A056000(n)+15)`
-/

namespace A254779.P3370779447068288284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A056000 n + 15).toNat

end

end A254779.P3370779447068288284

/-! ## A254779.P14848139286513686623

`A254775(A000217(n+4)+5)`
-/

namespace A254779.P14848139286513686623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A000217 (n + 4) + 5).toNat

end

end A254779.P14848139286513686623

/-! ## A254779.P13129572691398904227

`A254775(A052905(n+1)+10)`
-/

namespace A254779.P13129572691398904227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A052905 (n + 1) + 10).toNat

end

end A254779.P13129572691398904227

/-!
# A254780: Number of (6+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254780, there is no canonical definition to state claims against.
-/

/-! ## A254780.P2885054085863641301

`A254775(A167499(n+4)+1)`
-/

namespace A254780.P2885054085863641301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A167499 (n + 4) + 1).toNat

end

end A254780.P2885054085863641301

/-! ## A254780.P17178950108237833485

`A254775(A027379(n+3)+9)`
-/

namespace A254780.P17178950108237833485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A027379 (n + 3) + 9).toNat

end

end A254780.P17178950108237833485

/-! ## A254780.P2064354748582719564

`A254775(A052905(n+2)+11)`
-/

namespace A254780.P2064354748582719564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A052905 (n + 2) + 11).toNat

end

end A254780.P2064354748582719564

/-! ## A254780.P3282881319531926468

`A254775(A056000(n+1)+16)`
-/

namespace A254780.P3282881319531926468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A056000 (n + 1) + 16).toNat

end

end A254780.P3282881319531926468

/-! ## A254780.P7671674111199340654

`A254775(eq[7, A131818(n+1)])`
-/

namespace A254780.P7671674111199340654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254780.P7671674111199340654

/-!
# A254781: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and the central column and the two medians of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254781, there is no canonical definition to state claims against.
-/

/-! ## A254781.P17426568217901810210

`A254775(eq[11, A066657(n)])`
-/

namespace A254781.P17426568217901810210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254781.P17426568217901810210

/-! ## A254781.P7557667257877821560

`A254775(A000124(n+6)+6)`
-/

namespace A254781.P7557667257877821560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (A000124 (n + 6) + 6).toNat

end

end A254781.P7557667257877821560

/-! ## A254781.P11835470430234803041

`A254775(eq[6, A002262(n)]+1)`
-/

namespace A254781.P11835470430234803041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A254781.P11835470430234803041

/-! ## A254781.P3204267200652211821

`A254775(eq[8, A131818(n+1)])`
-/

namespace A254781.P3204267200652211821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254781.P3204267200652211821

/-! ## A254781.P10836335923723006159

`A254775(eq[3, A219347(n)]+12)`
-/

namespace A254781.P10836335923723006159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 12)

end

end A254781.P10836335923723006159

/-!
# A254782: Indices of centered hexagonal numbers (A003215) which are also centered pentagonal numbers (A005891).

The programs for A254782, the canonical program `A254782.P7363581985511812643` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254782 has offset 1).

The definition of A254782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254782.P7363581985511812643

`23*a(n-1)-23*a(n-2)+a(n-3)` with `a(0)=1, a(1)=11, a(2)=231`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254782

/-- `23*a(n-1)-23*a(n-2)+a(n-3)` -/
def P7363581985511812643.Spec : Prop :=
  ∀ n, P7363581985511812643.a n = A254782 (n + 1)

theorem P7363581985511812643.correct : P7363581985511812643.Spec := by
  intro n
  simp only [A254782, Nat.add_sub_cancel]

end A254782

/-! ## A254782.P12439009820948992561

`ceil(A157097(n)/6)`
-/

namespace A254782.P12439009820948992561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157097 n : ℚ) / 6⌉

end

end A254782.P12439009820948992561

namespace A254782

/-- `ceil(A157097(n)/6)` -/
def P12439009820948992561.Spec : Prop :=
  ∀ n, P12439009820948992561.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P11956323993576336206

`ceil(A157014(n+1)/2)`
-/

namespace A254782.P11956323993576336206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157014 (n + 1) : ℚ) / 2⌉

end

end A254782.P11956323993576336206

namespace A254782

/-- `ceil(A157014(n+1)/2)` -/
def P11956323993576336206.Spec : Prop :=
  ∀ n, P11956323993576336206.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P13939883781123279956

`ceil(A041049(2*n)/2)`
-/

namespace A254782.P13939883781123279956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041049 (2 * n) : ℚ) / 2⌉

end

end A254782.P13939883781123279956

namespace A254782

/-- `ceil(A041049(2*n)/2)` -/
def P13939883781123279956.Spec : Prop :=
  ∀ n, P13939883781123279956.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P108193803283466730

`ceil(A041219(2*n)/2)`
-/

namespace A254782.P108193803283466730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A041219 (2 * n) : ℚ) / 2⌉

end

end A254782.P108193803283466730

namespace A254782

/-- `ceil(A041219(2*n)/2)` -/
def P108193803283466730.Spec : Prop :=
  ∀ n, P108193803283466730.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P18064712099376820642

`ceil(A153317(2*n)/2)`
-/

namespace A254782.P18064712099376820642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A153317 (2 * n) : ℚ) / 2⌉

end

end A254782.P18064712099376820642

namespace A254782

/-- `ceil(A153317(2*n)/2)` -/
def P18064712099376820642.Spec : Prop :=
  ∀ n, P18064712099376820642.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P8227272241640609589

`ceil(A133275(n+1)/6)`
-/

namespace A254782.P8227272241640609589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133275 (n + 1) : ℚ) / 6⌉

end

end A254782.P8227272241640609589

namespace A254782

/-- `ceil(A133275(n+1)/6)` -/
def P8227272241640609589.Spec : Prop :=
  ∀ n, P8227272241640609589.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P4081947796234058431

`round(5*A133284(n+1)/6)`
-/

namespace A254782.P4081947796234058431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 * A133284 (n + 1) : ℚ) / 6)

end

end A254782.P4081947796234058431

namespace A254782

/-- `round(5*A133284(n+1)/6)` -/
def P4081947796234058431.Spec : Prop :=
  ∀ n, P4081947796234058431.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P15369890940822130517

`A077422(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A254782.P15369890940822130517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077422 n + (1 - a (n - 1))

end

end A254782.P15369890940822130517

namespace A254782

/-- `A077422(n)+1-a(n-1)` -/
def P15369890940822130517.Spec : Prop :=
  ∀ n, P15369890940822130517.a n = A254782 (n + 1)

end A254782

/-! ## A254782.P11961857623205646732

`∑[A153317(record[A006369(n)])]`
-/

namespace A254782.P11961857623205646732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153317 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254782.P11961857623205646732

namespace A254782

/-- `∑[A153317(record[A006369(n)])]` -/
def P11961857623205646732.Spec : Prop :=
  ∀ n, P11961857623205646732.a n = A254782 (n + 1)

end A254782

/-!
# A254784: Apply partial sum operator 5 times to primes.

The programs for A254784, the canonical program `A254784.P9321430729431303408` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254784 has offset 1).

The definition of A254784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254784.P9321430729431303408

`∑[A178138(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254784

/-- `∑[A178138(n+1)]` -/
def P9321430729431303408.Spec : Prop :=
  ∀ n, P9321430729431303408.a n = A254784 (n + 1)

theorem P9321430729431303408.correct : P9321430729431303408.Spec := by
  intro n
  simp only [A254784, Nat.add_sub_cancel]

end A254784

/-! ## A254784.P1079837110694960336

`∑[∑[A014150(n+1)]]`
-/

namespace A254784.P1079837110694960336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254784.P1079837110694960336

namespace A254784

/-- `∑[∑[A014150(n+1)]]` -/
def P1079837110694960336.Spec : Prop :=
  ∀ n, P1079837110694960336.a n = A254784 (n + 1)

end A254784

/-! ## A254784.P13344895617406602947

`∑[∑[∑[A014148(n+1)]]]`
-/

namespace A254784.P13344895617406602947
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254784.P13344895617406602947

namespace A254784

/-- `∑[∑[∑[A014148(n+1)]]]` -/
def P13344895617406602947.Spec : Prop :=
  ∀ n, P13344895617406602947.a n = A254784 (n + 1)

end A254784

/-! ## A254784.P10368858703636475843

`∑[∑[∑[∑[A007504(n+1)]]]]`
-/

namespace A254784.P10368858703636475843
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254784.P10368858703636475843

namespace A254784

/-- `∑[∑[∑[∑[A007504(n+1)]]]]` -/
def P10368858703636475843.Spec : Prop :=
  ∀ n, P10368858703636475843.a n = A254784 (n + 1)

end A254784

/-! ## A254784.P17155435021652314451

`∑[∑[∑[∑[∑[A000040(n+1)]]]]]`
-/

namespace A254784.P17155435021652314451
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254784.P17155435021652314451

namespace A254784

/-- `∑[∑[∑[∑[∑[A000040(n+1)]]]]]` -/
def P17155435021652314451.Spec : Prop :=
  ∀ n, P17155435021652314451.a n = A254784 (n + 1)

end A254784

/-!
# A254785: Zeroless numbers n with digits d_1, d_2, ... d_k such that F(d_1) + F(d_2) + ... + F(d_k) is a Fibonacci number where F(.) is A000045.

The programs for A254785, there is no canonical definition to state claims against.
-/

/-! ## A254785.P9453158293630407699

`∑[A018338(A029318(n)!)]`
-/

namespace A254785.P9453158293630407699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018338 (Nat.factorial (A029318 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254785.P9453158293630407699

/-! ## A254785.P17786326672362911803

`∑[A048766(A059016(n)!)]`
-/

namespace A254785.P17786326672362911803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.factorial (A059016 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254785.P17786326672362911803

/-! ## A254785.P18045491824092245701

`∑[A010125(A196126(n+1)²)]`
-/

namespace A254785.P18045491824092245701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (A196126 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254785.P18045491824092245701

/-! ## A254785.P16746173549507805403

`∑[floor(A327062(A363528(n+3))/2)]`
-/

namespace A254785.P16746173549507805403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327062 (A363528 (n + 3)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254785.P16746173549507805403

/-! ## A254785.P18213583426873029097

`∑[A034880(A000142(A029318(n))²)]`
-/

namespace A254785.P18213583426873029097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034880 (A000142 (A029318 n).toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254785.P18213583426873029097

/-!
# A254786: Fibonacci numbers n with digits d_1, d_2, ... d_k such that F(d_1) + F(d_2) + ... + F(d_k) is a Fibonacci number where F(.) is A000045.

The programs for A254786, there is no canonical definition to state claims against.
-/

/-! ## A254786.P11358124021440929390

`A000045(lt[a(n-2)+a(n-4), 7])` with `a(0)=0, a(1)=7, a(2)=2, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A254786.P11358124021440929390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7, 2, 0, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254786.P11358124021440929390

/-! ## A254786.P9528262200245332978

`record[A035517(A367395(n))]`
-/

namespace A254786.P9528262200245332978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (A367395 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254786.P9528262200245332978

/-! ## A254786.P8972611130509687703

`record[A256655(record[A057164(n)])]`
-/

namespace A254786.P8972611130509687703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256655 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254786.P8972611130509687703

/-! ## A254786.P6147845130206820518

`record[A000045(n)%A023639(n)]`
-/

namespace A254786.P6147845130206820518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A023639 (n + 13))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254786.P6147845130206820518

/-! ## A254786.P11422604126438645022

`lt[A317208(n), A074346(n+1)]`
-/

namespace A254786.P11422604126438645022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254786.P11422604126438645022

/-!
# A254788: Lexicographically earliest permutation of the natural numbers, such that both numbers a(n)+a(n+1) and abs(a(n)-a(n+1)) occur all in all not more than once.

The programs for A254788, there is no canonical definition to state claims against.
-/

/-! ## A254788.P4586225167133039574

`A254793(n)-a(n-1)` with `a(0)=1`
-/

namespace A254788.P4586225167133039574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254793 n - a (n - 1)

end

end A254788.P4586225167133039574

/-!
# A254789: The number of unlabeled binary trees that contain n distinct subtrees, where a subtree means take any node and everything below that node.

The programs for A254789, there is no canonical definition to state claims against.
-/

/-! ## A254789.P17926489787522922243

`or(∑[n], A136400(n^n))`
-/

namespace A254789.P17926489787522922243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A136400 (n ^ n))

end

end A254789.P17926489787522922243

/-! ## A254789.P7237747132882879278

`A004719(A394818(n))`
-/

namespace A254789.P7237747132882879278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A394818 n).toNat

end

end A254789.P7237747132882879278

/-!
# A254792: Absolute first differences of A254788.

The programs for A254792, there is no canonical definition to state claims against.
-/

/-! ## A254792.P10486003598100878007

`abs(Δ[A254793(n)-a(n-1)])` with `a(0)=1`
-/

namespace A254792.P10486003598100878007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A254793 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A254792.P10486003598100878007

/-! ## A254792.P12307347367018210880

`abs(2*A254788(n+1)-A254793(n+1))`
-/

namespace A254792.P12307347367018210880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A254788 (n + 1) - A254793 (n + 1)|

end

end A254792.P12307347367018210880

/-! ## A254792.P6224068930975540975

`abs(Δ[A254788(n+1)])`
-/

namespace A254792.P6224068930975540975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A254792.P6224068930975540975

/-! ## A254792.P17675007304325643322

`abs(A254788(n+1)-A254788(n+2))`
-/

namespace A254792.P17675007304325643322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254788 (n + 1) - A254788 (n + 2)|

end

end A254792.P17675007304325643322

/-! ## A254792.P16633107012662035791

`lcm(A134101(n+1)%2, Δ[A254788(n+1)])`
-/

namespace A254792.P16633107012662035791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A134101 (n + 1)) 2) (f1 (n + 1) - f1 n)

end

end A254792.P16633107012662035791

/-!
# A254793: Sums of pairs of adjacent pairs of terms in A254788.

The programs for A254793, there is no canonical definition to state claims against.
-/

/-! ## A254793.P7140051085535089343

`A254788(n+1)+A254788(n+2)`
-/

namespace A254793.P7140051085535089343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254788 (n + 1) + A254788 (n + 2)

end

end A254793.P7140051085535089343

/-!
# A254795: Numerators of the convergents of the generalized continued fraction 2 + 1^2/(4 + 3^2/(4 + 5^2/(4 + ... ))).

The programs for A254795, the canonical program `A254795.P6288039983587568195` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254795 has offset 0).

The definition of A254795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254795.P6288039983587568195

`4*a(n-1)+(2*n-1)²*a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254795

/-- `4*a(n-1)+(2*n-1)²*a(n-2)` -/
def P6288039983587568195.Spec : Prop :=
  ∀ n, P6288039983587568195.a n = A254795 n

theorem P6288039983587568195.correct : P6288039983587568195.Spec := by
  intro n
  simp only [A254795]

end A254795

/-! ## A254795.P17177260414900571327

`∏[(2*n+1)/ceil(a(n-1))+2*n+1]` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A254795.P17177260414900571327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (2 * n + 1 : ℚ) / (⌈f1 (n - 1)⌉ : ℚ) + (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254795.P17177260414900571327

namespace A254795

/-- `∏[(2*n+1)/ceil(a(n-1))+2*n+1]` -/
def P17177260414900571327.Spec : Prop :=
  ∀ n, P17177260414900571327.a n = (A254795 n : ℚ)

end A254795

/-!
# A254796: Denominators of the convergents of the generalized continued fraction 2 + 1^2/(4 + 3^2/(4 + 5^2/(4 + ... ))).

The programs for A254796, the canonical program `A254796.P2235576591029838972` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254796 has offset 0).

The definition of A254796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254796.P2235576591029838972

`4*a(n-1)+(2*n-1)²*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254796

/-- `4*a(n-1)+(2*n-1)²*a(n-2)` -/
def P2235576591029838972.Spec : Prop :=
  ∀ n, P2235576591029838972.a n = A254796 n

theorem P2235576591029838972.correct : P2235576591029838972.Spec := by
  intro n
  simp only [A254796]

end A254796

/-! ## A254796.P17958688625894184203

`∏[(2*n+1)/ceil(a(n-1))+2*n+1]` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A254796.P17958688625894184203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (2 * n + 1 : ℚ) / (⌈f1 (n - 1)⌉ : ℚ) + (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254796.P17958688625894184203

namespace A254796

/-- `∏[(2*n+1)/ceil(a(n-1))+2*n+1]` -/
def P17958688625894184203.Spec : Prop :=
  ∀ n, P17958688625894184203.a n = (A254796 n : ℚ)

end A254796

/-!
# A254797: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254797, there is no canonical definition to state claims against.
-/

/-! ## A254797.P5662400323704825431

`A254804(∑[4*n]+1)`
-/

namespace A254797.P5662400323704825431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254797.P5662400323704825431

/-! ## A254797.P7188558238301859803

`record[gcd(A037012(n), A254804(n+1))]`
-/

namespace A254797.P7188558238301859803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A254804 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254797.P7188558238301859803

/-! ## A254797.P4531652142902808102

`A254804(A001844(n))+A178798(n)`
-/

namespace A254797.P4531652142902808102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A001844 n).toNat + A178798 n

end

end A254797.P4531652142902808102

/-! ## A254797.P7131430193162013279

`A254804(A001844(n))%A258907(n+1)`
-/

namespace A254797.P7131430193162013279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254804 (A001844 n).toNat) (A258907 (n + 1))

end

end A254797.P7131430193162013279

/-! ## A254797.P8088656788382159

`or(A088806(n+1), A254804(A001844(n)))`
-/

namespace A254797.P8088656788382159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088806 (n + 1)) (A254804 (A001844 n).toNat)

end

end A254797.P8088656788382159

/-!
# A254798: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254798, there is no canonical definition to state claims against.
-/

/-! ## A254798.P12670868970015387873

`A254804(∑[n+2])`
-/

namespace A254798.P12670868970015387873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254798.P12670868970015387873

/-! ## A254798.P16363151511149899759

`record[A254804(A000096(A003963(n+1)))]`
-/

namespace A254798.P16363151511149899759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254798.P16363151511149899759

/-! ## A254798.P13220142861326113694

`A254804(A000096(n+1))%A017491(n)`
-/

namespace A254798.P13220142861326113694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254804 (A000096 (n + 1)).toNat) (A017491 n)

end

end A254798.P13220142861326113694

/-! ## A254798.P5576618672975128049

`char[A001057(n)]*A254804(A000096(n+1))`
-/

namespace A254798.P5576618672975128049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254804 (A000096 (n + 1)).toNat

end

end A254798.P5576618672975128049

/-!
# A254799: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254799, there is no canonical definition to state claims against.
-/

/-! ## A254799.P9822768658834203340

`A254804(∑[n+3]+1)`
-/

namespace A254799.P9822768658834203340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254799.P9822768658834203340

/-! ## A254799.P9905437529837834487

`A254804(A034856(n+2))+A025444(n)`
-/

namespace A254799.P9905437529837834487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A034856 (n + 2)).toNat + A025444 n

end

end A254799.P9905437529837834487

/-! ## A254799.P14178051224326159429

`A014029(n²)!*A254804(A052905(n)+3)`
-/

namespace A254799.P14178051224326159429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A014029 (n ^ 2)).toNat : ℤ) * A254804 (A052905 n + 3).toNat

end

end A254799.P14178051224326159429

/-! ## A254799.P16633016083958740360

`A001222(A061237(n+1))*A254804(A052905(n)+3)`
-/

namespace A254799.P16633016083958740360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061237 (n + 1)).toNat * A254804 (A052905 n + 3).toNat

end

end A254799.P16633016083958740360

/-! ## A254799.P740295022480767663

`A001222(A061242(n+1))*A254804(A052905(n)+3)`
-/

namespace A254799.P740295022480767663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061242 (n + 1)).toNat * A254804 (A052905 n + 3).toNat

end

end A254799.P740295022480767663

