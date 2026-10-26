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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054100: T(n,n), array T as in A054098.

The programs for A054100, there is no canonical definition to state claims against.
-/

/-! ## A054100.P16814980268802353701

`A054098(∑[n+1])`
-/

namespace A054100.P16814980268802353701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054100.P16814980268802353701

/-! ## A054100.P6606452681583644159

`A062157(n)+A054101(A028310(n))`
-/

namespace A054100.P6606452681583644159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A054101 (A028310 n).toNat

end

end A054100.P6606452681583644159

/-! ## A054100.P15927774383406863429

`lcm(A000034(n), A054098(A000217(n+1)))`
-/

namespace A054100.P15927774383406863429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A054098 (A000217 (n + 1)).toNat)

end

end A054100.P15927774383406863429

/-! ## A054100.P6473316249415043217

`or(A000007(n), A054098(A000217(n+1)))`
-/

namespace A054100.P6473316249415043217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054098 (A000217 (n + 1)).toNat)

end

end A054100.P6473316249415043217

/-! ## A054100.P17045615171621201306

`A054098(A000217(n+1))^(A037127(n)%2)`
-/

namespace A054100.P17045615171621201306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054098 (A000217 (n + 1)).toNat : ℚ) ^ (Int.tmod (A037127 n) 2 : ℤ)

end

end A054100.P17045615171621201306

/-! ## A054100.P1322046215049401635

`A054098(A000217(n+1))^and(1, A014551(n))`
-/

namespace A054100.P1322046215049401635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054098 (A000217 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A014551 n) : ℤ)

end

end A054100.P1322046215049401635

/-! ## A054100.P12550994834282651970

`A054098(A000217(n+1))+2%A308186(n+1)`
-/

namespace A054100.P12550994834282651970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A000217 (n + 1)).toNat + Int.tmod 2 (A308186 (n + 1))

end

end A054100.P12550994834282651970

/-! ## A054100.P6160872737722684861

`A054098(A000217(n+1))^gcd(2, A000040(n+1))`
-/

namespace A054100.P6160872737722684861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A000217 (n + 1)).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A054100.P6160872737722684861

/-! ## A054100.P8789178769987432957

`A014963(24*(n+1))*A054098(A000217(n+1))`
-/

namespace A054100.P8789178769987432957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (24 * (n + 1)) * A054098 (A000217 (n + 1)).toNat

end

end A054100.P8789178769987432957

/-! ## A054100.P138330315429065893

`A132380(4*n+2)²*A054098(A000217(n+1))`
-/

namespace A054100.P138330315429065893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (4 * n + 2) ^ 2 * A054098 (A000217 (n + 1)).toNat

end

end A054100.P138330315429065893

/-!
# A054101: T(n,n-1), array T as in A054098.

The programs for A054101, there is no canonical definition to state claims against.
-/

/-! ## A054101.P3954789815425015833

`A054098(∑[n+2])`
-/

namespace A054101.P3954789815425015833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054101.P3954789815425015833

/-! ## A054101.P1282112786425476609

`A054099(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A054101.P1282112786425476609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A054099 n - a (n - 1)

end

end A054101.P1282112786425476609

/-! ## A054101.P15592896615104118011

`A054100(n+1)-(-1)^n`
-/

namespace A054101.P15592896615104118011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054100 (n + 1) - (-1) ^ n

end

end A054101.P15592896615104118011

/-! ## A054101.P12719399779075459232

`abs(A054100(n+1)-A033999(n))`
-/

namespace A054101.P12719399779075459232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054100 (n + 1) - A033999 n|

end

end A054101.P12719399779075459232

/-! ## A054101.P17265523517143313923

`A033999(n+1)+A054100(n+1)`
-/

namespace A054101.P17265523517143313923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A054100 (n + 1)

end

end A054101.P17265523517143313923

/-! ## A054101.P6171598756854442786

`A054098(A084265(n+1))+and(1, n)`
-/

namespace A054101.P6171598756854442786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A084265 (n + 1)).toNat + (Nat.land 1 n : ℤ)

end

end A054101.P6171598756854442786

/-!
# A054102: T(n,n-2), array T as in A054098.

The programs for A054102, there is no canonical definition to state claims against.
-/

/-! ## A054102.P7409883871138438251

`A054098(∑[n+3]+1)`
-/

namespace A054102.P7409883871138438251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054102.P7409883871138438251

/-! ## A054102.P13145077730671044446

`or(A000007(n), A054098(A000124(n+3)-3))`
-/

namespace A054102.P13145077730671044446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054098 (A000124 (n + 3) - 3).toNat)

end

end A054102.P13145077730671044446

/-! ## A054102.P160964138960992066

`A007318(C(2*n+1, 2))*A054098(A034856(n+2))`
-/

namespace A054102.P160964138960992066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (2 * n + 1) 2) * A054098 (A034856 (n + 2)).toNat

end

end A054102.P160964138960992066

/-! ## A054102.P3786612185174795673

`A007318(A000217(n))*A054098(A034856(n+2))`
-/

namespace A054102.P3786612185174795673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A054098 (A034856 (n + 2)).toNat

end

end A054102.P3786612185174795673

/-! ## A054102.P8070514855339984408

`A054098(A034856(n+2))/A007318(A000217(n+1))`
-/

namespace A054102.P8070514855339984408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054098 (A034856 (n + 2)).toNat : ℚ) / (A007318 (A000217 (n + 1)).toNat : ℚ)

end

end A054102.P8070514855339984408

/-! ## A054102.P18425774483631057205

`A054098(A034856(n+2))^A014963(A022757(n+1))`
-/

namespace A054102.P18425774483631057205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054098 (A034856 (n + 2)).toNat : ℚ) ^ (A014963 (A022757 (n + 1)).toNat : ℤ)

end

end A054102.P18425774483631057205

/-! ## A054102.P3643471530987584229

`A054098(A034856(n+2))%A054105(n+3)`
-/

namespace A054102.P3643471530987584229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054098 (A034856 (n + 2)).toNat) (A054105 (n + 3))

end

end A054102.P3643471530987584229

/-!
# A054103: T(n,n-3), array T as in A054098.

The programs for A054103, there is no canonical definition to state claims against.
-/

/-! ## A054103.P4488500047592801709

`A054098(∑[n+4]+3)`
-/

namespace A054103.P4488500047592801709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054103.P4488500047592801709

/-! ## A054103.P5380529554502374140

`xor(1, xor(1, A054098(A055998(n+2))))`
-/

namespace A054103.P5380529554502374140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A054098 (A055998 (n + 2)).toNat))

end

end A054103.P5380529554502374140

/-! ## A054103.P10872201577706803149

`A054098(Δ[A034857(n+1)])+A000038(n+1)`
-/

namespace A054103.P10872201577706803149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A054103.P10872201577706803149

/-! ## A054103.P7002724728573118906

`A054098(Δ[A034857(n+1)])+A000035(2*n)`
-/

namespace A054103.P7002724728573118906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A054103.P7002724728573118906

/-! ## A054103.P5083954515698526023

`A054098(A055998(n+2))*A296207(A107801(n+1))`
-/

namespace A054103.P5083954515698526023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A055998 (n + 2)).toNat * A296207 (A107801 (n + 1)).toNat

end

end A054103.P5083954515698526023

/-! ## A054103.P11339558574308758418

`A054098(A055998(n+2))+A005369(A016742(n)+1)`
-/

namespace A054103.P11339558574308758418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A055998 (n + 2)).toNat + A005369 (A016742 n + 1).toNat

end

end A054103.P11339558574308758418

/-!
# A054104: T(n,2), array T as in A054098.

The programs for A054104, there is no canonical definition to state claims against.
-/

/-! ## A054104.P1461067925921003193

`Δ[(n-1)*a(n-1)+n]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A054104.P1461067925921003193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054104.P1461067925921003193

/-! ## A054104.P2330391840028433948

`Δ[A054099(n)]`
-/

namespace A054104.P2330391840028433948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054104.P2330391840028433948

/-! ## A054104.P11217548107797267654

`record[A054098(∑[n]+3)]`
-/

namespace A054104.P11217548107797267654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054104.P11217548107797267654

/-! ## A054104.P9049880106110491004

`A054098(∑[n+2]+4)`
-/

namespace A054104.P9049880106110491004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A054104.P9049880106110491004

/-! ## A054104.P11105411048722307004

`A054099(n+1)-A054099(n)`
-/

namespace A054104.P11105411048722307004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054099 (n + 1) - A054099 n

end

end A054104.P11105411048722307004

/-! ## A054104.P7702030284118421225

`A054099(n+2)%A054105(n+3)`
-/

namespace A054104.P7702030284118421225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054099 (n + 2)) (A054105 (n + 3))

end

end A054104.P7702030284118421225

/-!
# A054105: T(n,3), array T as in A054098.

The programs for A054105, there is no canonical definition to state claims against.
-/

/-! ## A054105.P315672388359212653

`A054098(A055999(n)+10)`
-/

namespace A054105.P315672388359212653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A055999 n + 10).toNat

end

end A054105.P315672388359212653

/-! ## A054105.P1281293328413173177

`A054098(A167614(n+2)+1)`
-/

namespace A054105.P1281293328413173177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A167614 (n + 2) + 1).toNat

end

end A054105.P1281293328413173177

/-! ## A054105.P6488894264138198975

`A054098(A166136(n+2)-2)`
-/

namespace A054105.P6488894264138198975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A166136 (n + 2) - 2).toNat

end

end A054105.P6488894264138198975

/-! ## A054105.P18059619749149947616

`A054098(A000096(n+2)+5)`
-/

namespace A054105.P18059619749149947616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A000096 (n + 2) + 5).toNat

end

end A054105.P18059619749149947616

/-! ## A054105.P3019231516474096253

`A054098(A034856(n+2)+6)`
-/

namespace A054105.P3019231516474096253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A034856 (n + 2) + 6).toNat

end

end A054105.P3019231516474096253

/-! ## A054105.P15509510508565350713

`A054104(n+3)+A054099(n)`
-/

namespace A054105.P15509510508565350713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054104 (n + 3) + A054099 n

end

end A054105.P15509510508565350713

/-! ## A054105.P13749819115818524186

`A054099(n)+Δ[A054099(n+1)]`
-/

namespace A054105.P13749819115818524186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054099 n + (f1 (n + 1) - f1 n)

end

end A054105.P13749819115818524186

/-! ## A054105.P10616912834566326516

`A054098(A166136(n+1)+1+n)`
-/

namespace A054105.P10616912834566326516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054098 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A054105.P10616912834566326516

/-!
# A054106: Alternating sums of vertically aligned numbers in Pascal's triangle: T(n,k) = C(n,k) - C(n-2,k-1) + C(n-4,k-2) - ... +- C(n-2[n/2],m).

The programs for A054106, there is no canonical definition to state claims against.
-/

/-! ## A054106.P4911167658719420350

`A280814(A026637(n))`
-/

namespace A054106.P4911167658719420350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A026637 n).toNat

end

end A054106.P4911167658719420350

/-! ## A054106.P11717081441693647717

`A003313(A124976(n+1))+1`
-/

namespace A054106.P11717081441693647717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A124976 (n + 1)).toNat + 1

end

end A054106.P11717081441693647717

/-! ## A054106.P3383008996936698105

`A072405(n)+A043545(A022166(n))`
-/

namespace A054106.P3383008996936698105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 n + A043545 (A022166 n).toNat

end

end A054106.P3383008996936698105

/-! ## A054106.P8846768701570514870

`A253642(A260340(n))+A072405(n)`
-/

namespace A054106.P8846768701570514870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253642 (A260340 n).toNat + A072405 n

end

end A054106.P8846768701570514870

/-! ## A054106.P1912761411881295566

`A260999(A145903(n))`
-/

namespace A054106.P1912761411881295566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A145903 n).toNat

end

end A054106.P1912761411881295566

/-!
# A054107: T(n,n-3), array T as in A054106.

The programs for A054107, the canonical program `A054107.P8727902113154063730` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054107 has offset 3).

The definition of A054107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054107.P8727902113154063730

`∑[∑[n]+a((3%n)%2)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054107

/-- `∑[∑[n]+a((3%n)%2)]` -/
def P8727902113154063730.Spec : Prop :=
  ∀ n, (P8727902113154063730.a n : ℤ) = A054107 (n + 3)

theorem P8727902113154063730.correct : P8727902113154063730.Spec := by
  intro n
  simp only [A054107, Nat.add_sub_cancel]

end A054107

/-! ## A054107.P16348730154962681565

`∑[floor(∑[n]+n²/a(n-1))]` with `a(0)=1`
-/

namespace A054107.P16348730154962681565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + (n ^ 2 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054107.P16348730154962681565

namespace A054107

/-- `∑[floor(∑[n]+n²/a(n-1))]` -/
def P16348730154962681565.Spec : Prop :=
  ∀ n, P16348730154962681565.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P13603213692677643891

`∑[floor(∑[n]+n*n/a(n-1))]` with `a(0)=1`
-/

namespace A054107.P13603213692677643891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + (n : ℚ) * ((n : ℚ) / (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054107.P13603213692677643891

namespace A054107

/-- `∑[floor(∑[n]+n*n/a(n-1))]` -/
def P13603213692677643891.Spec : Prop :=
  ∀ n, P13603213692677643891.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P3860820650189417654

`∑[A000124(n)]+floor(n²/(n+2))`
-/

namespace A054107.P3860820650189417654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n ^ 2 : ℚ) / (n + 2 : ℚ)⌋

end

end A054107.P3860820650189417654

namespace A054107

/-- `∑[A000124(n)]+floor(n²/(n+2))` -/
def P3860820650189417654.Spec : Prop :=
  ∀ n, P3860820650189417654.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P3997195269372479905

`A058992(n+1)+A000292(n)+1`
-/

namespace A054107.P3997195269372479905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1) + (A000292 n + 1)

end

end A054107.P3997195269372479905

namespace A054107

/-- `A058992(n+1)+A000292(n)+1` -/
def P3997195269372479905.Spec : Prop :=
  ∀ n, P3997195269372479905.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P16716565812261442742

`∑[A040001(A187211(n))+∑[n]]`
-/

namespace A054107.P16716565812261442742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A187211 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054107.P16716565812261442742

namespace A054107

/-- `∑[A040001(A187211(n))+∑[n]]` -/
def P16716565812261442742.Spec : Prop :=
  ∀ n, P16716565812261442742.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P6711837183233119069

`A054106(A167614(n+2))`
-/

namespace A054107.P6711837183233119069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (A167614 (n + 2)).toNat

end

end A054107.P6711837183233119069

namespace A054107

/-- `A054106(A167614(n+2))` -/
def P6711837183233119069.Spec : Prop :=
  ∀ n, P6711837183233119069.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P6581818657942349834

`A054106(∑[n+3]+n+3)`
-/

namespace A054107.P6581818657942349834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A054107.P6581818657942349834

namespace A054107

/-- `A054106(∑[n+3]+n+3)` -/
def P6581818657942349834.Spec : Prop :=
  ∀ n, P6581818657942349834.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P16071973988885458687

`∑[A000124(n)+A006530(A005250(n+2))%2]`
-/

namespace A054107.P16071973988885458687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + Int.tmod (A006530 (A005250 (n + 2)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054107.P16071973988885458687

namespace A054107

/-- `∑[A000124(n)+A006530(A005250(n+2))%2]` -/
def P16071973988885458687.Spec : Prop :=
  ∀ n, P16071973988885458687.a n = A054107 (n + 3)

end A054107

/-! ## A054107.P5563148726455530657

`A000125(n)+∑[A131209(n)]`
-/

namespace A054107.P5563148726455530657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054107.P5563148726455530657

namespace A054107

/-- `A000125(n)+∑[A131209(n)]` -/
def P5563148726455530657.Spec : Prop :=
  ∀ n, P5563148726455530657.a n = A054107 (n + 3)

end A054107

/-!
# A054108: a(n) = (-1)^(n+1)*Sum_{k=0..n+1}(-1)^k*binomial(2*k,k).

The programs for A054108, the canonical program `A054108.P12292871805328763714` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054108 has offset 0).

The definition of A054108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054108.P11483524714342892159

`∏[4-2/(n+1)]/2+∏[4-2/(n+1)]/2-a(n-1)` with `a(0)=1`
-/

namespace A054108.P11483524714342892159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 + ((∏ j ∈ Finset.range (n + 1), f2 j) / 2 - a (n - 1))

end

end A054108.P11483524714342892159

namespace A054108

/-- `∏[4-2/(n+1)]/2+∏[4-2/(n+1)]/2-a(n-1)` -/
def P11483524714342892159.Spec : Prop :=
  ∀ n, P11483524714342892159.a n = (A054108 n : ℚ)

end A054108

/-! ## A054108.P11238729212728013508

`Δ[A106188(n)]`
-/

namespace A054108.P11238729212728013508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054108.P11238729212728013508

namespace A054108

/-- `Δ[A106188(n)]` -/
def P11238729212728013508.Spec : Prop :=
  ∀ n, P11238729212728013508.a n = A054108 n

end A054108

/-! ## A054108.P12292871805328763714

`A000984(n+1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054108

/-- `A000984(n+1)-a(n-1)` -/
def P12292871805328763714.Spec : Prop :=
  ∀ n, P12292871805328763714.a n = A054108 n

theorem P12292871805328763714.correct : P12292871805328763714.Spec := by
  intro n
  simp only [A054108]

end A054108

/-! ## A054108.P10012206526780039272

`2*A001700(n)-a(n-1)` with `a(0)=1`
-/

namespace A054108.P10012206526780039272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001700 n - a (n - 1)

end

end A054108.P10012206526780039272

namespace A054108

/-- `2*A001700(n)-a(n-1)` -/
def P10012206526780039272.Spec : Prop :=
  ∀ n, P10012206526780039272.a n = A054108 n

end A054108

/-! ## A054108.P2328175551648430666

`A030662(n+1)+1-a(n-1)` with `a(0)=1`
-/

namespace A054108.P2328175551648430666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030662 (n + 1) + 1 - a (n - 1)

end

end A054108.P2328175551648430666

namespace A054108

/-- `A030662(n+1)+1-a(n-1)` -/
def P2328175551648430666.Spec : Prop :=
  ∀ n, P2328175551648430666.a n = A054108 n

theorem P2328175551648430666.correct : P2328175551648430666.Spec := by
  intro n
  simp only [A054108, Nat.add_sub_cancel, A054108.P2328175551648430666.a, A054108.P12292871805328763714.a, A000984, A000984.P7946844122574426130.a, A030662, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054108

/-! ## A054108.P4507287351964138575

`A001405(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A054108.P4507287351964138575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 (2 * (n + 1)) - a (n - 1)

end

end A054108.P4507287351964138575

namespace A054108

/-- `A001405(2*(n+1))-a(n-1)` -/
def P4507287351964138575.Spec : Prop :=
  ∀ n, P4507287351964138575.a n = A054108 n

end A054108

/-! ## A054108.P15322749682973491144

`(n+2)*A000108(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A054108.P15322749682973491144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) * A000108 (n + 1) - a (n - 1)

end

end A054108.P15322749682973491144

namespace A054108

/-- `(n+2)*A000108(n+1)-a(n-1)` -/
def P15322749682973491144.Spec : Prop :=
  ∀ n, P15322749682973491144.a n = A054108 n

end A054108

/-! ## A054108.P3602138347702333941

`A106188(n+1)-A106188(n)`
-/

namespace A054108.P3602138347702333941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106188 (n + 1) - A106188 n

end

end A054108.P3602138347702333941

namespace A054108

/-- `A106188(n+1)-A106188(n)` -/
def P3602138347702333941.Spec : Prop :=
  ∀ n, P3602138347702333941.a n = A054108 n

end A054108

/-! ## A054108.P5144156335632113371

`A054109(n+1)-A331473(n)`
-/

namespace A054108.P5144156335632113371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054109 (n + 1) - A331473 n

end

end A054108.P5144156335632113371

namespace A054108

/-- `A054109(n+1)-A331473(n)` -/
def P5144156335632113371.Spec : Prop :=
  ∀ n, P5144156335632113371.a n = A054108 n

end A054108

/-! ## A054108.P12368648216698079133

`Δ[A000035(n)+2*A106269(n)]`
-/

namespace A054108.P12368648216698079133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2 * A106269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054108.P12368648216698079133

namespace A054108

/-- `Δ[A000035(n)+2*A106269(n)]` -/
def P12368648216698079133.Spec : Prop :=
  ∀ n, P12368648216698079133.a n = A054108 n

end A054108

/-! ## A054108.P17848063792413900386

`Δ[2*A106269(n)-A059841(n)]`
-/

namespace A054108.P17848063792413900386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106269 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054108.P17848063792413900386

namespace A054108

/-- `Δ[2*A106269(n)-A059841(n)]` -/
def P17848063792413900386.Spec : Prop :=
  ∀ n, P17848063792413900386.a n = A054108 n

end A054108

/-! ## A054108.P5986482603412936117

`abs(A104551(2*(n+1))+Δ[A104551(2*(n+1))])`
-/

namespace A054108.P5986482603412936117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104551 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104551 (2 * (n + 1)) + (f1 (n + 1) - f1 n)|

end

end A054108.P5986482603412936117

namespace A054108

/-- `abs(A104551(2*(n+1))+Δ[A104551(2*(n+1))])` -/
def P5986482603412936117.Spec : Prop :=
  ∀ n, P5986482603412936117.a n = A054108 n

end A054108

/-! ## A054108.P8032366078028741790

`2*C(2*n+1, n)-a(n-1)` with `a(0)=1`
-/

namespace A054108.P8032366078028741790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * Nat.choose (2 * n + 1) n : ℤ) - a (n - 1)

end

end A054108.P8032366078028741790

namespace A054108

/-- `2*C(2*n+1, n)-a(n-1)` -/
def P8032366078028741790.Spec : Prop :=
  ∀ n, P8032366078028741790.a n = A054108 n

end A054108

/-! ## A054108.P425234415781372528

`Δ[a(n-2)+C(2*n, n)]` with `a(0)=0, a(1)=1`
-/

namespace A054108.P425234415781372528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + Nat.choose (2 * n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054108.P425234415781372528

namespace A054108

/-- `Δ[a(n-2)+C(2*n, n)]` -/
def P425234415781372528.Spec : Prop :=
  ∀ n, P425234415781372528.a n = A054108 n

end A054108

/-! ## A054108.P14010192454719165576

`C(n+2+n, n+1)-a(n-1)` with `a(0)=1`
-/

namespace A054108.P14010192454719165576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 2 + n) (n + 1) : ℤ) - a (n - 1)

end

end A054108.P14010192454719165576

namespace A054108

/-- `C(n+2+n, n+1)-a(n-1)` -/
def P14010192454719165576.Spec : Prop :=
  ∀ n, P14010192454719165576.a n = A054108 n

theorem P14010192454719165576.correct : P14010192454719165576.Spec := by
  intro n
  simp only [A054108, Nat.add_sub_cancel, A054108.P14010192454719165576.a, A054108.P12292871805328763714.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054108

/-!
# A054109: a(n) = T(2*n+1, n), array T as in A054106.

The programs for A054109, the canonical program `A054109.P16989974968516577376` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054109 has offset 0).

The definition of A054109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054109.P2249804454802342403

`∏[4-2/(n+1)]/2-a(n-1)` with `a(0)=1`
-/

namespace A054109.P2249804454802342403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - a (n - 1)

end

end A054109.P2249804454802342403

namespace A054109

/-- `∏[4-2/(n+1)]/2-a(n-1)` -/
def P2249804454802342403.Spec : Prop :=
  ∀ n, P2249804454802342403.a n = (A054109 n : ℚ)

end A054109

/-! ## A054109.P8712902501756191710

`abs(∑[A110556(n+1)])`
-/

namespace A054109.P8712902501756191710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054109.P8712902501756191710

namespace A054109

/-- `abs(∑[A110556(n+1)])` -/
def P8712902501756191710.Spec : Prop :=
  ∀ n, P8712902501756191710.a n = A054109 n

end A054109

/-! ## A054109.P16989974968516577376

`A010763(n)-a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054109

/-- `A010763(n)-a(n-1)+1` -/
def P16989974968516577376.Spec : Prop :=
  ∀ n, P16989974968516577376.a n = A054109 n

theorem P16989974968516577376.correct : P16989974968516577376.Spec := by
  intro n
  simp only [A054109]

end A054109

/-! ## A054109.P2265478541170093562

`Δ[A106269(n)+A000035(n)]`
-/

namespace A054109.P2265478541170093562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106269 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054109.P2265478541170093562

namespace A054109

/-- `Δ[A106269(n)+A000035(n)]` -/
def P2265478541170093562.Spec : Prop :=
  ∀ n, P2265478541170093562.a n = A054109 n

end A054109

/-! ## A054109.P17727667543204109211

`Δ[A106269(n)-A059841(n)]`
-/

namespace A054109.P17727667543204109211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106269 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054109.P17727667543204109211

namespace A054109

/-- `Δ[A106269(n)-A059841(n)]` -/
def P17727667543204109211.Spec : Prop :=
  ∀ n, P17727667543204109211.a n = A054109 n

end A054109

/-! ## A054109.P9593876164763101569

`abs(∑[A000108(n)*A157142(n)])`
-/

namespace A054109.P9593876164763101569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A157142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054109.P9593876164763101569

namespace A054109

/-- `abs(∑[A000108(n)*A157142(n)])` -/
def P9593876164763101569.Spec : Prop :=
  ∀ n, P9593876164763101569.a n = A054109 n

end A054109

/-! ## A054109.P7358262866494473181

`abs(∑[A004273(n+1)*A105523(2*n+1)])`
-/

namespace A054109.P7358262866494473181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) * A105523 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054109.P7358262866494473181

namespace A054109

/-- `abs(∑[A004273(n+1)*A105523(2*n+1)])` -/
def P7358262866494473181.Spec : Prop :=
  ∀ n, P7358262866494473181.a n = A054109 n

end A054109

/-! ## A054109.P14021705152221868575

`abs(∑[A113187(∑[n])])`
-/

namespace A054109.P14021705152221868575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113187 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054109.P14021705152221868575

namespace A054109

/-- `abs(∑[A113187(∑[n])])` -/
def P14021705152221868575.Spec : Prop :=
  ∀ n, P14021705152221868575.a n = A054109 n

end A054109

/-! ## A054109.P10131514694997655267

`floor(C(2*n+1, n)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A054109.P10131514694997655267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n + 1) n : ℤ) - a (n - 1)

end

end A054109.P10131514694997655267

namespace A054109

/-- `floor(C(2*n+1, n)-a(n-1))` -/
def P10131514694997655267.Spec : Prop :=
  ∀ n, P10131514694997655267.a n = A054109 n

end A054109

/-! ## A054109.P8172832066408886883

`A054106(2*(n+1)²)`
-/

namespace A054109.P8172832066408886883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054106 (2 * (n + 1) ^ 2)

end

end A054109.P8172832066408886883

namespace A054109

/-- `A054106(2*(n+1)²)` -/
def P8172832066408886883.Spec : Prop :=
  ∀ n, P8172832066408886883.a n = A054109 n

end A054109

/-!
# A054110: Triangular array T(n,k): in Pascal's triangle, draw vertical lines through binomial(n-1,k-1) (if present) and binomial(n-1,k) (if present); then T(n,k) is the sum of binomial(i,j) that lie on or between the lines and not below binomial(n,k).

The programs for A054110, there is no canonical definition to state claims against.
-/

/-! ## A054110.P8915411453832237838

`A004275(A132046(n))-A003434(A008300(n))`
-/

namespace A054110.P8915411453832237838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A132046 n).toNat - A003434 (A008300 n).toNat

end

end A054110.P8915411453832237838

/-! ## A054110.P7302757479785104981

`A336112(A157170(n))`
-/

namespace A054110.P7302757479785104981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A157170 n).toNat

end

end A054110.P7302757479785104981

/-! ## A054110.P7539176451878467478

`A327705(A143210(n+1))`
-/

namespace A054110.P7539176451878467478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327705 (A143210 (n + 1)).toNat

end

end A054110.P7539176451878467478

/-! ## A054110.P7351790012938754573

`A056792(A217233(A007318(n)))`
-/

namespace A054110.P7351790012938754573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A217233 (A007318 n).toNat).toNat

end

end A054110.P7351790012938754573

/-! ## A054110.P9028942239243936729

`A072649(A157207(n)*A157219(n))`
-/

namespace A054110.P9028942239243936729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A157207 n * A157219 n).toNat

end

end A054110.P9028942239243936729

/-!
# A054111: Row sums of array T as in A054110.

The programs for A054111, the canonical program `A054111.P614052927901555716` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054111 has offset 0).

The definition of A054111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054111.P10127168970287477462

`ogf((1+2x^2+4x^3)/(1-2x-x^2+2x^3))`
-/

namespace A054111.P10127168970287477462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2, 4] [1, -2, -1, 2] n

end

end A054111.P10127168970287477462

namespace A054111

/-- `ogf((1+2x^2+4x^3)/(1-2x-x^2+2x^3))` -/
def P10127168970287477462.Spec : Prop :=
  ∀ n, P10127168970287477462.a n = A054111 n

end A054111

/-! ## A054111.P614052927901555716

`a(n-2)+2^(n+1)` with `a(0)=1, a(1)=2, a(2)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054111

/-- `a(n-2)+2^(n+1)` -/
def P614052927901555716.Spec : Prop :=
  ∀ n, (P614052927901555716.a n : ℤ) = A054111 n

theorem P614052927901555716.correct : P614052927901555716.Spec := by
  intro n
  simp only [A054111]

end A054111

/-! ## A054111.P9092910901801979527

`2*a(n-1)+n%2+3` with `a(0)=1, a(1)=2`
-/

namespace A054111.P9092910901801979527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + (n % 2 + 3)

end

end A054111.P9092910901801979527

namespace A054111

/-- `2*a(n-1)+n%2+3` -/
def P9092910901801979527.Spec : Prop :=
  ∀ n, (P9092910901801979527.a n : ℤ) = A054111 n

end A054111

/-! ## A054111.P7345885873076033758

`2*a(n-1)-gcd(2, n)+5` with `a(0)=1, a(1)=2`
-/

namespace A054111.P7345885873076033758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (Nat.gcd 2 n : ℤ) + 5

end

end A054111.P7345885873076033758

namespace A054111

/-- `2*a(n-1)-gcd(2, n)+5` -/
def P7345885873076033758.Spec : Prop :=
  ∀ n, P7345885873076033758.a n = A054111 n

end A054111

/-! ## A054111.P17909092935467912122

`and(1, n)+2*a(n-1)+3` with `a(0)=1, a(1)=2`
-/

namespace A054111.P17909092935467912122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.land 1 n + (2 * a (n - 1) + 3)

end

end A054111.P17909092935467912122

namespace A054111

/-- `and(1, n)+2*a(n-1)+3` -/
def P17909092935467912122.Spec : Prop :=
  ∀ n, (P17909092935467912122.a n : ℤ) = A054111 n

end A054111

/-! ## A054111.P10843295687890230666

`∑[2*a(n-1)-(-1)^n]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A054111.P10843295687890230666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  2 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054111.P10843295687890230666

namespace A054111

/-- `∑[2*a(n-1)-(-1)^n]` -/
def P10843295687890230666.Spec : Prop :=
  ∀ n, P10843295687890230666.a n = A054111 n

end A054111

/-! ## A054111.P12215220415296636844

`4-(a(n-2)%2-2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A054111.P12215220415296636844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (Int.tmod (a (n - 2)) 2 - 2 * a (n - 1))

end

end A054111.P12215220415296636844

namespace A054111

/-- `4-(a(n-2)%2-2*a(n-1))` -/
def P12215220415296636844.Spec : Prop :=
  ∀ n, P12215220415296636844.a n = A054111 n

end A054111

/-! ## A054111.P8685118230389145682

`a(n-1)+1+a(n-1)+a(n-1)%4` with `a(0)=1, a(1)=2`
-/

namespace A054111.P8685118230389145682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 1) % 4)

end

end A054111.P8685118230389145682

namespace A054111

/-- `a(n-1)+1+a(n-1)+a(n-1)%4` -/
def P8685118230389145682.Spec : Prop :=
  ∀ n, (P8685118230389145682.a n : ℤ) = A054111 n

end A054111

/-! ## A054111.P4918732022182599241

`abs(3-A000975(n+2))`
-/

namespace A054111.P4918732022182599241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A000975 (n + 2)|

end

end A054111.P4918732022182599241

namespace A054111

/-- `abs(3-A000975(n+2))` -/
def P4918732022182599241.Spec : Prop :=
  ∀ n, P4918732022182599241.a n = A054111 n

end A054111

/-! ## A054111.P9816212355305554359

`abs(2-∑[A001045(n+2)])`
-/

namespace A054111.P9816212355305554359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054111.P9816212355305554359

namespace A054111

/-- `abs(2-∑[A001045(n+2)])` -/
def P9816212355305554359.Spec : Prop :=
  ∀ n, P9816212355305554359.a n = A054111 n

end A054111

/-! ## A054111.P4664845204145667200

`A283642(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054111.P4664845204145667200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A283642 n + a (n - 1)

end

end A054111.P4664845204145667200

namespace A054111

/-- `A283642(n)+a(n-1)` -/
def P4664845204145667200.Spec : Prop :=
  ∀ n, P4664845204145667200.a n = A054111 n

end A054111

/-! ## A054111.P4264512098149751927

`A168642(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A054111.P4264512098149751927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168642 (n - 1) + a (n - 1)

end

end A054111.P4264512098149751927

namespace A054111

/-- `A168642(n-1)+a(n-1)` -/
def P4264512098149751927.Spec : Prop :=
  ∀ n, P4264512098149751927.a n = A054111 n

end A054111

/-! ## A054111.P14802461367343216084

`A026644(n)+a(n-1)+1` with `a(0)=1, a(1)=2`
-/

namespace A054111.P14802461367343216084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026644 n + (a (n - 1) + 1)

end

end A054111.P14802461367343216084

namespace A054111

/-- `A026644(n)+a(n-1)+1` -/
def P14802461367343216084.Spec : Prop :=
  ∀ n, P14802461367343216084.a n = A054111 n

end A054111

/-! ## A054111.P17751786664493234889

`A152046(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054111.P17751786664493234889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A152046 (n + 2) + a (n - 1)

end

end A054111.P17751786664493234889

namespace A054111

/-- `A152046(n+2)+a(n-1)` -/
def P17751786664493234889.Spec : Prop :=
  ∀ n, P17751786664493234889.a n = A054111 n

end A054111

/-! ## A054111.P1434453980830093673

`A167167(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054111.P1434453980830093673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A167167 (n + 2) + a (n - 1)

end

end A054111.P1434453980830093673

namespace A054111

/-- `A167167(n+2)+a(n-1)` -/
def P1434453980830093673.Spec : Prop :=
  ∀ n, P1434453980830093673.a n = A054111 n

end A054111

/-! ## A054111.P11637848350535937095

`A048490(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054111.P11637848350535937095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A048490 (n - 1) - a (n - 1)

end

end A054111.P11637848350535937095

namespace A054111

/-- `A048490(n-1)-a(n-1)` -/
def P11637848350535937095.Spec : Prop :=
  ∀ n, P11637848350535937095.a n = A054111 n

end A054111

/-! ## A054111.P8355023874162799113

`A283506(n)+A014113(n)`
-/

namespace A054111.P8355023874162799113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 n + A014113 n

end

end A054111.P8355023874162799113

namespace A054111

/-- `A283506(n)+A014113(n)` -/
def P8355023874162799113.Spec : Prop :=
  ∀ n, P8355023874162799113.a n = A054111 n

end A054111

/-! ## A054111.P13102073469231474389

`A000975(n+2)-A127752(2*n)`
-/

namespace A054111.P13102073469231474389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 2) - A127752 (2 * n)

end

end A054111.P13102073469231474389

namespace A054111

/-- `A000975(n+2)-A127752(2*n)` -/
def P13102073469231474389.Spec : Prop :=
  ∀ n, P13102073469231474389.a n = A054111 n

end A054111

/-! ## A054111.P14201196476811058770

`A095121(n)+A095121(n)-A000975(n+1)`
-/

namespace A054111.P14201196476811058770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (A095121 n - A000975 (n + 1))

end

end A054111.P14201196476811058770

namespace A054111

/-- `A095121(n)+A095121(n)-A000975(n+1)` -/
def P14201196476811058770.Spec : Prop :=
  ∀ n, P14201196476811058770.a n = A054111 n

end A054111

/-! ## A054111.P1719603671317995996

`A026644(n+1)-(A173114(n)+A000975(n))`
-/

namespace A054111.P1719603671317995996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 (n + 1) - (A173114 n + A000975 n)

end

end A054111.P1719603671317995996

namespace A054111

/-- `A026644(n+1)-(A173114(n)+A000975(n))` -/
def P1719603671317995996.Spec : Prop :=
  ∀ n, P1719603671317995996.a n = A054111 n

end A054111

/-!
# A054112: T(n,n-3), array T as in A054110.

The programs for A054112, there is no canonical definition to state claims against.
-/

/-! ## A054112.P6521058312078645012

`A054110(A167614(n+2))`
-/

namespace A054112.P6521058312078645012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054110 (A167614 (n + 2)).toNat

end

end A054112.P6521058312078645012

/-! ## A054112.P5761176880270210055

`A054110(eq[3, A002262(n)])`
-/

namespace A054112.P5761176880270210055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054112.P5761176880270210055

/-! ## A054112.P9931793268048451238

`A054110(∑[n+4]+2)`
-/

namespace A054112.P9931793268048451238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054110 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A054112.P9931793268048451238

/-! ## A054112.P18160314395966300357

`or(A000007(n), A054110(A046691(n+2)))`
-/

namespace A054112.P18160314395966300357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A054110 (A046691 (n + 2)).toNat)

end

end A054112.P18160314395966300357

/-! ## A054112.P14962588493829354825

`A054110(A046691(n+2))%A000712(n+6)`
-/

namespace A054112.P14962588493829354825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054110 (A046691 (n + 2)).toNat) (A000712 (n + 6))

end

end A054112.P14962588493829354825

/-!
# A054113: T(2*n,n), array T as in A054110.

The programs for A054113, the canonical program `A054113.P15219506767305577209` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054113 has offset 0).

The definition of A054113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054113.P13398994231120325398

`∑[(4-2/n)*a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A054113.P13398994231120325398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054113.P13398994231120325398

namespace A054113

/-- `∑[(4-2/n)*a(n-1)]` -/
def P13398994231120325398.Spec : Prop :=
  ∀ n, P13398994231120325398.a n = (A054113 n : ℚ)

end A054113

/-! ## A054113.P3283660377954196908

`∑[2*(2-n^(-1))*a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A054113.P3283660377954196908
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054113.P3283660377954196908

namespace A054113

/-- `∑[2*(2-n^(-1))*a(n-1)]` -/
def P3283660377954196908.Spec : Prop :=
  ∀ n, P3283660377954196908.a n = (A054113 n : ℚ)

end A054113

/-! ## A054113.P17176242515200565400

`∑[record[a(n-1)/(floor(n/2)/n-1)]]` with `a(0)=1, a(1)=4`
-/

namespace A054113.P17176242515200565400
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  f2 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054113.P17176242515200565400

namespace A054113

/-- `∑[record[a(n-1)/(floor(n/2)/n-1)]]` -/
def P17176242515200565400.Spec : Prop :=
  ∀ n, P17176242515200565400.a n = (A054113 n : ℚ)

end A054113

/-! ## A054113.P15219506767305577209

`∑[A100320(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054113

/-- `∑[A100320(n)]` -/
def P15219506767305577209.Spec : Prop :=
  ∀ n, P15219506767305577209.a n = A054113 n

theorem P15219506767305577209.correct : P15219506767305577209.Spec := by
  intro n
  simp only [A054113]

end A054113

/-! ## A054113.P7368246848325119014

`∑[A028329(n)]-1`
-/

namespace A054113.P7368246848325119014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054113.P7368246848325119014

namespace A054113

/-- `∑[A028329(n)]-1` -/
def P7368246848325119014.Spec : Prop :=
  ∀ n, P7368246848325119014.a n = A054113 n

end A054113

/-! ## A054113.P3567865736907028065

`∑[A134760(n)]+n`
-/

namespace A054113.P3567865736907028065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A054113.P3567865736907028065

namespace A054113

/-- `∑[A134760(n)]+n` -/
def P3567865736907028065.Spec : Prop :=
  ∀ n, P3567865736907028065.a n = A054113 n

end A054113

/-! ## A054113.P15245882414312108417

`2*A006134(n)-1`
-/

namespace A054113.P15245882414312108417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006134 n - 1

end

end A054113.P15245882414312108417

namespace A054113

/-- `2*A006134(n)-1` -/
def P15245882414312108417.Spec : Prop :=
  ∀ n, P15245882414312108417.a n = A054113 n

end A054113

/-! ## A054113.P7407205582646373594

`4*A024718(n)-3`
-/

namespace A054113.P7407205582646373594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024718 n - 3

end

end A054113.P7407205582646373594

namespace A054113

/-- `4*A024718(n)-3` -/
def P7407205582646373594.Spec : Prop :=
  ∀ n, P7407205582646373594.a n = A054113 n

end A054113

/-! ## A054113.P6462463571013351356

`∑[2*A000984(n)]-1`
-/

namespace A054113.P6462463571013351356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054113.P6462463571013351356

namespace A054113

/-- `∑[2*A000984(n)]-1` -/
def P6462463571013351356.Spec : Prop :=
  ∀ n, P6462463571013351356.a n = A054113 n

end A054113

/-! ## A054113.P8249465743244494862

`∑[(n+1)*A068875(n)]`
-/

namespace A054113.P8249465743244494862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054113.P8249465743244494862

namespace A054113

/-- `∑[(n+1)*A068875(n)]` -/
def P8249465743244494862.Spec : Prop :=
  ∀ n, P8249465743244494862.a n = A054113 n

end A054113

/-! ## A054113.P16265335073667359783

`∑[A047073(2*n+1)]-1`
-/

namespace A054113.P16265335073667359783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047073 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054113.P16265335073667359783

namespace A054113

/-- `∑[A047073(2*n+1)]-1` -/
def P16265335073667359783.Spec : Prop :=
  ∀ n, P16265335073667359783.a n = A054113 n

end A054113

/-! ## A054113.P4745410098724200718

`∑[A063886(2*n+1)]-1`
-/

namespace A054113.P4745410098724200718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054113.P4745410098724200718

namespace A054113

/-- `∑[A063886(2*n+1)]-1` -/
def P4745410098724200718.Spec : Prop :=
  ∀ n, P4745410098724200718.a n = A054113 n

end A054113

/-! ## A054113.P4415832050829433185

`2*A100066(2*(n+1))-1`
-/

namespace A054113.P4415832050829433185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100066 (2 * (n + 1)) - 1

end

end A054113.P4415832050829433185

namespace A054113

/-- `2*A100066(2*(n+1))-1` -/
def P4415832050829433185.Spec : Prop :=
  ∀ n, P4415832050829433185.a n = A054113 n

end A054113

/-! ## A054113.P12095596628295484491

`2*A124642(2*n+1)-1`
-/

namespace A054113.P12095596628295484491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124642 (2 * n + 1) - 1

end

end A054113.P12095596628295484491

namespace A054113

/-- `2*A124642(2*n+1)-1` -/
def P12095596628295484491.Spec : Prop :=
  ∀ n, P12095596628295484491.a n = A054113 n

end A054113

/-! ## A054113.P35633115083832892

`2*A174783(2*n+1)-1`
-/

namespace A054113.P35633115083832892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174783 (2 * n + 1) - 1

end

end A054113.P35633115083832892

namespace A054113

/-- `2*A174783(2*n+1)-1` -/
def P35633115083832892.Spec : Prop :=
  ∀ n, P35633115083832892.a n = A054113 n

end A054113

/-! ## A054113.P9006832839086164697

`2*A078478(2*(n+2))-1`
-/

namespace A054113.P9006832839086164697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078478 (2 * (n + 2)) - 1

end

end A054113.P9006832839086164697

namespace A054113

/-- `2*A078478(2*(n+2))-1` -/
def P9006832839086164697.Spec : Prop :=
  ∀ n, P9006832839086164697.a n = A054113 n

end A054113

/-! ## A054113.P11709397808009223078

`∑[2*(n+1)*A000108(n)]-1`
-/

namespace A054113.P11709397808009223078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000108 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054113.P11709397808009223078

namespace A054113

/-- `∑[2*(n+1)*A000108(n)]-1` -/
def P11709397808009223078.Spec : Prop :=
  ∀ n, P11709397808009223078.a n = A054113 n

end A054113

/-! ## A054113.P13634598215773189865

`∑[4*(a(n-1)-A000108(n-1))]-1` with `a(0)=2`
-/

namespace A054113.P13634598215773189865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  4 * (f1 (n - 1) - A000108 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054113.P13634598215773189865

namespace A054113

/-- `∑[4*(a(n-1)-A000108(n-1))]-1` -/
def P13634598215773189865.Spec : Prop :=
  ∀ n, P13634598215773189865.a n = A054113 n

end A054113

/-! ## A054113.P14091575186490098505

`∑[A000108(n)*A103517(n)]`
-/

namespace A054113.P14091575186490098505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054113.P14091575186490098505

namespace A054113

/-- `∑[A000108(n)*A103517(n)]` -/
def P14091575186490098505.Spec : Prop :=
  ∀ n, P14091575186490098505.a n = A054113 n

end A054113

/-! ## A054113.P12413918667932102007

`A079309(n+1)+A014138(n)`
-/

namespace A054113.P12413918667932102007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 1) + A014138 n

end

end A054113.P12413918667932102007

namespace A054113

/-- `A079309(n+1)+A014138(n)` -/
def P12413918667932102007.Spec : Prop :=
  ∀ n, P12413918667932102007.a n = A054113 n

end A054113

/-!
# A054114: T(2n+1,n), array T as in A054110.

The programs for A054114, the canonical program `A054114.P2092372370366146121` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054114 has offset 0).

The definition of A054114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054114.P5541310036934519507

`A006134(n+1)-ceil(acot(n))`
-/

namespace A054114.P5541310036934519507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A054114.P5541310036934519507

namespace A054114

/-- `A006134(n+1)-ceil(acot(n))` -/
def P5541310036934519507.Spec : Prop :=
  ∀ n, P5541310036934519507.a n = A054114 n

end A054114

/-! ## A054114.P4506358198532958123

`∑[A000984(n+1)]-floor(acot(n))`
-/

namespace A054114.P4506358198532958123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A054114.P4506358198532958123

namespace A054114

/-- `∑[A000984(n+1)]-floor(acot(n))` -/
def P4506358198532958123.Spec : Prop :=
  ∀ n, P4506358198532958123.a n = A054114 n

end A054114

/-! ## A054114.P1837300217749733973

`A066796(n+1)+ceil(sin(n)²)-1`
-/

namespace A054114.P1837300217749733973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (n + 1) + (⌈Real.sin (n : ℝ) ^ 2⌉ - 1)

end

end A054114.P1837300217749733973

namespace A054114

/-- `A066796(n+1)+ceil(sin(n)²)-1` -/
def P1837300217749733973.Spec : Prop :=
  ∀ n, P1837300217749733973.a n = A054114 n

end A054114

/-! ## A054114.P7377234131685700816

`A066796(n+1)-A000007(n)`
-/

namespace A054114.P7377234131685700816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (n + 1) - A000007 n

end

end A054114.P7377234131685700816

namespace A054114

/-- `A066796(n+1)-A000007(n)` -/
def P7377234131685700816.Spec : Prop :=
  ∀ n, P7377234131685700816.a n = A054114 n

end A054114

/-! ## A054114.P9483046686475596548

`A066796(n+1)/A054977(n)`
-/

namespace A054114.P9483046686475596548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066796 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A054114.P9483046686475596548

namespace A054114

/-- `A066796(n+1)/A054977(n)` -/
def P9483046686475596548.Spec : Prop :=
  ∀ n, P9483046686475596548.a n = (A054114 n : ℚ)

end A054114

/-! ## A054114.P2092372370366146121

`∑[A001700(n)]*A036453(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054114

/-- `∑[A001700(n)]*A036453(n+1)` -/
def P2092372370366146121.Spec : Prop :=
  ∀ n, P2092372370366146121.a n = A054114 n

theorem P2092372370366146121.correct : P2092372370366146121.Spec := by
  intro n
  simp only [A054114]

end A054114

/-! ## A054114.P17187053091183417764

`A057427(n)+A006134(n+1)-2`
-/

namespace A054114.P17187053091183417764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A006134 (n + 1) - 2)

end

end A054114.P17187053091183417764

namespace A054114

/-- `A057427(n)+A006134(n+1)-2` -/
def P17187053091183417764.Spec : Prop :=
  ∀ n, P17187053091183417764.a n = A054114 n

end A054114

/-! ## A054114.P12715266244494293178

`A036453(n+1)*A079309(n+1)`
-/

namespace A054114.P12715266244494293178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A079309 (n + 1)

end

end A054114.P12715266244494293178

namespace A054114

/-- `A036453(n+1)*A079309(n+1)` -/
def P12715266244494293178.Spec : Prop :=
  ∀ n, P12715266244494293178.a n = A054114 n

end A054114

/-! ## A054114.P183124676914580756

`A000032(C(2, n+2))*∑[A001700(n)]`
-/

namespace A054114.P183124676914580756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054114.P183124676914580756

namespace A054114

/-- `A000032(C(2, n+2))*∑[A001700(n)]` -/
def P183124676914580756.Spec : Prop :=
  ∀ n, P183124676914580756.a n = A054114 n

end A054114

/-! ## A054114.P4623722112596475769

`A006134(n+1)-(A010051(2*(n+1))+1)`
-/

namespace A054114.P4623722112596475769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - (A010051 (2 * (n + 1)) + 1)

end

end A054114.P4623722112596475769

namespace A054114

/-- `A006134(n+1)-(A010051(2*(n+1))+1)` -/
def P4623722112596475769.Spec : Prop :=
  ∀ n, P4623722112596475769.a n = A054114 n

end A054114

/-! ## A054114.P14340469542321490780

`A006134(A057427(n)+n)-A057427(n)`
-/

namespace A054114.P14340469542321490780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (A057427 n + (n : ℤ)).toNat - A057427 n

end

end A054114.P14340469542321490780

namespace A054114

/-- `A006134(A057427(n)+n)-A057427(n)` -/
def P14340469542321490780.Spec : Prop :=
  ∀ n, P14340469542321490780.a n = A054114 n

end A054114

/-! ## A054114.P16458523570481048350

`A020639(A000010(n+2))*∑[A001700(n)]`
-/

namespace A054114.P16458523570481048350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054114.P16458523570481048350

namespace A054114

/-- `A020639(A000010(n+2))*∑[A001700(n)]` -/
def P16458523570481048350.Spec : Prop :=
  ∀ n, P16458523570481048350.a n = A054114 n

end A054114

/-! ## A054114.P4407006019014119319

`A029653(∑[n])*A079309(n+1)`
-/

namespace A054114.P4407006019014119319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (∑ j ∈ Finset.range (n + 1), f1 j) * A079309 (n + 1)

end

end A054114.P4407006019014119319

namespace A054114

/-- `A029653(∑[n])*A079309(n+1)` -/
def P4407006019014119319.Spec : Prop :=
  ∀ n, P4407006019014119319.a n = A054114 n

end A054114

/-!
# A054115: Triangular array generated by its row sums: T(n,0)=1 for n >= 1, T(n,1)=r(n-1), T(n,k)=T(n,k-1)+r(n-k) for k=2,3,...,n, n >= 2, r(h)=sum of the numbers in row h of T.

The programs for A054115, the canonical program `A054115.P12923722601801715663` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054115 has offset 0).

The definition of A054115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054115.P12923722601801715663

`A143122(A038722(n+1)%A080036(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054115

/-- `A143122(A038722(n+1)%A080036(n))` -/
def P12923722601801715663.Spec : Prop :=
  ∀ n, P12923722601801715663.a n = A054115 n

theorem P12923722601801715663.correct : P12923722601801715663.Spec := by
  intro n
  simp only [A054115]

end A054115

/-! ## A054115.P16423053380968004179

`A143122(A127739(n+1)-A130270(n+1))`
-/

namespace A054115.P16423053380968004179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A127739 (n + 1) - A130270 (n + 1)).toNat

end

end A054115.P16423053380968004179

namespace A054115

/-- `A143122(A127739(n+1)-A130270(n+1))` -/
def P16423053380968004179.Spec : Prop :=
  ∀ n, P16423053380968004179.a n = A054115 n

end A054115

/-! ## A054115.P16702066241791500343

`gcd(A143122(A038722(n+1)), A197870(n))`
-/

namespace A054115.P16702066241791500343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143122 (A038722 (n + 1)).toNat) (A197870 n)

end

end A054115.P16702066241791500343

namespace A054115

/-- `gcd(A143122(A038722(n+1)), A197870(n))` -/
def P16702066241791500343.Spec : Prop :=
  ∀ n, (P16702066241791500343.a n : ℤ) = A054115 n

end A054115

/-! ## A054115.P4364729526390852149

`A100822(C(2, n)+n)`
-/

namespace A054115.P4364729526390852149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 (Nat.choose 2 n + n)

end

end A054115.P4364729526390852149

namespace A054115

/-- `A100822(C(2, n)+n)` -/
def P4364729526390852149.Spec : Prop :=
  ∀ n, P4364729526390852149.a n = A054115 n

end A054115

/-! ## A054115.P8853825632644060191

`A100822(or(n, C(2, n)))`
-/

namespace A054115.P8853825632644060191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 (Nat.lor n (Nat.choose 2 n))

end

end A054115.P8853825632644060191

namespace A054115

/-- `A100822(or(n, C(2, n)))` -/
def P8853825632644060191.Spec : Prop :=
  ∀ n, P8853825632644060191.a n = A054115 n

end A054115

/-! ## A054115.P4124189928205842604

`A100822(floor(acot(n)+n))`
-/

namespace A054115.P4124189928205842604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A054115.P4124189928205842604

namespace A054115

/-- `A100822(floor(acot(n)+n))` -/
def P4124189928205842604.Spec : Prop :=
  ∀ n, P4124189928205842604.a n = A054115 n

end A054115

/-! ## A054115.P9967427687518981519

`A100822(round(acot(n)+n))`
-/

namespace A054115.P9967427687518981519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A054115.P9967427687518981519

namespace A054115

/-- `A100822(round(acot(n)+n))` -/
def P9967427687518981519.Spec : Prop :=
  ∀ n, P9967427687518981519.a n = A054115 n

end A054115

/-! ## A054115.P3744374311103932495

`A100822(or(n, floor(acot(n))))`
-/

namespace A054115.P3744374311103932495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A054115.P3744374311103932495

namespace A054115

/-- `A100822(or(n, floor(acot(n))))` -/
def P3744374311103932495.Spec : Prop :=
  ∀ n, P3744374311103932495.a n = A054115 n

end A054115

/-! ## A054115.P8888912757470593780

`A100822(abs(1-n)+1)`
-/

namespace A054115.P8888912757470593780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 (|1 - (n : ℤ)| + 1).toNat

end

end A054115.P8888912757470593780

namespace A054115

/-- `A100822(abs(1-n)+1)` -/
def P8888912757470593780.Spec : Prop :=
  ∀ n, P8888912757470593780.a n = A054115 n

end A054115

/-! ## A054115.P17969267191207800211

`or(char[1], A100822(A028310(n)))`
-/

namespace A054115.P17969267191207800211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A100822 (A028310 n).toNat)

end

end A054115.P17969267191207800211

namespace A054115

/-- `or(char[1], A100822(A028310(n)))` -/
def P17969267191207800211.Spec : Prop :=
  ∀ n, P17969267191207800211.a n = A054115 n

end A054115

/-!
# A054116: T(n,n-1), array T as in A054115.

The programs for A054116, the canonical program `A054116.P1186045777908171936` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054116 has offset 1).

The definition of A054116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054116.P1186045777908171936

`a(n-1)+(n+1)!` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054116

/-- `a(n-1)+(n+1)!` -/
def P1186045777908171936.Spec : Prop :=
  ∀ n, (P1186045777908171936.a n : ℤ) = A054116 (n + 1)

theorem P1186045777908171936.correct : P1186045777908171936.Spec := by
  intro n
  simp only [A054116, Nat.add_sub_cancel]

end A054116

/-! ## A054116.P2115301561739958674

`record[abs(2-∑[n!])]`
-/

namespace A054116.P2115301561739958674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054116.P2115301561739958674

namespace A054116

/-- `record[abs(2-∑[n!])]` -/
def P2115301561739958674.Spec : Prop :=
  ∀ n, P2115301561739958674.a n = A054116 (n + 1)

end A054116

/-! ## A054116.P12187593908440582817

`∑[floor(atan(n)+n)!]`
-/

namespace A054116.P12187593908440582817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054116.P12187593908440582817

namespace A054116

/-- `∑[floor(atan(n)+n)!]` -/
def P12187593908440582817.Spec : Prop :=
  ∀ n, (P12187593908440582817.a n : ℤ) = A054116 (n + 1)

end A054116

/-! ## A054116.P13079079042499234625

`∑[(1-char[1]+n)!]`
-/

namespace A054116.P13079079042499234625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054116.P13079079042499234625

namespace A054116

/-- `∑[(1-char[1]+n)!]` -/
def P13079079042499234625.Spec : Prop :=
  ∀ n, (P13079079042499234625.a n : ℤ) = A054116 (n + 1)

end A054116

/-! ## A054116.P8632314789771662882

`∑[∏[n+1]-char[1]]`
-/

namespace A054116.P8632314789771662882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054116.P8632314789771662882

namespace A054116

/-- `∑[∏[n+1]-char[1]]` -/
def P8632314789771662882.Spec : Prop :=
  ∀ n, P8632314789771662882.a n = A054116 (n + 1)

end A054116

/-! ## A054116.P4312470393242279799

`record[a(n-1)+n!]` with `a(0)=1, a(1)=0`
-/

namespace A054116.P4312470393242279799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054116.P4312470393242279799

namespace A054116

/-- `record[a(n-1)+n!]` -/
def P4312470393242279799.Spec : Prop :=
  ∀ n, (P4312470393242279799.a n : ℤ) = A054116 (n + 1)

end A054116

/-! ## A054116.P3978350944866005374

`∏[n+1]+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054116.P3978350944866005374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A054116.P3978350944866005374

namespace A054116

/-- `∏[n+1]+a(n-1)` -/
def P3978350944866005374.Spec : Prop :=
  ∀ n, (P3978350944866005374.a n : ℤ) = A054116 (n + 1)

end A054116

/-! ## A054116.P13279436400401427978

`∑[(n+1)!]-n²%(n+1)`
-/

namespace A054116.P13279436400401427978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A054116.P13279436400401427978

namespace A054116

/-- `∑[(n+1)!]-n²%(n+1)` -/
def P13279436400401427978.Spec : Prop :=
  ∀ n, P13279436400401427978.a n = A054116 (n + 1)

end A054116

/-! ## A054116.P3127529332393997350

`floor(∑[(n+1)!]-n/(n+1))`
-/

namespace A054116.P3127529332393997350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋

end

end A054116.P3127529332393997350

namespace A054116

/-- `floor(∑[(n+1)!]-n/(n+1))` -/
def P3127529332393997350.Spec : Prop :=
  ∀ n, P3127529332393997350.a n = A054116 (n + 1)

end A054116

/-! ## A054116.P16948953455968971760

`∑[(n+1)!]-ceil(n/(n+1))`
-/

namespace A054116.P16948953455968971760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉

end

end A054116.P16948953455968971760

namespace A054116

/-- `∑[(n+1)!]-ceil(n/(n+1))` -/
def P16948953455968971760.Spec : Prop :=
  ∀ n, P16948953455968971760.a n = A054116 (n + 1)

end A054116

/-!
# A054117: T(n,n-2), array T as in A054115.

The programs for A054117, there is no canonical definition to state claims against.
-/

/-! ## A054117.P10570746807225224621

`∑[(n+2)!-and(1, n!)]`
-/

namespace A054117.P10570746807225224621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - (Nat.land 1 (Nat.factorial n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054117.P10570746807225224621

/-! ## A054117.P9727295564410946445

`∑[(n+2)!-C(n, n²)]`
-/

namespace A054117.P9727295564410946445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - (Nat.choose n (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054117.P9727295564410946445

/-! ## A054117.P2839234933298220606

`a(n-1)+(n+2)!` with `a(0)=1, a(1)=6`
-/

namespace A054117.P2839234933298220606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + Nat.factorial (n + 2)

end

end A054117.P2839234933298220606

/-! ## A054117.P15172488784254420959

`∏[n+2]+a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A054117.P15172488784254420959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A054117.P15172488784254420959

/-! ## A054117.P15077559334218714354

`-∑[C(2, 2*n)-(n+2)!]`
-/

namespace A054117.P15077559334218714354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (2 * n) : ℤ) - (Nat.factorial (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054117.P15077559334218714354

/-! ## A054117.P17380678836359280318

`∑[(n+2)!-round(1/(n+1))]`
-/

namespace A054117.P17380678836359280318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054117.P17380678836359280318

/-! ## A054117.P16481216331858027688

`∑[ceil((n+2)!-3/(n+2))]`
-/

namespace A054117.P16481216331858027688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 2) : ℚ) - 3 / (n + 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054117.P16481216331858027688

/-! ## A054117.P5231368233521588409

`∑[(n+2)!]-gcd(2, (n+1)!)`
-/

namespace A054117.P5231368233521588409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd 2 (Nat.factorial (n + 1)) : ℤ)

end

end A054117.P5231368233521588409

/-! ## A054117.P12225009464994517885

`record[∑[n!]-2*n]+2*n`
-/

namespace A054117.P12225009464994517885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)

end

end A054117.P12225009464994517885

/-! ## A054117.P9135702129060007005

`∑[floor((n-2)/(n+2))+(n+2)!]`
-/

namespace A054117.P9135702129060007005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / (n + 2 : ℚ)⌋ + (Nat.factorial (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054117.P9135702129060007005

/-!
# A054118: Subdiagonal T(n,n-3), array T as in A054115.

The programs for A054118, there is no canonical definition to state claims against.
-/

/-! ## A054118.P11375407894279637964

`a(n-1)+(n+3)!` with `a(0)=1, a(1)=24`
-/

namespace A054118.P11375407894279637964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n a =>
  a (n - 1) + Nat.factorial (n + 3)

end

end A054118.P11375407894279637964

/-! ## A054118.P2750183726519182561

`(n+4)*a(n-1)-(n+3)*a(n-2)` with `a(0)=1, a(1)=24, a(2)=144`
-/

namespace A054118.P2750183726519182561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 144] fun n a =>
  (n + 4 : ℤ) * a (n - 1) - (n + 3 : ℤ) * a (n - 2)

end

end A054118.P2750183726519182561

/-! ## A054118.P7435324216419862277

`A054115(∑[n+3]+n+3)`
-/

namespace A054118.P7435324216419862277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A054118.P7435324216419862277

/-! ## A054118.P1192985318711622383

`A057428(n)+∑[A342856(n+1)]`
-/

namespace A054118.P1192985318711622383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054118.P1192985318711622383

/-! ## A054118.P4702137119727701313

`A143122((∑[n+3]+7)%A090995(n+1))`
-/

namespace A054118.P4702137119727701313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ) (A090995 (n + 1))).toNat

end

end A054118.P4702137119727701313

/-!
# A054119: a(n) = n! + (n-1)! + (n-2)!.

The programs for A054119, there is no canonical definition to state claims against.
-/

/-! ## A054119.P14846426753649113083

`n!+n*abs(2-n)!`
-/

namespace A054119.P14846426753649113083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + n * Nat.factorial |2 - (n : ℤ)|.toNat

end

end A054119.P14846426753649113083

/-! ## A054119.P6702694320998417377

`∑[A260338(A060577(n))]`
-/

namespace A054119.P6702694320998417377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054119.P6702694320998417377

/-! ## A054119.P9848721291223790038

`A143122(∑[A326178(n)])`
-/

namespace A054119.P9848721291223790038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054119.P9848721291223790038

/-! ## A054119.P455152783015970569

`∑[A000142(n)]-A003422(A289207(n))`
-/

namespace A054119.P455152783015970569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003422 (A289207 n).toNat

end

end A054119.P455152783015970569

/-! ## A054119.P278707066831983894

`Δ[A014144(n)]-A003422(A289207(n))`
-/

namespace A054119.P278707066831983894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003422 (A289207 n).toNat

end

end A054119.P278707066831983894

/-! ## A054119.P9303889475091479646

`A003422(n+1)-A003422(A289207(n))`
-/

namespace A054119.P9303889475091479646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1) - A003422 (A289207 n).toNat

end

end A054119.P9303889475091479646

/-! ## A054119.P3419952816799500413

`A143122(record[A000124(n)-A100764(n+1)])`
-/

namespace A054119.P3419952816799500413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054119.P3419952816799500413

/-! ## A054119.P9897892876193752917

`A000142(n)-(A003422(A289207(n))-A003422(n))`
-/

namespace A054119.P9897892876193752917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A003422 (A289207 n).toNat - A003422 n)

end

end A054119.P9897892876193752917

/-!
# A054120: Triangular array T(n,k): start with T(n,0)=T(n,n)=1 for n >= 0; recursively, draw vertical lines through T(n-1,k-1) if present and T(n-1,k) if present; then T(n,k) is the sum of T(i,j) that lie on or between the lines and not below T(n,k).

The programs for A054120, there is no canonical definition to state claims against.
-/

/-! ## A054120.P6283676517000336298

`A338934(n)+A108611(A114176(n))`
-/

namespace A054120.P6283676517000336298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338934 n + A108611 (A114176 n).toNat

end

end A054120.P6283676517000336298

/-! ## A054120.P1084945863734813172

`A108611(A180959(n))+A106597(n)`
-/

namespace A054120.P1084945863734813172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A180959 n).toNat + A106597 n

end

end A054120.P1084945863734813172

/-! ## A054120.P2616738387070937603

`A256389(A008288(n)%A340345(n+1))`
-/

namespace A054120.P2616738387070937603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (Int.tmod (A008288 n) (A340345 (n + 1))).toNat

end

end A054120.P2616738387070937603

/-! ## A054120.P1818706266431609153

`A256389(A008288(n))%A176874(n+4)`
-/

namespace A054120.P1818706266431609153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256389 (A008288 n).toNat) (A176874 (n + 4))

end

end A054120.P1818706266431609153

/-! ## A054120.P1393044379225035007

`A293396(A007318(n))%A293392(3*n+4)`
-/

namespace A054120.P1393044379225035007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293396 (A007318 n).toNat) (A293392 (3 * n + 4))

end

end A054120.P1393044379225035007

/-!
# A054121: T(n,n-3), array T as in A054120.

The programs for A054121, the canonical program `A054121.P15490617491472344944` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054121 has offset 3).

The definition of A054121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054121.P10570061745768379789

`∑[∑[ogf((1+5x+9x^2+8x^3+4x^4)/(1-2x+x^2))]]`
-/

namespace A054121.P10570061745768379789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 9, 8, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054121.P10570061745768379789

namespace A054121

/-- `∑[∑[ogf((1+5x+9x^2+8x^3+4x^4)/(1-2x+x^2))]]` -/
def P10570061745768379789.Spec : Prop :=
  ∀ n, P10570061745768379789.a n = A054121 (n + 3)

end A054121

/-! ## A054121.P15490617491472344944

`A172229(n+1)+A140091(n)+A028310(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054121

/-- `A172229(n+1)+A140091(n)+A028310(n)` -/
def P15490617491472344944.Spec : Prop :=
  ∀ n, P15490617491472344944.a n = A054121 (n + 3)

theorem P15490617491472344944.correct : P15490617491472344944.Spec := by
  intro n
  simp only [A054121, Nat.add_sub_cancel]

end A054121

/-! ## A054121.P6132913285151444907

`A201347(A008486(n))+A060747(n)`
-/

namespace A054121.P6132913285151444907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201347 (A008486 n).toNat + A060747 n

end

end A054121.P6132913285151444907

namespace A054121

/-- `A201347(A008486(n))+A060747(n)` -/
def P6132913285151444907.Spec : Prop :=
  ∀ n, P6132913285151444907.a n = A054121 (n + 3)

end A054121

/-! ## A054121.P16283842397846092853

`A054120(A167614(n+2))`
-/

namespace A054121.P16283842397846092853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (A167614 (n + 2)).toNat

end

end A054121.P16283842397846092853

namespace A054121

/-- `A054120(A167614(n+2))` -/
def P16283842397846092853.Spec : Prop :=
  ∀ n, P16283842397846092853.a n = A054121 (n + 3)

end A054121

/-! ## A054121.P3941574660942685396

`A054120(A055999(n)+9)`
-/

namespace A054121.P3941574660942685396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (A055999 n + 9).toNat

end

end A054121.P3941574660942685396

namespace A054121

/-- `A054120(A055999(n)+9)` -/
def P3941574660942685396.Spec : Prop :=
  ∀ n, P3941574660942685396.a n = A054121 (n + 3)

end A054121

/-! ## A054121.P1821316316691878942

`A054120(eq[3, A002262(n)])`
-/

namespace A054121.P1821316316691878942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054121.P1821316316691878942

namespace A054121

/-- `A054120(eq[3, A002262(n)])` -/
def P1821316316691878942.Spec : Prop :=
  ∀ n, P1821316316691878942.a n = A054121 (n + 3)

end A054121

/-! ## A054121.P18250278589992033614

`A054120(A052905(n+2)-(2*n+1))`
-/

namespace A054121.P18250278589992033614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (A052905 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A054121.P18250278589992033614

namespace A054121

/-- `A054120(A052905(n+2)-(2*n+1))` -/
def P18250278589992033614.Spec : Prop :=
  ∀ n, P18250278589992033614.a n = A054121 (n + 3)

end A054121

/-! ## A054121.P4666935777332779288

`A054120(∑[n+3]+n+3)`
-/

namespace A054121.P4666935777332779288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A054121.P4666935777332779288

namespace A054121

/-- `A054120(∑[n+3]+n+3)` -/
def P4666935777332779288.Spec : Prop :=
  ∀ n, P4666935777332779288.a n = A054121 (n + 3)

end A054121

/-!
# A054122: T(2n,n), array T as in A054120.

The programs for A054122, the canonical program `A054122.P7130601607095019707` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054122 has offset 0).

The definition of A054122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054122.P14250313301108602172

`(n+1)/2*A025231(n+1)`
-/

namespace A054122.P14250313301108602172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A025231 (n + 1) : ℚ)

end

end A054122.P14250313301108602172

namespace A054122

/-- `(n+1)/2*A025231(n+1)` -/
def P14250313301108602172.Spec : Prop :=
  ∀ n, P14250313301108602172.a n = (A054122 n : ℚ)

end A054122

/-! ## A054122.P7130601607095019707

`ceil((n+1)/2*A047891(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054122

/-- `ceil((n+1)/2*A047891(n+1))` -/
def P7130601607095019707.Spec : Prop :=
  ∀ n, P7130601607095019707.a n = A054122 n

theorem P7130601607095019707.correct : P7130601607095019707.Spec := by
  intro n
  simp only [A054122]

end A054122

/-! ## A054122.P7683888118588458397

`A069835(n)-A299989(n²)`
-/

namespace A054122.P7683888118588458397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069835 n - A299989 (n ^ 2)

end

end A054122.P7683888118588458397

namespace A054122

/-- `A069835(n)-A299989(n²)` -/
def P7683888118588458397.Spec : Prop :=
  ∀ n, P7683888118588458397.a n = A054122 n

end A054122

/-! ## A054122.P1294815067227072623

`Δ[A299989(n²)]`
-/

namespace A054122.P1294815067227072623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054122.P1294815067227072623

namespace A054122

/-- `Δ[A299989(n²)]` -/
def P1294815067227072623.Spec : Prop :=
  ∀ n, P1294815067227072623.a n = A054122 n

end A054122

/-! ## A054122.P14362448248493754172

`A054120(∑[4*n])`
-/

namespace A054122.P14362448248493754172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054122.P14362448248493754172

namespace A054122

/-- `A054120(∑[4*n])` -/
def P14362448248493754172.Spec : Prop :=
  ∀ n, P14362448248493754172.a n = A054122 n

end A054122

/-! ## A054122.P686810156838290547

`record[A054120(∑[A014682(n)+1])]`
-/

namespace A054122.P686810156838290547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054122.P686810156838290547

namespace A054122

/-- `record[A054120(∑[A014682(n)+1])]` -/
def P686810156838290547.Spec : Prop :=
  ∀ n, P686810156838290547.a n = A054122 n

end A054122

/-!
# A054123: Right Fibonacci row-sum array T(n,k), n >= 0, 0<=k<=n.

The programs for A054123, there is no canonical definition to state claims against.
-/

/-! ## A054123.P8794723142637185575

`A052509(A083920(n))`
-/

namespace A054123.P8794723142637185575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A083920 n).toNat

end

end A054123.P8794723142637185575

/-! ## A054123.P6433650109285587100

`A052509(A271439(n))`
-/

namespace A054123.P6433650109285587100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A271439 n).toNat

end

end A054123.P6433650109285587100

/-! ## A054123.P10539963998419655617

`A052509(n-A003056(n))`
-/

namespace A054123.P10539963998419655617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 ((n : ℤ) - A003056 n).toNat

end

end A054123.P10539963998419655617

/-! ## A054123.P7416584761333564469

`A054125(n)-A054124(n)`
-/

namespace A054123.P7416584761333564469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 n - A054124 n

end

end A054123.P7416584761333564469

/-! ## A054123.P134971134323188857

`A052509(∑[1-A010054(n)])`
-/

namespace A054123.P134971134323188857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054123.P134971134323188857

/-! ## A054123.P15554580323255840757

`A004070(A056943(n+1))`
-/

namespace A054123.P15554580323255840757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A056943 (n + 1)).toNat

end

end A054123.P15554580323255840757

/-! ## A054123.P14035193433762803885

`A054124(A061579(n))`
-/

namespace A054123.P14035193433762803885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A061579 n).toNat

end

end A054123.P14035193433762803885

/-! ## A054123.P12362354903284887695

`A054124(A114327(n)+n)`
-/

namespace A054123.P12362354903284887695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A114327 n + (n : ℤ)).toNat

end

end A054123.P12362354903284887695

/-! ## A054123.P12416999577395383005

`A054124(A038722(n+1)-1)`
-/

namespace A054123.P12416999577395383005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A038722 (n + 1) - 1).toNat

end

end A054123.P12416999577395383005

/-! ## A054123.P384113345028513241

`A054124(A038722(n+2))`
-/

namespace A054123.P384113345028513241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A038722 (n + 2)).toNat

end

end A054123.P384113345028513241

/-! ## A054123.P16367633434900726007

`A054124(A278818(n)-1)`
-/

namespace A054123.P16367633434900726007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A278818 n - 1).toNat

end

end A054123.P16367633434900726007

/-! ## A054123.P2309803350009519010

`A054124(A278818(n+1))`
-/

namespace A054123.P2309803350009519010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A278818 (n + 1)).toNat

end

end A054123.P2309803350009519010

/-!
# A054124: Left Fibonacci row-sum array, n >= 0, 0<=k<=n.

The programs for A054124, there is no canonical definition to state claims against.
-/

/-! ## A054124.P8368190451781289151

`round(sqrt(A058393(n)²+1))`
-/

namespace A054124.P8368190451781289151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058393 n ^ 2 + 1 : ℝ))

end

end A054124.P8368190451781289151

/-! ## A054124.P5042882802016275014

`A052509(A056943(n))`
-/

namespace A054124.P5042882802016275014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A056943 n).toNat

end

end A054124.P5042882802016275014

/-! ## A054124.P10103003792293787278

`A058393(A073423(n)+n)`
-/

namespace A054124.P10103003792293787278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 (A073423 n + (n : ℤ)).toNat

end

end A054124.P10103003792293787278

/-! ## A054124.P14567190654176028146

`A054125(n)-A054123(n)`
-/

namespace A054124.P14567190654176028146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 n - A054123 n

end

end A054124.P14567190654176028146

/-! ## A054124.P6554606708232616681

`gcd(A058393(n), A073423(n))`
-/

namespace A054124.P6554606708232616681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058393 n) (A073423 n)

end

end A054124.P6554606708232616681

/-! ## A054124.P13051557862455402168

`A058393(n*(1-A073423(n)))`
-/

namespace A054124.P13051557862455402168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058393 ((n : ℤ) * (1 - A073423 n)).toNat

end

end A054124.P13051557862455402168

/-! ## A054124.P17264731906603046799

`A052509(n-2*A002262(n))`
-/

namespace A054124.P17264731906603046799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 ((n : ℤ) - 2 * A002262 n).toNat

end

end A054124.P17264731906603046799

/-! ## A054124.P9608029702840833701

`A052509(1-A158405(n+1)+n)`
-/

namespace A054124.P9608029702840833701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (1 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A054124.P9608029702840833701

/-! ## A054124.P2556793334611156321

`A052509(n-A002262(n)-A002262(n))`
-/

namespace A054124.P2556793334611156321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A054124.P2556793334611156321

/-! ## A054124.P8195932047500216332

`A054123(A061579(n))`
-/

namespace A054124.P8195932047500216332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A061579 n).toNat

end

end A054124.P8195932047500216332

/-! ## A054124.P10791016503145128944

`A054123(A038722(n+1)-1)`
-/

namespace A054124.P10791016503145128944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A038722 (n + 1) - 1).toNat

end

end A054124.P10791016503145128944

/-! ## A054124.P11082868019550280500

`A054123(A093995(n+1)-(n+1))`
-/

namespace A054124.P11082868019550280500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A054124.P11082868019550280500

/-! ## A054124.P15013518133787199987

`A054123(A038722(n+2))`
-/

namespace A054124.P15013518133787199987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A038722 (n + 2)).toNat

end

end A054124.P15013518133787199987

/-! ## A054124.P9981915206322102909

`A054123(n-A055087(2*n+1))`
-/

namespace A054124.P9981915206322102909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 ((n : ℤ) - A055087 (2 * n + 1)).toNat

end

end A054124.P9981915206322102909

/-! ## A054124.P9103908202793394193

`A028310(A058393(n))`
-/

namespace A054124.P9103908202793394193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A058393 n).toNat

end

end A054124.P9103908202793394193

/-!
# A054125: Sum of the arrays in A054123 and A054124.

The programs for A054125, there is no canonical definition to state claims against.
-/

/-! ## A054125.P1991655135877599388

`A054124(n)+A054123(n)`
-/

namespace A054125.P1991655135877599388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A054123 n

end

end A054125.P1991655135877599388

/-! ## A054125.P1703855033903915132

`A054124(n)+A052509(A083920(n))`
-/

namespace A054125.P1703855033903915132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A052509 (A083920 n).toNat

end

end A054125.P1703855033903915132

/-! ## A054125.P2044603452742241714

`A054124(n)+A052509(A271439(n))`
-/

namespace A054125.P2044603452742241714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A052509 (A271439 n).toNat

end

end A054125.P2044603452742241714

/-! ## A054125.P9725899735396032310

`A054123(n)+A054123(A061579(n))`
-/

namespace A054125.P9725899735396032310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n + A054123 (A061579 n).toNat

end

end A054125.P9725899735396032310

/-! ## A054125.P18213456705331979337

`A054124(n)+A054124(A061579(n))`
-/

namespace A054125.P18213456705331979337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A054124 (A061579 n).toNat

end

end A054125.P18213456705331979337

/-! ## A054125.P16545549279640695781

`A054124(n)+A054124(A114327(n)+n)`
-/

namespace A054125.P16545549279640695781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A054124 (A114327 n + (n : ℤ)).toNat

end

end A054125.P16545549279640695781

/-! ## A054125.P17244030712821953981

`A054123(A038722(n+2))+A054123(n)`
-/

namespace A054125.P17244030712821953981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A038722 (n + 2)).toNat + A054123 n

end

end A054125.P17244030712821953981

/-! ## A054125.P15090967988579521659

`A054124(A038722(n+2))+A054124(n)`
-/

namespace A054125.P15090967988579521659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A038722 (n + 2)).toNat + A054124 n

end

end A054125.P15090967988579521659

/-! ## A054125.P4262535367720253902

`A054124(n)+A054124(A278818(n)-1)`
-/

namespace A054125.P4262535367720253902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 n + A054124 (A278818 n - 1).toNat

end

end A054125.P4262535367720253902

/-! ## A054125.P4639896722842127460

`A054124(A278818(n+1))+A054124(n)`
-/

namespace A054125.P4639896722842127460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054124 (A278818 (n + 1)).toNat + A054124 n

end

end A054125.P4639896722842127460

/-! ## A054125.P15959426357342155578

`A054123(n)+A028310(A058393(n))`
-/

namespace A054125.P15959426357342155578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n + A028310 (A058393 n).toNat

end

end A054125.P15959426357342155578

/-!
# A054126: Odd-index Fibonacci row-sum array: T(n,k)=U(2n+1,n+1+k), 0<=k<=n, n >= 0, U the array in A054125.

The programs for A054126, there is no canonical definition to state claims against.
-/

/-! ## A054126.P2823996619552205196

`A131250(n)+Δ[A089633(n)]`
-/

namespace A054126.P2823996619552205196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 n + (f1 (n + 1) - f1 n)

end

end A054126.P2823996619552205196

/-! ## A054126.P10571475272543371989

`A155038(n+1)+A131250(n)`
-/

namespace A054126.P10571475272543371989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1) + A131250 n

end

end A054126.P10571475272543371989

/-! ## A054126.P16723592192553093678

`A131250(n)+A011782(A025581(n))`
-/

namespace A054126.P16723592192553093678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 n + A011782 (A025581 n).toNat

end

end A054126.P16723592192553093678

/-! ## A054126.P4513400015072570956

`A097750(A061579(n))+Δ[A089633(n)]`
-/

namespace A054126.P4513400015072570956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A061579 n).toNat + (f1 (n + 1) - f1 n)

end

end A054126.P4513400015072570956

/-! ## A054126.P8583498676584851211

`A155038(n+1)+A097750(A061579(n))`
-/

namespace A054126.P8583498676584851211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155038 (n + 1) + A097750 (A061579 n).toNat

end

end A054126.P8583498676584851211

/-! ## A054126.P15773073927457963648

`A097750(A061579(n))+A011782(A025581(n))`
-/

namespace A054126.P15773073927457963648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A061579 n).toNat + A011782 (A025581 n).toNat

end

end A054126.P15773073927457963648

/-! ## A054126.P7546207943045814589

`A131250(n)+A000010(A130321(n))`
-/

namespace A054126.P7546207943045814589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 n + A000010 (A130321 n).toNat

end

end A054126.P7546207943045814589

/-! ## A054126.P11027902433714597430

`A097750(A061579(n))+A000010(A130321(n))`
-/

namespace A054126.P11027902433714597430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097750 (A061579 n).toNat + A000010 (A130321 n).toNat

end

end A054126.P11027902433714597430

/-!
# A054127: a(1) = 2; a(n) = 9*2^(n-2) - n - 2, n>1.

The programs for A054127, the canonical program `A054127.P16900241434953875861` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054127 has offset 1).

The definition of A054127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054127.P11854825567097050503

`∑[ogf((2-3x+3x^2-x^3)/(1-3x+2x^2))]`
-/

namespace A054127.P11854825567097050503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 3, -1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054127.P11854825567097050503

namespace A054127

/-- `∑[ogf((2-3x+3x^2-x^3)/(1-3x+2x^2))]` -/
def P11854825567097050503.Spec : Prop :=
  ∀ n, P11854825567097050503.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P12973714474267265314

`ogf((2-3x+3x^2-x^3)/(1-4x+5x^2-2x^3))`
-/

namespace A054127.P12973714474267265314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 3, -1] [1, -4, 5, -2] n

end

end A054127.P12973714474267265314

namespace A054127

/-- `ogf((2-3x+3x^2-x^3)/(1-4x+5x^2-2x^3))` -/
def P12973714474267265314.Spec : Prop :=
  ∀ n, P12973714474267265314.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P16900241434953875861

`∑[2*a(n-1)+1]` with `a(0)=2, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054127

/-- `∑[2*a(n-1)+1]` -/
def P16900241434953875861.Spec : Prop :=
  ∀ n, (P16900241434953875861.a n : ℤ) = A054127 (n + 1)

theorem P16900241434953875861.correct : P16900241434953875861.Spec := by
  intro n
  simp only [A054127, Nat.add_sub_cancel]

end A054127

/-! ## A054127.P16783483767856225789

`2*a(n-1)+1+n` with `a(0)=2, a(1)=5`
-/

namespace A054127.P16783483767856225789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) + 1 + n

end

end A054127.P16783483767856225789

namespace A054127

/-- `2*a(n-1)+1+n` -/
def P16783483767856225789.Spec : Prop :=
  ∀ n, (P16783483767856225789.a n : ℤ) = A054127 (n + 1)

end A054127

/-! ## A054127.P17783516652219630028

`ceil(9*2^(n-1)-(n+3))`
-/

namespace A054127.P17783516652219630028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n + 3 : ℚ)⌉

end

end A054127.P17783516652219630028

namespace A054127

/-- `ceil(9*2^(n-1)-(n+3))` -/
def P17783516652219630028.Spec : Prop :=
  ∀ n, P17783516652219630028.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P13382666401029917305

`2*a(n-1)-xor(n, -1)` with `a(0)=2, a(1)=5`
-/

namespace A054127.P13382666401029917305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) - Int.xor (n : ℤ) (-1)

end

end A054127.P13382666401029917305

namespace A054127

/-- `2*a(n-1)-xor(n, -1)` -/
def P13382666401029917305.Spec : Prop :=
  ∀ n, P13382666401029917305.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P105440044613329967

`∑[a(n-1)+a(n-1)+1]` with `a(0)=2, a(1)=3, a(2)=8`
-/

namespace A054127.P105440044613329967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054127.P105440044613329967

namespace A054127

/-- `∑[a(n-1)+a(n-1)+1]` -/
def P105440044613329967.Spec : Prop :=
  ∀ n, (P105440044613329967.a n : ℤ) = A054127 (n + 1)

theorem P105440044613329967.correct : P105440044613329967.Spec := by
  intro n
  simp only [A054127, Nat.add_sub_cancel, A054127.P105440044613329967.f1, A054127.P105440044613329967.a, A054127.P16900241434953875861.f1, A054127.P16900241434953875861.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A054127

/-! ## A054127.P1158080994490115925

`a(n-1)+1+a(n-1)+n` with `a(0)=2, a(1)=5`
-/

namespace A054127.P1158080994490115925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + n)

end

end A054127.P1158080994490115925

namespace A054127

/-- `a(n-1)+1+a(n-1)+n` -/
def P1158080994490115925.Spec : Prop :=
  ∀ n, (P1158080994490115925.a n : ℤ) = A054127 (n + 1)

end A054127

/-! ## A054127.P17149567358820928389

`1-floor(1/n-2*a(n-1)-n)` with `a(0)=2`
-/

namespace A054127.P17149567358820928389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊1 / (n : ℚ) - (2 * a (n - 1) : ℚ) - (n : ℚ)⌋

end

end A054127.P17149567358820928389

namespace A054127

/-- `1-floor(1/n-2*a(n-1)-n)` -/
def P17149567358820928389.Spec : Prop :=
  ∀ n, P17149567358820928389.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P6128691868231733600

`1-floor(1/n-a(n-1)-a(n-1)-n)` with `a(0)=2`
-/

namespace A054127.P6128691868231733600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - ⌊1 / (n : ℚ) - (a (n - 1) : ℚ) - (a (n - 1) : ℚ) - (n : ℚ)⌋

end

end A054127.P6128691868231733600

namespace A054127

/-- `1-floor(1/n-a(n-1)-a(n-1)-n)` -/
def P6128691868231733600.Spec : Prop :=
  ∀ n, P6128691868231733600.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P17553473784454297029

`∑[A052996(n)]+1`
-/

namespace A054127.P17553473784454297029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054127.P17553473784454297029

namespace A054127

/-- `∑[A052996(n)]+1` -/
def P17553473784454297029.Spec : Prop :=
  ∀ n, P17553473784454297029.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P16396527829708284271

`A053209(n)+1-n`
-/

namespace A054127.P16396527829708284271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n + (1 - (n : ℤ))

end

end A054127.P16396527829708284271

namespace A054127

/-- `A053209(n)+1-n` -/
def P16396527829708284271.Spec : Prop :=
  ∀ n, P16396527829708284271.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P13871295001924979436

`A116454(n+1)+2+n`
-/

namespace A054127.P13871295001924979436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116454 (n + 1) + 2 + (n : ℤ)

end

end A054127.P13871295001924979436

namespace A054127

/-- `A116454(n+1)+2+n` -/
def P13871295001924979436.Spec : Prop :=
  ∀ n, P13871295001924979436.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P9771947658259338391

`A116453(n+1)-(n+3)`
-/

namespace A054127.P9771947658259338391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116453 (n + 1) - (n + 3 : ℤ)

end

end A054127.P9771947658259338391

namespace A054127

/-- `A116453(n+1)-(n+3)` -/
def P9771947658259338391.Spec : Prop :=
  ∀ n, P9771947658259338391.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P16350429078852343281

`A247283(Δ[n²])-(n+3)`
-/

namespace A054127.P16350429078852343281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 3 : ℤ)

end

end A054127.P16350429078852343281

namespace A054127

/-- `A247283(Δ[n²])-(n+3)` -/
def P16350429078852343281.Spec : Prop :=
  ∀ n, P16350429078852343281.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P14924234359379022144

`A335927(n+1)+∑[n+1]`
-/

namespace A054127.P14924234359379022144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335927 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054127.P14924234359379022144

namespace A054127

/-- `A335927(n+1)+∑[n+1]` -/
def P14924234359379022144.Spec : Prop :=
  ∀ n, P14924234359379022144.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P4198556948014853775

`A077802(n)+A003945(n)`
-/

namespace A054127.P4198556948014853775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 n + A003945 n

end

end A054127.P4198556948014853775

namespace A054127

/-- `A077802(n)+A003945(n)` -/
def P4198556948014853775.Spec : Prop :=
  ∀ n, P4198556948014853775.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P18219591532049363325

`A095151(n)+A042950(n)`
-/

namespace A054127.P18219591532049363325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n + A042950 n

end

end A054127.P18219591532049363325

namespace A054127

/-- `A095151(n)+A042950(n)` -/
def P18219591532049363325.Spec : Prop :=
  ∀ n, P18219591532049363325.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P7223221549248796226

`A132736(n)+A026624(n)`
-/

namespace A054127.P7223221549248796226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n + A026624 n

end

end A054127.P7223221549248796226

namespace A054127

/-- `A132736(n)+A026624(n)` -/
def P7223221549248796226.Spec : Prop :=
  ∀ n, P7223221549248796226.a n = A054127 (n + 1)

end A054127

/-! ## A054127.P7676045791788647769

`A083329(n)+A079583(n)`
-/

namespace A054127.P7676045791788647769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + A079583 n

end

end A054127.P7676045791788647769

namespace A054127

/-- `A083329(n)+A079583(n)` -/
def P7676045791788647769.Spec : Prop :=
  ∀ n, P7676045791788647769.a n = A054127 (n + 1)

end A054127

/-!
# A054128: T(n,2), array T as in A054126.

The programs for A054128, the canonical program `A054128.P16084728482185443017` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054128 has offset 2).

The definition of A054128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054128.P16084728482185443017

`∑[∑[n+1]]+2*a(n-1)` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054128

/-- `∑[∑[n+1]]+2*a(n-1)` -/
def P16084728482185443017.Spec : Prop :=
  ∀ n, (P16084728482185443017.a n : ℤ) = A054128 (n + 2)

theorem P16084728482185443017.correct : P16084728482185443017.Spec := by
  intro n
  simp only [A054128, Nat.add_sub_cancel]

end A054128

/-! ## A054128.P1533190263823784552

`2*a(n-1)-∑[∑[xor(n, -1)]]` with `a(0)=2, a(1)=7`
-/

namespace A054128.P1533190263823784552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  2 * a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054128.P1533190263823784552

namespace A054128

/-- `2*a(n-1)-∑[∑[xor(n, -1)]]` -/
def P1533190263823784552.Spec : Prop :=
  ∀ n, P1533190263823784552.a n = A054128 (n + 2)

end A054128

/-! ## A054128.P1119902114724785452

`a(n-1)+∑[∑[n+1]]+a(n-1)` with `a(0)=2, a(1)=7`
-/

namespace A054128.P1119902114724785452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A054128.P1119902114724785452

namespace A054128

/-- `a(n-1)+∑[∑[n+1]]+a(n-1)` -/
def P1119902114724785452.Spec : Prop :=
  ∀ n, (P1119902114724785452.a n : ℤ) = A054128 (n + 2)

end A054128

/-! ## A054128.P7262696822788379839

`A011782(n)+A002663(n+4)`
-/

namespace A054128.P7262696822788379839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002663 (n + 4)

end

end A054128.P7262696822788379839

namespace A054128

/-- `A011782(n)+A002663(n+4)` -/
def P7262696822788379839.Spec : Prop :=
  ∀ n, P7262696822788379839.a n = A054128 (n + 2)

end A054128

/-! ## A054128.P9516850718836388341

`∑[A054136(n+2)]-A131577(n)`
-/

namespace A054128.P9516850718836388341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131577 n

end

end A054128.P9516850718836388341

namespace A054128

/-- `∑[A054136(n+2)]-A131577(n)` -/
def P9516850718836388341.Spec : Prop :=
  ∀ n, P9516850718836388341.a n = A054128 (n + 2)

end A054128

/-! ## A054128.P5295616605965299654

`A054126(A000124(n+2)+1)`
-/

namespace A054128.P5295616605965299654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 (A000124 (n + 2) + 1).toNat

end

end A054128.P5295616605965299654

namespace A054128

/-- `A054126(A000124(n+2)+1)` -/
def P5295616605965299654.Spec : Prop :=
  ∀ n, P5295616605965299654.a n = A054128 (n + 2)

end A054128

/-! ## A054128.P107935203509958521

`A054126(A167614(n+1)-1)`
-/

namespace A054128.P107935203509958521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 (A167614 (n + 1) - 1).toNat

end

end A054128.P107935203509958521

namespace A054128

/-- `A054126(A167614(n+1)-1)` -/
def P107935203509958521.Spec : Prop :=
  ∀ n, P107935203509958521.a n = A054128 (n + 2)

end A054128

/-! ## A054128.P14118233867837336713

`A054125(A268581(n+1))`
-/

namespace A054128.P14118233867837336713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A268581 (n + 1)).toNat

end

end A054128.P14118233867837336713

namespace A054128

/-- `A054125(A268581(n+1))` -/
def P14118233867837336713.Spec : Prop :=
  ∀ n, P14118233867837336713.a n = A054128 (n + 2)

end A054128

/-!
# A054129: T(n,3), array T as in A054126.

The programs for A054129, the canonical program `A054129.P2648708135013237677` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054129 has offset 3).

The definition of A054129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054129.P2648708135013237677

`A035038(n+6)+A011782(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054129

/-- `A035038(n+6)+A011782(n)` -/
def P2648708135013237677.Spec : Prop :=
  ∀ n, P2648708135013237677.a n = A054129 (n + 3)

theorem P2648708135013237677.correct : P2648708135013237677.Spec := by
  intro n
  simp only [A054129, Nat.add_sub_cancel]

end A054129

/-! ## A054129.P14194100079217560607

`∑[A054137(n+3)]-A131577(n)`
-/

namespace A054129.P14194100079217560607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054137 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131577 n

end

end A054129.P14194100079217560607

namespace A054129

/-- `∑[A054137(n+3)]-A131577(n)` -/
def P14194100079217560607.Spec : Prop :=
  ∀ n, P14194100079217560607.a n = A054129 (n + 3)

end A054129

/-! ## A054129.P1949615090334830354

`∑[A054137(n+3)-A166444(n)]`
-/

namespace A054129.P1949615090334830354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054137 (n + 3) - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054129.P1949615090334830354

namespace A054129

/-- `∑[A054137(n+3)-A166444(n)]` -/
def P1949615090334830354.Spec : Prop :=
  ∀ n, P1949615090334830354.a n = A054129 (n + 3)

end A054129

/-! ## A054129.P3465322994108224441

`A011782(n)+∑[A002664(n+5)]`
-/

namespace A054129.P3465322994108224441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002664 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054129.P3465322994108224441

namespace A054129

/-- `A011782(n)+∑[A002664(n+5)]` -/
def P3465322994108224441.Spec : Prop :=
  ∀ n, P3465322994108224441.a n = A054129 (n + 3)

end A054129

/-! ## A054129.P3126059866629012063

`A011782(n)+Δ[A035039(n+6)]`
-/

namespace A054129.P3126059866629012063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035039 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A054129.P3126059866629012063

namespace A054129

/-- `A011782(n)+Δ[A035039(n+6)]` -/
def P3126059866629012063.Spec : Prop :=
  ∀ n, P3126059866629012063.a n = A054129 (n + 3)

end A054129

/-! ## A054129.P15098383129408891670

`A054126(A167614(n+2))`
-/

namespace A054129.P15098383129408891670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 (A167614 (n + 2)).toNat

end

end A054129.P15098383129408891670

namespace A054129

/-- `A054126(A167614(n+2))` -/
def P15098383129408891670.Spec : Prop :=
  ∀ n, P15098383129408891670.a n = A054129 (n + 3)

end A054129

/-!
# A054130: T(n,4), array T as in A054126.

The programs for A054130, the canonical program `A054130.P12533457202866750369` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054130 has offset 4).

The definition of A054130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054130.P4016014022187870712

`∑[A054138(n+4)]-A131577(n)`
-/

namespace A054130.P4016014022187870712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054138 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131577 n

end

end A054130.P4016014022187870712

namespace A054130

/-- `∑[A054138(n+4)]-A131577(n)` -/
def P4016014022187870712.Spec : Prop :=
  ∀ n, P4016014022187870712.a n = A054130 (n + 4)

end A054130

/-! ## A054130.P586026209142630957

`∑[A054138(n+4)-A166444(n)]`
-/

namespace A054130.P586026209142630957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054138 (n + 4) - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054130.P586026209142630957

namespace A054130

/-- `∑[A054138(n+4)-A166444(n)]` -/
def P586026209142630957.Spec : Prop :=
  ∀ n, P586026209142630957.a n = A054130 (n + 4)

end A054130

/-! ## A054130.P12533457202866750369

`A011782(n)+∑[A035039(n+7)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054130

/-- `A011782(n)+∑[A035039(n+7)]` -/
def P12533457202866750369.Spec : Prop :=
  ∀ n, P12533457202866750369.a n = A054130 (n + 4)

theorem P12533457202866750369.correct : P12533457202866750369.Spec := by
  intro n
  simp only [A054130, Nat.add_sub_cancel]

end A054130

/-! ## A054130.P7475552222143123048

`∑[A054138(n+4)]-Δ[A011782(n)]`
-/

namespace A054130.P7475552222143123048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054138 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A054130.P7475552222143123048

namespace A054130

/-- `∑[A054138(n+4)]-Δ[A011782(n)]` -/
def P7475552222143123048.Spec : Prop :=
  ∀ n, P7475552222143123048.a n = A054130 (n + 4)

end A054130

/-! ## A054130.P3579237233437993005

`∑[A054138(n+4)]-A034008(n+1)`
-/

namespace A054130.P3579237233437993005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054138 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034008 (n + 1)

end

end A054130.P3579237233437993005

namespace A054130

/-- `∑[A054138(n+4)]-A034008(n+1)` -/
def P3579237233437993005.Spec : Prop :=
  ∀ n, P3579237233437993005.a n = A054130 (n + 4)

end A054130

/-! ## A054130.P1379920333757327434

`A055248(A167614(n+7)+5)+A011782(n)`
-/

namespace A054130.P1379920333757327434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A167614 (n + 7) + 5).toNat + A011782 n

end

end A054130.P1379920333757327434

namespace A054130

/-- `A055248(A167614(n+7)+5)+A011782(n)` -/
def P1379920333757327434.Spec : Prop :=
  ∀ n, P1379920333757327434.a n = A054130 (n + 4)

end A054130

/-!
# A054131: T(2n,n), array T as in A054126.

The programs for A054131, the canonical program `A054131.P15131034983150532406` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054131 has offset 0).

The definition of A054131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054131.P15131034983150532406

`A066380(n)+A011782(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054131

/-- `A066380(n)+A011782(n)` -/
def P15131034983150532406.Spec : Prop :=
  ∀ n, P15131034983150532406.a n = A054131 n

theorem P15131034983150532406.correct : P15131034983150532406.Spec := by
  intro n
  simp only [A054131]

end A054131

/-! ## A054131.P5043667123300629378

`A066380(n)+Δ[A131577(n)]`
-/

namespace A054131.P5043667123300629378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066380 n + (f1 (n + 1) - f1 n)

end

end A054131.P5043667123300629378

namespace A054131

/-- `A066380(n)+Δ[A131577(n)]` -/
def P5043667123300629378.Spec : Prop :=
  ∀ n, P5043667123300629378.a n = A054131 n

end A054131

/-! ## A054131.P5259875422461421826

`A054126(∑[4*n])`
-/

namespace A054131.P5259875422461421826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054131.P5259875422461421826

namespace A054131

/-- `A054126(∑[4*n])` -/
def P5259875422461421826.Spec : Prop :=
  ∀ n, P5259875422461421826.a n = A054131 n

end A054131

/-! ## A054131.P254967986421002827

`A011782(n)+A008949(A062725(n))`
-/

namespace A054131.P254967986421002827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A008949 (A062725 n).toNat

end

end A054131.P254967986421002827

namespace A054131

/-- `A011782(n)+A008949(A062725(n))` -/
def P254967986421002827.Spec : Prop :=
  ∀ n, P254967986421002827.a n = A054131 n

end A054131

/-! ## A054131.P13601704315539939247

`A055248(A062728(n))+A011782(n)`
-/

namespace A054131.P13601704315539939247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A062728 n).toNat + A011782 n

end

end A054131.P13601704315539939247

namespace A054131

/-- `A055248(A062728(n))+A011782(n)` -/
def P13601704315539939247.Spec : Prop :=
  ∀ n, P13601704315539939247.a n = A054131 n

end A054131

/-!
# A054132: T(2n+1,n), array T as in A054126.

The programs for A054132, there is no canonical definition to state claims against.
-/

/-! ## A054132.P4518464713943907966

`A054139(n+1)-A160906(n)`
-/

namespace A054132.P4518464713943907966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054139 (n + 1) - A160906 n

end

end A054132.P4518464713943907966

/-! ## A054132.P4434565697611585555

`A054126(A056220(n+1))`
-/

namespace A054132.P4434565697611585555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 (A056220 (n + 1)).toNat

end

end A054132.P4434565697611585555

/-! ## A054132.P11111897368218971800

`A054125(A139274(n+1))`
-/

namespace A054132.P11111897368218971800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A139274 (n + 1)).toNat

end

end A054132.P11111897368218971800

/-! ## A054132.P4524603223039169856

`A054125(A139275(n+1)-1)`
-/

namespace A054132.P4524603223039169856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A139275 (n + 1) - 1).toNat

end

end A054132.P4524603223039169856

/-! ## A054132.P14548494728338958530

`A054125(A158058(n+1)/2)`
-/

namespace A054132.P14548494728338958530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (SequenceMachineLib.roundAway ((A158058 (n + 1) : ℚ) / 2)).toNat

end

end A054132.P14548494728338958530

/-!
# A054133: T(2n-1,n) where T is the array in A054126.

The programs for A054133, there is no canonical definition to state claims against.
-/

/-! ## A054133.P4966646098745443946

`A054126(2*(n+1)²)`
-/

namespace A054133.P4966646098745443946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054126 (2 * (n + 1) ^ 2)

end

end A054133.P4966646098745443946

/-! ## A054133.P1475369285200406094

`A054125(A139275(n+1))`
-/

namespace A054133.P1475369285200406094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A139275 (n + 1)).toNat

end

end A054133.P1475369285200406094

/-! ## A054133.P8536565733122798819

`A054125(A139274(n+1)-1)`
-/

namespace A054133.P8536565733122798819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A139274 (n + 1) - 1).toNat

end

end A054133.P8536565733122798819

/-! ## A054133.P18074766935371400711

`A054125(eq[4, A126988(n+1)])`
-/

namespace A054133.P18074766935371400711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054133.P18074766935371400711

/-! ## A054133.P4407109618214084793

`A054125(A158058(n+1)/2-1)`
-/

namespace A054133.P4407109618214084793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (SequenceMachineLib.roundAway ((A158058 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A054133.P4407109618214084793

/-!
# A054135: a(n) = T(n,1), array T as in A054134.

The programs for A054135, the canonical program `A054135.P16289248508672803890` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054135 has offset 1).

The definition of A054135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054135.P16289248508672803890

`3*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054135

/-- `3*a(n-1)-2*a(n-2)` -/
def P16289248508672803890.Spec : Prop :=
  ∀ n, P16289248508672803890.a n = A054135 (n + 1)

theorem P16289248508672803890.correct : P16289248508672803890.Spec := by
  intro n
  simp only [A054135, Nat.add_sub_cancel]

end A054135

/-! ## A054135.P9389140335770448326

`ogf((2-2x+x^2)/(1-3x+2x^2))`
-/

namespace A054135.P9389140335770448326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1] [1, -3, 2] n

end

end A054135.P9389140335770448326

namespace A054135

/-- `ogf((2-2x+x^2)/(1-3x+2x^2))` -/
def P9389140335770448326.Spec : Prop :=
  ∀ n, P9389140335770448326.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P11703567515188284525

`ceil(∑[5*2^(n-2)])`
-/

namespace A054135.P11703567515188284525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A054135.P11703567515188284525

namespace A054135

/-- `ceil(∑[5*2^(n-2)])` -/
def P11703567515188284525.Spec : Prop :=
  ∀ n, P11703567515188284525.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P1683703070498118874

`2*a(n-1)+1` with `a(0)=2, a(1)=4`
-/

namespace A054135.P1683703070498118874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * a (n - 1) + 1

end

end A054135.P1683703070498118874

namespace A054135

/-- `2*a(n-1)+1` -/
def P1683703070498118874.Spec : Prop :=
  ∀ n, (P1683703070498118874.a n : ℤ) = A054135 (n + 1)

end A054135

/-! ## A054135.P15556498911548174249

`or(1, 2*a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A054135.P15556498911548174249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A054135.P15556498911548174249

namespace A054135

/-- `or(1, 2*a(n-1))` -/
def P15556498911548174249.Spec : Prop :=
  ∀ n, (P15556498911548174249.a n : ℤ) = A054135 (n + 1)

end A054135

/-! ## A054135.P17293460988920756069

`xor(1, 2*a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A054135.P17293460988920756069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A054135.P17293460988920756069

namespace A054135

/-- `xor(1, 2*a(n-1))` -/
def P17293460988920756069.Spec : Prop :=
  ∀ n, (P17293460988920756069.a n : ℤ) = A054135 (n + 1)

end A054135

/-! ## A054135.P3509342678342915289

`∑[2*a(n-1)]` with `a(0)=2, a(1)=2, a(2)=5`
-/

namespace A054135.P3509342678342915289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 5] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054135.P3509342678342915289

namespace A054135

/-- `∑[2*a(n-1)]` -/
def P3509342678342915289.Spec : Prop :=
  ∀ n, (P3509342678342915289.a n : ℤ) = A054135 (n + 1)

end A054135

/-! ## A054135.P15473902879327714029

`or(3, lcm(2, a(n-1)))` with `a(0)=2, a(1)=4, a(2)=9`
-/

namespace A054135.P15473902879327714029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 9] fun n a =>
  Nat.lor 3 (Nat.lcm 2 (a (n - 1)))

end

end A054135.P15473902879327714029

namespace A054135

/-- `or(3, lcm(2, a(n-1)))` -/
def P15473902879327714029.Spec : Prop :=
  ∀ n, (P15473902879327714029.a n : ℤ) = A054135 (n + 1)

end A054135

/-! ## A054135.P15437405468396092926

`3-2*(1-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A054135.P15437405468396092926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A054135.P15437405468396092926

namespace A054135

/-- `3-2*(1-a(n-1))` -/
def P15437405468396092926.Spec : Prop :=
  ∀ n, P15437405468396092926.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P13562535805721417784

`a(n-1)+1+a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A054135.P13562535805721417784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  a (n - 1) + (1 + a (n - 1))

end

end A054135.P13562535805721417784

namespace A054135

/-- `a(n-1)+1+a(n-1)` -/
def P13562535805721417784.Spec : Prop :=
  ∀ n, (P13562535805721417784.a n : ℤ) = A054135 (n + 1)

end A054135

/-! ## A054135.P8844416200878931271

`1-a(n-1)/(1/2-1)` with `a(0)=2, a(1)=4`
-/

namespace A054135.P8844416200878931271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  1 - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A054135.P8844416200878931271

namespace A054135

/-- `1-a(n-1)/(1/2-1)` -/
def P8844416200878931271.Spec : Prop :=
  ∀ n, P8844416200878931271.a n = (A054135 (n + 1) : ℚ)

end A054135

/-! ## A054135.P8141476546675019436

`2-floor(1-a(n-1)-a(n-1))` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A054135.P8141476546675019436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1))

end

end A054135.P8141476546675019436

namespace A054135

/-- `2-floor(1-a(n-1)-a(n-1))` -/
def P8141476546675019436.Spec : Prop :=
  ∀ n, P8141476546675019436.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P15920251213637016067

`2-((1-a(n-1))%a(n-1)-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A054135.P15920251213637016067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 1))

end

end A054135.P15920251213637016067

namespace A054135

/-- `2-((1-a(n-1))%a(n-1)-a(n-1))` -/
def P15920251213637016067.Spec : Prop :=
  ∀ n, P15920251213637016067.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P851221758070402969

`∑[A084215(n)]+1`
-/

namespace A054135.P851221758070402969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A054135.P851221758070402969

namespace A054135

/-- `∑[A084215(n)]+1` -/
def P851221758070402969.Spec : Prop :=
  ∀ n, P851221758070402969.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P6205286826954254458

`A131051(n+1)+1`
-/

namespace A054135.P6205286826954254458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 1) + 1

end

end A054135.P6205286826954254458

namespace A054135

/-- `A131051(n+1)+1` -/
def P6205286826954254458.Spec : Prop :=
  ∀ n, P6205286826954254458.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P2991342196012042550

`A257113(n+2)-1`
-/

namespace A054135.P2991342196012042550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 2) - 1

end

end A054135.P2991342196012042550

namespace A054135

/-- `A257113(n+2)-1` -/
def P2991342196012042550.Spec : Prop :=
  ∀ n, P2991342196012042550.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P17938243779710076032

`A083329(n)+2^n`
-/

namespace A054135.P17938243779710076032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + (2 ^ n : ℤ)

end

end A054135.P17938243779710076032

namespace A054135

/-- `A083329(n)+2^n` -/
def P17938243779710076032.Spec : Prop :=
  ∀ n, P17938243779710076032.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P13607814518645775908

`A228305(Δ[n²])-1`
-/

namespace A054135.P13607814518645775908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A054135.P13607814518645775908

namespace A054135

/-- `A228305(Δ[n²])-1` -/
def P13607814518645775908.Spec : Prop :=
  ∀ n, P13607814518645775908.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P5445812819709883179

`A333905(2*n+3)-1`
-/

namespace A054135.P5445812819709883179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333905 (2 * n + 3) - 1

end

end A054135.P5445812819709883179

namespace A054135

/-- `A333905(2*n+3)-1` -/
def P5445812819709883179.Spec : Prop :=
  ∀ n, P5445812819709883179.a n = A054135 (n + 1)

end A054135

/-! ## A054135.P15807824327570582570

`A266550(n+2)+2^n`
-/

namespace A054135.P15807824327570582570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) + (2 ^ n : ℤ)

end

end A054135.P15807824327570582570

namespace A054135

/-- `A266550(n+2)+2^n` -/
def P15807824327570582570.Spec : Prop :=
  ∀ n, P15807824327570582570.a n = A054135 (n + 1)

end A054135

/-!
# A054136: a(n) = T(n,2), array T as in A054134.

The programs for A054136, the canonical program `A054136.P8319151786973607422` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054136 has offset 2).

The definition of A054136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054136.P8319151786973607422

`∑[n+1]+2*a(n-1)` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054136

/-- `∑[n+1]+2*a(n-1)` -/
def P8319151786973607422.Spec : Prop :=
  ∀ n, (P8319151786973607422.a n : ℤ) = A054136 (n + 2)

theorem P8319151786973607422.correct : P8319151786973607422.Spec := by
  intro n
  simp only [A054136, Nat.add_sub_cancel]

end A054136

/-! ## A054136.P13540941680547790249

`∑[∑[∑[2^n]]]+ceil(2^(n-1))`
-/

namespace A054136.P13540941680547790249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A054136.P13540941680547790249

namespace A054136

/-- `∑[∑[∑[2^n]]]+ceil(2^(n-1))` -/
def P13540941680547790249.Spec : Prop :=
  ∀ n, P13540941680547790249.a n = A054136 (n + 2)

end A054136

/-! ## A054136.P13418948678309153903

`∑[floor(5*2^(n-2))+or(1, 3*(2^n-1))-n]`
-/

namespace A054136.P13418948678309153903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + (Int.lor 1 (3 * ((2 ^ n : ℤ) - 1)) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054136.P13418948678309153903

namespace A054136

/-- `∑[floor(5*2^(n-2))+or(1, 3*(2^n-1))-n]` -/
def P13418948678309153903.Spec : Prop :=
  ∀ n, P13418948678309153903.a n = A054136 (n + 2)

end A054136

/-! ## A054136.P7194290753536775276

`∑[A130103(n+2)+A034008(n)]`
-/

namespace A054136.P7194290753536775276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130103 (n + 2) + A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054136.P7194290753536775276

namespace A054136

/-- `∑[A130103(n+2)+A034008(n)]` -/
def P7194290753536775276.Spec : Prop :=
  ∀ n, P7194290753536775276.a n = A054136 (n + 2)

end A054136

/-! ## A054136.P16443695829247696145

`A054134(∑[n+2]+3)`
-/

namespace A054136.P16443695829247696145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A054136.P16443695829247696145

namespace A054136

/-- `A054134(∑[n+2]+3)` -/
def P16443695829247696145.Spec : Prop :=
  ∀ n, P16443695829247696145.a n = A054136 (n + 2)

end A054136

/-! ## A054136.P16450101329350238097

`A054125(A090288(n+1))`
-/

namespace A054136.P16450101329350238097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A090288 (n + 1)).toNat

end

end A054136.P16450101329350238097

namespace A054136

/-- `A054125(A090288(n+1))` -/
def P16450101329350238097.Spec : Prop :=
  ∀ n, P16450101329350238097.a n = A054136 (n + 2)

end A054136

/-! ## A054136.P11185380545727504212

`A054125(A099776(n+2)+1)`
-/

namespace A054136.P11185380545727504212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A099776 (n + 2) + 1).toNat

end

end A054136.P11185380545727504212

namespace A054136

/-- `A054125(A099776(n+2)+1)` -/
def P11185380545727504212.Spec : Prop :=
  ∀ n, P11185380545727504212.a n = A054136 (n + 2)

end A054136

/-!
# A054137: T(n,3), array T as in A054134.

The programs for A054137, the canonical program `A054137.P17809517643631732314` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054137 has offset 3).

The definition of A054137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054137.P17809517643631732314

`A011782(n)+A002664(n+5)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054137

/-- `A011782(n)+A002664(n+5)` -/
def P17809517643631732314.Spec : Prop :=
  ∀ n, P17809517643631732314.a n = A054137 (n + 3)

theorem P17809517643631732314.correct : P17809517643631732314.Spec := by
  intro n
  simp only [A054137, Nat.add_sub_cancel]

end A054137

/-! ## A054137.P13959307221687289316

`∑[A054128(n+2)]-A131577(n)`
-/

namespace A054137.P13959307221687289316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131577 n

end

end A054137.P13959307221687289316

namespace A054137

/-- `∑[A054128(n+2)]-A131577(n)` -/
def P13959307221687289316.Spec : Prop :=
  ∀ n, P13959307221687289316.a n = A054137 (n + 3)

end A054137

/-! ## A054137.P11276611184007956625

`∑[A054128(n+2)-A166444(n)]`
-/

namespace A054137.P11276611184007956625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054128 (n + 2) - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054137.P11276611184007956625

namespace A054137

/-- `∑[A054128(n+2)-A166444(n)]` -/
def P11276611184007956625.Spec : Prop :=
  ∀ n, P11276611184007956625.a n = A054137 (n + 3)

end A054137

/-! ## A054137.P13652928929313179466

`A011782(n)+∑[A002663(n+4)]`
-/

namespace A054137.P13652928929313179466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002663 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054137.P13652928929313179466

namespace A054137

/-- `A011782(n)+∑[A002663(n+4)]` -/
def P13652928929313179466.Spec : Prop :=
  ∀ n, P13652928929313179466.a n = A054137 (n + 3)

end A054137

/-! ## A054137.P9030623598628545732

`A054134(A167614(n+2))`
-/

namespace A054137.P9030623598628545732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A167614 (n + 2)).toNat

end

end A054137.P9030623598628545732

namespace A054137

/-- `A054134(A167614(n+2))` -/
def P9030623598628545732.Spec : Prop :=
  ∀ n, P9030623598628545732.a n = A054137 (n + 3)

end A054137

/-!
# A054138: T(n,4), array T as in A054134.

The programs for A054138, the canonical program `A054138.P2542160785684713049` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054138 has offset 4).

The definition of A054138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054138.P2542160785684713049

`A035039(n+7)+A011782(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054138

/-- `A035039(n+7)+A011782(n)` -/
def P2542160785684713049.Spec : Prop :=
  ∀ n, P2542160785684713049.a n = A054138 (n + 4)

theorem P2542160785684713049.correct : P2542160785684713049.Spec := by
  intro n
  simp only [A054138, Nat.add_sub_cancel]

end A054138

/-! ## A054138.P17671113495814013189

`∑[A054129(n+3)]-A131577(n)`
-/

namespace A054138.P17671113495814013189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054129 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A131577 n

end

end A054138.P17671113495814013189

namespace A054138

/-- `∑[A054129(n+3)]-A131577(n)` -/
def P17671113495814013189.Spec : Prop :=
  ∀ n, P17671113495814013189.a n = A054138 (n + 4)

end A054138

/-! ## A054138.P5527883129728973389

`∑[A054129(n+3)-A166444(n)]`
-/

namespace A054138.P5527883129728973389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054129 (n + 3) - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054138.P5527883129728973389

namespace A054138

/-- `∑[A054129(n+3)-A166444(n)]` -/
def P5527883129728973389.Spec : Prop :=
  ∀ n, P5527883129728973389.a n = A054138 (n + 4)

end A054138

/-! ## A054138.P7321248436884081223

`∑[A054129(n+3)]-A034008(n+1)`
-/

namespace A054138.P7321248436884081223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054129 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A034008 (n + 1)

end

end A054138.P7321248436884081223

namespace A054138

/-- `∑[A054129(n+3)]-A034008(n+1)` -/
def P7321248436884081223.Spec : Prop :=
  ∀ n, P7321248436884081223.a n = A054138 (n + 4)

end A054138

/-! ## A054138.P8601651795452264705

`A011782(n)+∑[A035038(A020715(n))]`
-/

namespace A054138.P8601651795452264705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035038 (A020715 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054138.P8601651795452264705

namespace A054138

/-- `A011782(n)+∑[A035038(A020715(n))]` -/
def P8601651795452264705.Spec : Prop :=
  ∀ n, P8601651795452264705.a n = A054138 (n + 4)

end A054138

/-! ## A054138.P6529802462050558973

`A054129(n+3)+A035039(A020715(n))`
-/

namespace A054138.P6529802462050558973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054129 (n + 3) + A035039 (A020715 n).toNat

end

end A054138.P6529802462050558973

namespace A054138

/-- `A054129(n+3)+A035039(A020715(n))` -/
def P6529802462050558973.Spec : Prop :=
  ∀ n, P6529802462050558973.a n = A054138 (n + 4)

end A054138

/-!
# A054139: T(2n,n), array T as in A054134.

The programs for A054139, there is no canonical definition to state claims against.
-/

/-! ## A054139.P14974206973539546910

`A054134(∑[4*n])`
-/

namespace A054139.P14974206973539546910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054139.P14974206973539546910

/-! ## A054139.P11980667881535542239

`record[A054134(A241496(n))]`
-/

namespace A054139.P11980667881535542239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A241496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054139.P11980667881535542239

/-! ## A054139.P7911432670928895442

`record[A054134(n*A008619(n))]`
-/

namespace A054139.P7911432670928895442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054139.P7911432670928895442

/-! ## A054139.P15432981402720387891

`A131577(n)+A008949(A022266(n))`
-/

namespace A054139.P15432981402720387891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A008949 (A022266 n).toNat

end

end A054139.P15432981402720387891

/-! ## A054139.P1566951366595954638

`A054131(n)-A055248(A022267(n))`
-/

namespace A054139.P1566951366595954638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054131 n - A055248 (A022267 n).toNat

end

end A054139.P1566951366595954638

/-!
# A054140: T(2n+1,n), array T as in A054134.

The programs for A054140, there is no canonical definition to state claims against.
-/

/-! ## A054140.P7248000684229482618

`A054134(A056220(n+1))`
-/

namespace A054140.P7248000684229482618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A056220 (n + 1)).toNat

end

end A054140.P7248000684229482618

/-! ## A054140.P17812109212341405656

`A054134(A004273((n+1)²))`
-/

namespace A054140.P17812109212341405656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A004273 ((n + 1) ^ 2)).toNat

end

end A054140.P17812109212341405656

/-! ## A054140.P6872088398973194749

`A054134(A001844(n)+2*n)`
-/

namespace A054140.P6872088398973194749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A001844 n + (2 * n : ℤ)).toNat

end

end A054140.P6872088398973194749

/-! ## A054140.P631176172112462788

`A054134(A001844(n)+n+n)`
-/

namespace A054140.P631176172112462788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A001844 n + (n : ℤ) + (n : ℤ)).toNat

end

end A054140.P631176172112462788

/-! ## A054140.P5100016491137167331

`A054134(A046092(n)+2*n+1)`
-/

namespace A054140.P5100016491137167331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A046092 n + (2 * n + 1 : ℤ)).toNat

end

end A054140.P5100016491137167331

/-! ## A054140.P3179585614547586635

`A054134(A161532(n)-A008574(n))`
-/

namespace A054140.P3179585614547586635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (A161532 n - A008574 n).toNat

end

end A054140.P3179585614547586635

/-!
# A054141: T(2n-1,n), array T as in A054134.

The programs for A054141, the canonical program `A054141.P11387286021896505430` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054141 has offset 1).

The definition of A054141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054141.P11387286021896505430

`A160906(n)+A011782(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054141

/-- `A160906(n)+A011782(n)` -/
def P11387286021896505430.Spec : Prop :=
  ∀ n, P11387286021896505430.a n = A054141 (n + 1)

theorem P11387286021896505430.correct : P11387286021896505430.Spec := by
  intro n
  simp only [A054141, Nat.add_sub_cancel]

end A054141

/-! ## A054141.P12755144362359135735

`A054134(2*(n+1)²)`
-/

namespace A054141.P12755144362359135735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054134 (2 * (n + 1) ^ 2)

end

end A054141.P12755144362359135735

namespace A054141

/-- `A054134(2*(n+1)²)` -/
def P12755144362359135735.Spec : Prop :=
  ∀ n, P12755144362359135735.a n = A054141 (n + 1)

end A054141

/-! ## A054141.P5877863654169638705

`A054143(A062725(n))+A011782(n)`
-/

namespace A054141.P5877863654169638705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A062725 n).toNat + A011782 n

end

end A054141.P5877863654169638705

namespace A054141

/-- `A054143(A062725(n))+A011782(n)` -/
def P5877863654169638705.Spec : Prop :=
  ∀ n, P5877863654169638705.a n = A054141 (n + 1)

end A054141

/-! ## A054141.P14571590046254909691

`A054125(A139272(n+1))`
-/

namespace A054141.P14571590046254909691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A139272 (n + 1)).toNat

end

end A054141.P14571590046254909691

namespace A054141

/-- `A054125(A139272(n+1))` -/
def P14571590046254909691.Spec : Prop :=
  ∀ n, P14571590046254909691.a n = A054141 (n + 1)

end A054141

/-! ## A054141.P4577349321197788110

`A054125(A139273(n+1))`
-/

namespace A054141.P4577349321197788110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054125 (A139273 (n + 1)).toNat

end

end A054141.P4577349321197788110

namespace A054141

/-- `A054125(A139273(n+1))` -/
def P4577349321197788110.Spec : Prop :=
  ∀ n, P4577349321197788110.a n = A054141 (n + 1)

end A054141

/-!
# A054142: Triangular array binomial(2*n-k, k), k=0..n, n >= 0.

The programs for A054142, the canonical program `A054142.P14552566428943452970` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054142 has offset 0).

The definition of A054142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054142.P14552566428943452970

`C(2*row(n)-col(n), col(n))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054142

/-- `C(2*row(n)-col(n), col(n))` -/
def P14552566428943452970.Spec : Prop :=
  ∀ n, (P14552566428943452970.a n : ℤ) = A054142 n

theorem P14552566428943452970.correct : P14552566428943452970.Spec := by
  intro n
  simp only [A054142]

end A054142

/-! ## A054142.P10227843922170193459

`abs(A076756(n))`
-/

namespace A054142.P10227843922170193459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076756 n|

end

end A054142.P10227843922170193459

namespace A054142

/-- `abs(A076756(n))` -/
def P10227843922170193459.Spec : Prop :=
  ∀ n, P10227843922170193459.a n = A054142 n

end A054142

/-! ## A054142.P3628509478147446989

`A076756(n)*A097807(n)`
-/

namespace A054142.P3628509478147446989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076756 n * A097807 n

end

end A054142.P3628509478147446989

namespace A054142

/-- `A076756(n)*A097807(n)` -/
def P3628509478147446989.Spec : Prop :=
  ∀ n, P3628509478147446989.a n = A054142 n

end A054142

/-! ## A054142.P12439275724617653392

`gcd(A000038(n), A076756(n))`
-/

namespace A054142.P12439275724617653392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A076756 n)

end

end A054142.P12439275724617653392

namespace A054142

/-- `gcd(A000038(n), A076756(n))` -/
def P12439275724617653392.Spec : Prop :=
  ∀ n, (P12439275724617653392.a n : ℤ) = A054142 n

end A054142

/-! ## A054142.P4113374955232533796

`lcm(A020985(n), A076756(n))`
-/

namespace A054142.P4113374955232533796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A076756 n)

end

end A054142.P4113374955232533796

namespace A054142

/-- `lcm(A020985(n), A076756(n))` -/
def P4113374955232533796.Spec : Prop :=
  ∀ n, (P4113374955232533796.a n : ℤ) = A054142 n

end A054142

/-! ## A054142.P1818663870196080050

`C(A294317(n), A002262(n))`
-/

namespace A054142.P1818663870196080050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n).toNat (A002262 n).toNat

end

end A054142.P1818663870196080050

namespace A054142

/-- `C(A294317(n), A002262(n))` -/
def P1818663870196080050.Spec : Prop :=
  ∀ n, (P1818663870196080050.a n : ℤ) = A054142 n

end A054142

/-! ## A054142.P7766438163479684678

`A156717(n+1)-A085478(n)`
-/

namespace A054142.P7766438163479684678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156717 (n + 1) - A085478 n

end

end A054142.P7766438163479684678

namespace A054142

/-- `A156717(n+1)-A085478(n)` -/
def P7766438163479684678.Spec : Prop :=
  ∀ n, P7766438163479684678.a n = A054142 n

theorem P7766438163479684678.correct : P7766438163479684678.Spec := by
  intro n
  simp only [A054142, Nat.add_sub_cancel, A054142.P7766438163479684678.a, A054142.P14552566428943452970.a, A085478, A085478.P11759972136797087667.a, A156717, A156717.P8230165376730895281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054142

/-! ## A054142.P12729297294263552191

`C(A294317(n), 2*A025581(n))`
-/

namespace A054142.P12729297294263552191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294317 n).toNat (2 * A025581 n).toNat

end

end A054142.P12729297294263552191

namespace A054142

/-- `C(A294317(n), 2*A025581(n))` -/
def P12729297294263552191.Spec : Prop :=
  ∀ n, (P12729297294263552191.a n : ℤ) = A054142 n

end A054142

/-! ## A054142.P9814905508038026101

`A258993(2-A158405(n+1)+n)`
-/

namespace A054142.P9814905508038026101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258993 (2 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A054142.P9814905508038026101

namespace A054142

/-- `A258993(2-A158405(n+1)+n)` -/
def P9814905508038026101.Spec : Prop :=
  ∀ n, P9814905508038026101.a n = A054142 n

end A054142

/-! ## A054142.P5223836367905935033

`2*A172431(n+1)-A082985(n)`
-/

namespace A054142.P5223836367905935033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172431 (n + 1) - A082985 n

end

end A054142.P5223836367905935033

namespace A054142

/-- `2*A172431(n+1)-A082985(n)` -/
def P5223836367905935033.Spec : Prop :=
  ∀ n, P5223836367905935033.a n = A054142 n

end A054142

/-! ## A054142.P2515478869367250043

`C(A128076(n+1)-1, A002262(n))`
-/

namespace A054142.P2515478869367250043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128076 (n + 1) - 1).toNat (A002262 n).toNat

end

end A054142.P2515478869367250043

namespace A054142

/-- `C(A128076(n+1)-1, A002262(n))` -/
def P2515478869367250043.Spec : Prop :=
  ∀ n, (P2515478869367250043.a n : ℤ) = A054142 n

end A054142

/-! ## A054142.P932472698268847074

`A076756(n)/A085478(n)*A129818(n)`
-/

namespace A054142.P932472698268847074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076756 n : ℚ) / (A085478 n : ℚ) * (A129818 n : ℚ)

end

end A054142.P932472698268847074

namespace A054142

/-- `A076756(n)/A085478(n)*A129818(n)` -/
def P932472698268847074.Spec : Prop :=
  ∀ n, P932472698268847074.a n = (A054142 n : ℚ)

end A054142

/-! ## A054142.P6369338685803904687

`C(A025581(n)+A003056(n), A002262(n))`
-/

namespace A054142.P6369338685803904687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n + A003056 n).toNat (A002262 n).toNat

end

end A054142.P6369338685803904687

namespace A054142

/-- `C(A025581(n)+A003056(n), A002262(n))` -/
def P6369338685803904687.Spec : Prop :=
  ∀ n, (P6369338685803904687.a n : ℤ) = A054142 n

end A054142

/-! ## A054142.P13656146456264554412

`A121314(comp[∑[n]])`
-/

namespace A054142.P13656146456264554412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A054142.P13656146456264554412

namespace A054142

/-- `A121314(comp[∑[n]])` -/
def P13656146456264554412.Spec : Prop :=
  ∀ n, P13656146456264554412.a n = A054142 n

end A054142

/-! ## A054142.P3958714033071781377

`A085478(A061579(n))`
-/

namespace A054142.P3958714033071781377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A061579 n).toNat

end

end A054142.P3958714033071781377

namespace A054142

/-- `A085478(A061579(n))` -/
def P3958714033071781377.Spec : Prop :=
  ∀ n, P3958714033071781377.a n = A054142 n

end A054142

/-! ## A054142.P15305436346147567884

`A085478(A038722(n+1)-1)`
-/

namespace A054142.P15305436346147567884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A038722 (n + 1) - 1).toNat

end

end A054142.P15305436346147567884

namespace A054142

/-- `A085478(A038722(n+1)-1)` -/
def P15305436346147567884.Spec : Prop :=
  ∀ n, P15305436346147567884.a n = A054142 n

end A054142

/-! ## A054142.P12472468067571874128

`A085478(A038722(n+2))`
-/

namespace A054142.P12472468067571874128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 (A038722 (n + 2)).toNat

end

end A054142.P12472468067571874128

namespace A054142

/-- `A085478(A038722(n+2))` -/
def P12472468067571874128.Spec : Prop :=
  ∀ n, P12472468067571874128.a n = A054142 n

end A054142

/-! ## A054142.P2578022451839285959

`A128908(A038722(n+2))+A121314(n)`
-/

namespace A054142.P2578022451839285959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A038722 (n + 2)).toNat + A121314 n

end

end A054142.P2578022451839285959

namespace A054142

/-- `A128908(A038722(n+2))+A121314(n)` -/
def P2578022451839285959.Spec : Prop :=
  ∀ n, P2578022451839285959.a n = A054142 n

end A054142

/-! ## A054142.P371420928556411345

`A104684(n)/A106187(n)`
-/

namespace A054142.P371420928556411345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104684 n : ℚ) / (A106187 n : ℚ)

end

end A054142.P371420928556411345

namespace A054142

/-- `A104684(n)/A106187(n)` -/
def P371420928556411345.Spec : Prop :=
  ∀ n, P371420928556411345.a n = (A054142 n : ℚ)

end A054142

/-! ## A054142.P13413319332531429939

`A143858(n+1)/A109954(n)*A076756(n)`
-/

namespace A054142.P13413319332531429939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143858 (n + 1) : ℚ) / (A109954 n : ℚ) * (A076756 n : ℚ)

end

end A054142.P13413319332531429939

namespace A054142

/-- `A143858(n+1)/A109954(n)*A076756(n)` -/
def P13413319332531429939.Spec : Prop :=
  ∀ n, P13413319332531429939.a n = (A054142 n : ℚ)

end A054142

/-!
# A054143: Triangular array T given by T(n,k) = Sum_{0 <= j <= i-n+k, n-k <= i <= n} C(i,j) for n >= 0 and 0 <= k <= n.

The programs for A054143, the canonical program `A054143.P11222314207562248900` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054143 has offset 0).

The definition of A054143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054143.P5207897616933950617

`2*T(n-1,k-1)+C(row(n), col(n))` with `a(0)=1`
-/

namespace A054143.P5207897616933950617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A054143.P5207897616933950617

namespace A054143

/-- `2*T(n-1,k-1)+C(row(n), col(n))` -/
def P5207897616933950617.Spec : Prop :=
  ∀ n, (P5207897616933950617.a n : ℤ) = A054143 n

end A054143

/-! ## A054143.P11642300755349127914

`A140513(n)-A104709(n)`
-/

namespace A054143.P11642300755349127914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n - A104709 n

end

end A054143.P11642300755349127914

namespace A054143

/-- `A140513(n)-A104709(n)` -/
def P11642300755349127914.Spec : Prop :=
  ∀ n, P11642300755349127914.a n = A054143 n

end A054143

/-! ## A054143.P15225185750306322197

`A061929(n)/A175840(n)`
-/

namespace A054143.P15225185750306322197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061929 n : ℚ) / (A175840 n : ℚ)

end

end A054143.P15225185750306322197

namespace A054143

/-- `A061929(n)/A175840(n)` -/
def P15225185750306322197.Spec : Prop :=
  ∀ n, P15225185750306322197.a n = (A054143 n : ℚ)

end A054143

/-! ## A054143.P10141240357601675943

`A102363(n+1)-A055248(n)`
-/

namespace A054143.P10141240357601675943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - A055248 n

end

end A054143.P10141240357601675943

namespace A054143

/-- `A102363(n+1)-A055248(n)` -/
def P10141240357601675943.Spec : Prop :=
  ∀ n, P10141240357601675943.a n = A054143 n

end A054143

/-! ## A054143.P3450063921290858117

`A204202(n+1)-A008949(n)`
-/

namespace A054143.P3450063921290858117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204202 (n + 1) - A008949 n

end

end A054143.P3450063921290858117

namespace A054143

/-- `A204202(n+1)-A008949(n)` -/
def P3450063921290858117.Spec : Prop :=
  ∀ n, P3450063921290858117.a n = A054143 n

theorem P3450063921290858117.correct : P3450063921290858117.Spec := by
  intro n
  simp only [A054143, Nat.add_sub_cancel, A054143.P3450063921290858117.a, A054143.P11222314207562248900.a, A008949, A008949.P1107392530545470892.a, A140513, A140513.P13579608035938851890.a, A204202, A204202.P1024099258740543106.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6402560185863182536.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A054143

/-! ## A054143.P16834731073900745896

`A221881(n+1)-A014473(n)`
-/

namespace A054143.P16834731073900745896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221881 (n + 1) - A014473 n

end

end A054143.P16834731073900745896

namespace A054143

/-- `A221881(n+1)-A014473(n)` -/
def P16834731073900745896.Spec : Prop :=
  ∀ n, P16834731073900745896.a n = A054143 n

end A054143

/-! ## A054143.P11222314207562248900

`A204206(n+1)-A140513(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054143

/-- `A204206(n+1)-A140513(n)` -/
def P11222314207562248900.Spec : Prop :=
  ∀ n, P11222314207562248900.a n = A054143 n

theorem P11222314207562248900.correct : P11222314207562248900.Spec := by
  intro n
  simp only [A054143]

end A054143

/-! ## A054143.P4741123023486971520

`2*A008949(n)-A007318(n)`
-/

namespace A054143.P4741123023486971520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008949 n - A007318 n

end

end A054143.P4741123023486971520

namespace A054143

/-- `2*A008949(n)-A007318(n)` -/
def P4741123023486971520.Spec : Prop :=
  ∀ n, P4741123023486971520.a n = A054143 n

end A054143

/-! ## A054143.P17973026635316074309

`2*A137688(n)-A104709(n)`
-/

namespace A054143.P17973026635316074309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n - A104709 n

end

end A054143.P17973026635316074309

namespace A054143

/-- `2*A137688(n)-A104709(n)` -/
def P17973026635316074309.Spec : Prop :=
  ∀ n, P17973026635316074309.a n = A054143 n

end A054143

/-! ## A054143.P17766253491940150326

`2*A008949(n)-sqrt(A008459(n))`
-/

namespace A054143.P17766253491940150326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A008949 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A054143.P17766253491940150326

namespace A054143

/-- `2*A008949(n)-sqrt(A008459(n))` -/
def P17766253491940150326.Spec : Prop :=
  ∀ n, P17766253491940150326.a n = (A054143 n : ℝ)

end A054143

/-! ## A054143.P13860023137727962616

`∑[A007318(n)]+1-A055248(n)`
-/

namespace A054143.P13860023137727962616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A055248 n)

end

end A054143.P13860023137727962616

namespace A054143

/-- `∑[A007318(n)]+1-A055248(n)` -/
def P13860023137727962616.Spec : Prop :=
  ∀ n, P13860023137727962616.a n = A054143 n

end A054143

/-! ## A054143.P1564994054808071824

`A163866(n+1)+1-A055248(n)`
-/

namespace A054143.P1564994054808071824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (n + 1) + (1 - A055248 n)

end

end A054143.P1564994054808071824

namespace A054143

/-- `A163866(n+1)+1-A055248(n)` -/
def P1564994054808071824.Spec : Prop :=
  ∀ n, P1564994054808071824.a n = A054143 n

end A054143

/-! ## A054143.P2756059644772721608

`A221881(n+1)+1-A007318(n)`
-/

namespace A054143.P2756059644772721608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221881 (n + 1) + (1 - A007318 n)

end

end A054143.P2756059644772721608

namespace A054143

/-- `A221881(n+1)+1-A007318(n)` -/
def P2756059644772721608.Spec : Prop :=
  ∀ n, P2756059644772721608.a n = A054143 n

end A054143

/-! ## A054143.P13366816003800644278

`(A204203(n+1)+A007318(n))/2`
-/

namespace A054143.P13366816003800644278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204203 (n + 1) + A007318 n : ℚ) / 2

end

end A054143.P13366816003800644278

namespace A054143

/-- `(A204203(n+1)+A007318(n))/2` -/
def P13366816003800644278.Spec : Prop :=
  ∀ n, P13366816003800644278.a n = (A054143 n : ℚ)

theorem P13366816003800644278.correct : P13366816003800644278.Spec := by
  intro n
  simp only [A054143, Nat.add_sub_cancel, A054143.P13366816003800644278.a, A054143.P11222314207562248900.a, A007318, A007318.P11755526479805562006.a, A140513, A140513.P13579608035938851890.a, A204203, A204203.P18355877739269611644.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6402560185863182536.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A054143

/-! ## A054143.P11626637913450254898

`(A204201(n+1)+A008949(n))/2`
-/

namespace A054143.P11626637913450254898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204201 (n + 1) + A008949 n : ℚ) / 2

end

end A054143.P11626637913450254898

namespace A054143

/-- `(A204201(n+1)+A008949(n))/2` -/
def P11626637913450254898.Spec : Prop :=
  ∀ n, P11626637913450254898.a n = (A054143 n : ℚ)

theorem P11626637913450254898.correct : P11626637913450254898.Spec := by
  intro n
  simp only [A054143, Nat.add_sub_cancel, A054143.P11626637913450254898.a, A054143.P11222314207562248900.a, A008949, A008949.P1107392530545470892.a, A140513, A140513.P13579608035938851890.a, A204201, A204201.P4812556110496593180.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6402560185863182536.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A054143

/-! ## A054143.P7926178180605591900

`A204204(n+1)-2*A008949(n)`
-/

namespace A054143.P7926178180605591900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204204 (n + 1) - 2 * A008949 n

end

end A054143.P7926178180605591900

namespace A054143

/-- `A204204(n+1)-2*A008949(n)` -/
def P7926178180605591900.Spec : Prop :=
  ∀ n, P7926178180605591900.a n = A054143 n

theorem P7926178180605591900.correct : P7926178180605591900.Spec := by
  intro n
  simp only [A054143, Nat.add_sub_cancel, A054143.P7926178180605591900.a, A054143.P11222314207562248900.a, A008949, A008949.P1107392530545470892.a, A140513, A140513.P13579608035938851890.a, A204204, A204204.P9788490803614695615.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6402560185863182536.a, A137688, A137688.P9746695207037186753.a, A204202, A204202.P1024099258740543106.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A054143

/-! ## A054143.P17415148249130520529

`A204206(n+1)-2*A137688(n)`
-/

namespace A054143.P17415148249130520529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204206 (n + 1) - 2 * A137688 n

end

end A054143.P17415148249130520529

namespace A054143

/-- `A204206(n+1)-2*A137688(n)` -/
def P17415148249130520529.Spec : Prop :=
  ∀ n, P17415148249130520529.a n = A054143 n

end A054143

/-! ## A054143.P7170088164816079680

`A098354(n+1)/2-A104709(n)`
-/

namespace A054143.P7170088164816079680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098354 (n + 1) : ℚ) / 2 - (A104709 n : ℚ)

end

end A054143.P7170088164816079680

namespace A054143

/-- `A098354(n+1)/2-A104709(n)` -/
def P7170088164816079680.Spec : Prop :=
  ∀ n, P7170088164816079680.a n = (A054143 n : ℚ)

end A054143

/-! ## A054143.P16430027095087428179

`2*A204201(n+1)-A204203(n+1)`
-/

namespace A054143.P16430027095087428179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204201 (n + 1) - A204203 (n + 1)

end

end A054143.P16430027095087428179

namespace A054143

/-- `2*A204201(n+1)-A204203(n+1)` -/
def P16430027095087428179.Spec : Prop :=
  ∀ n, P16430027095087428179.a n = A054143 n

end A054143

/-! ## A054143.P17122910455992924514

`2*A204202(n+1)-A204204(n+1)`
-/

namespace A054143.P17122910455992924514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204202 (n + 1) - A204204 (n + 1)

end

end A054143.P17122910455992924514

namespace A054143

/-- `2*A204202(n+1)-A204204(n+1)` -/
def P17122910455992924514.Spec : Prop :=
  ∀ n, P17122910455992924514.a n = A054143 n

theorem P17122910455992924514.correct : P17122910455992924514.Spec := by
  intro n
  simp only [A054143, Nat.add_sub_cancel, A054143.P17122910455992924514.a, A054143.P11222314207562248900.a, A140513, A140513.P13579608035938851890.a, A204202, A204202.P1024099258740543106.a, A204204, A204204.P9788490803614695615.a, A204206, A204206.P854096699827338767.f1, A204206.P854096699827338767.a, A008949, A008949.P1107392530545470892.a, A010054, A010054.P18347828677204923252.a, A074909, A074909.P6402560185863182536.a, A137688, A137688.P9746695207037186753.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A054143

/-!
# A054144: Triangular array T: put T(n,0)=n for all n >= 0 and all other T(n,k)=0; then put T(n,k)=Sum{T(i,j): 0<=j<=i-n+k, n-k<=i<=n}.

The programs for A054144, there is no canonical definition to state claims against.
-/

/-! ## A054144.P7471135836014376402

`A053199(n)-A003480(A002262(n))`
-/

namespace A054144.P7471135836014376402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053199 n - A003480 (A002262 n).toNat

end

end A054144.P7471135836014376402

/-! ## A054144.P1880713538923723505

`A335436(n)-A053199(n)`
-/

namespace A054144.P1880713538923723505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335436 n - A053199 n

end

end A054144.P1880713538923723505

/-! ## A054144.P9393377388682246597

`A335436(round(sqrt(n²+1)))%A053199(n)`
-/

namespace A054144.P9393377388682246597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335436 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A053199 n)

end

end A054144.P9393377388682246597

/-! ## A054144.P6358726706519456047

`(A335436(n)%A003480(n))%A053199(n)`
-/

namespace A054144.P6358726706519456047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A335436 n) (A003480 n)) (A053199 n)

end

end A054144.P6358726706519456047

/-! ## A054144.P2671936862081715038

`and(A057428(n), A335436(n))%A053199(n)`
-/

namespace A054144.P2671936862081715038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (A057428 n) (A335436 n)) (A053199 n)

end

end A054144.P2671936862081715038

/-! ## A054144.P10208767078855363906

`or(A010054(n), A335436(n))%A053199(n)`
-/

namespace A054144.P10208767078855363906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A010054 n) (A335436 n)) (A053199 n)

end

end A054144.P10208767078855363906

/-!
# A054145: Row sums of array T as in A054144.

The programs for A054145, the canonical program `A054145.P4401512927213230967` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054145 has offset 0).

The definition of A054145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054145.P4401512927213230967

`8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=12, a(3)=58`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054145

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P4401512927213230967.Spec : Prop :=
  ∀ n, P4401512927213230967.a n = A054145 n

theorem P4401512927213230967.correct : P4401512927213230967.Spec := by
  intro n
  simp only [A054145]

end A054145

/-! ## A054145.P12089382520342543649

`∑[A181294(n)]`
-/

namespace A054145.P12089382520342543649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054145.P12089382520342543649

namespace A054145

/-- `∑[A181294(n)]` -/
def P12089382520342543649.Spec : Prop :=
  ∀ n, P12089382520342543649.a n = A054145 n

end A054145

/-! ## A054145.P1670866643160910193

`2*A054146(n)`
-/

namespace A054145.P1670866643160910193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054146 n

end

end A054145.P1670866643160910193

namespace A054145

/-- `2*A054146(n)` -/
def P1670866643160910193.Spec : Prop :=
  ∀ n, P1670866643160910193.a n = A054145 n

end A054145

/-! ## A054145.P10881812338816330571

`∑[2*A181331(n)]`
-/

namespace A054145.P10881812338816330571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054145.P10881812338816330571

namespace A054145

/-- `∑[2*A181331(n)]` -/
def P10881812338816330571.Spec : Prop :=
  ∀ n, P10881812338816330571.a n = A054145 n

end A054145

/-! ## A054145.P9384425180057967578

`A053297(n+1)-A007052(n)`
-/

namespace A054145.P9384425180057967578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053297 (n + 1) - A007052 n

end

end A054145.P9384425180057967578

namespace A054145

/-- `A053297(n+1)-A007052(n)` -/
def P9384425180057967578.Spec : Prop :=
  ∀ n, P9384425180057967578.a n = A054145 n

theorem P9384425180057967578.correct : P9384425180057967578.Spec := by
  intro n
  simp only [A054145, Nat.add_sub_cancel, A054145.P9384425180057967578.a, A054145.P4401512927213230967.a, A007052, A007052.P1028179172353174515.a, A053297, A053297.P301715690117761564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054145

/-! ## A054145.P2359631255844810475

`A335087(n)-A053297(n+1)`
-/

namespace A054145.P2359631255844810475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335087 n - A053297 (n + 1)

end

end A054145.P2359631255844810475

namespace A054145

/-- `A335087(n)-A053297(n+1)` -/
def P2359631255844810475.Spec : Prop :=
  ∀ n, P2359631255844810475.a n = A054145 n

end A054145

/-! ## A054145.P8327243033870348312

`2*(A181290(n)-A181331(n))`
-/

namespace A054145.P8327243033870348312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181290 n - A181331 n)

end

end A054145.P8327243033870348312

namespace A054145

/-- `2*(A181290(n)-A181331(n))` -/
def P8327243033870348312.Spec : Prop :=
  ∀ n, P8327243033870348312.a n = A054145 n

end A054145

/-! ## A054145.P9866146629736416328

`A181296(n)+∑[2*A181300(n)]`
-/

namespace A054145.P9866146629736416328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054145.P9866146629736416328

namespace A054145

/-- `A181296(n)+∑[2*A181300(n)]` -/
def P9866146629736416328.Spec : Prop :=
  ∀ n, P9866146629736416328.a n = A054145 n

end A054145

/-! ## A054145.P6101943186621536645

`2*(A181305(n)+∑[A181300(n)])`
-/

namespace A054145.P6101943186621536645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181305 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054145.P6101943186621536645

namespace A054145

/-- `2*(A181305(n)+∑[A181300(n)])` -/
def P6101943186621536645.Spec : Prop :=
  ∀ n, P6101943186621536645.a n = A054145 n

end A054145

/-! ## A054145.P4906191203157402610

`2*(∑[A181290(n)]-A181292(n))`
-/

namespace A054145.P4906191203157402610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A181292 n)

end

end A054145.P4906191203157402610

namespace A054145

/-- `2*(∑[A181290(n)]-A181292(n))` -/
def P4906191203157402610.Spec : Prop :=
  ∀ n, P4906191203157402610.a n = A054145 n

end A054145

/-! ## A054145.P6632454780019780337

`A054146(n)+A054146(n%(n+1))`
-/

namespace A054145.P6632454780019780337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n + A054146 (n % (n + 1))

end

end A054145.P6632454780019780337

namespace A054145

/-- `A054146(n)+A054146(n%(n+1))` -/
def P6632454780019780337.Spec : Prop :=
  ∀ n, P6632454780019780337.a n = A054145 n

end A054145

/-! ## A054145.P2232859259586356362

`A054146(A005843(n)/2)+A054146(n)`
-/

namespace A054145.P2232859259586356362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A054146 n

end

end A054145.P2232859259586356362

namespace A054145

/-- `A054146(A005843(n)/2)+A054146(n)` -/
def P2232859259586356362.Spec : Prop :=
  ∀ n, P2232859259586356362.a n = A054145 n

end A054145

/-! ## A054145.P7995821219752930987

`A054146(A005843(n)-n)+A054146(n)`
-/

namespace A054145.P7995821219752930987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (A005843 n - (n : ℤ)).toNat + A054146 n

end

end A054145.P7995821219752930987

namespace A054145

/-- `A054146(A005843(n)-n)+A054146(n)` -/
def P7995821219752930987.Spec : Prop :=
  ∀ n, P7995821219752930987.a n = A054145 n

end A054145

/-! ## A054145.P11938815637342409910

`A054146(n)+A054146(A118759(n))`
-/

namespace A054145.P11938815637342409910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n + A054146 (A118759 n).toNat

end

end A054145.P11938815637342409910

namespace A054145

/-- `A054146(n)+A054146(A118759(n))` -/
def P11938815637342409910.Spec : Prop :=
  ∀ n, P11938815637342409910.a n = A054145 n

end A054145

/-!
# A054146: a(n) = A054145(n)/2.

The programs for A054146, the canonical program `A054146.P10377957314755391080` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054146 has offset 0).

The definition of A054146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054146.P10377957314755391080

`8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=29`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054146

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P10377957314755391080.Spec : Prop :=
  ∀ n, P10377957314755391080.a n = A054146 n

theorem P10377957314755391080.correct : P10377957314755391080.Spec := by
  intro n
  simp only [A054146]

end A054146

/-! ## A054146.P4188936153157879037

`A054145(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054146.P4188936153157879037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054145 n : ℚ) / 2

end

end A054146.P4188936153157879037

namespace A054146

/-- `A054145(n)/2` -/
def P4188936153157879037.Spec : Prop :=
  ∀ n, P4188936153157879037.a n = (A054146 n : ℚ)

end A054146

/-! ## A054146.P908357259515106208

`∑[A181331(n)]`
-/

namespace A054146.P908357259515106208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054146.P908357259515106208

namespace A054146

/-- `∑[A181331(n)]` -/
def P908357259515106208.Spec : Prop :=
  ∀ n, P908357259515106208.a n = A054146 n

end A054146

/-! ## A054146.P17341829772060277830

`∑[A181294(n)/2]`
-/

namespace A054146.P17341829772060277830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181294 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054146.P17341829772060277830

namespace A054146

/-- `∑[A181294(n)/2]` -/
def P17341829772060277830.Spec : Prop :=
  ∀ n, P17341829772060277830.a n = (A054146 n : ℚ)

end A054146

/-! ## A054146.P5611729145105609744

`A181290(n)-A181331(n)`
-/

namespace A054146.P5611729145105609744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n - A181331 n

end

end A054146.P5611729145105609744

namespace A054146

/-- `A181290(n)-A181331(n)` -/
def P5611729145105609744.Spec : Prop :=
  ∀ n, P5611729145105609744.a n = A054146 n

end A054146

/-! ## A054146.P11477947604156294323

`A181305(n)+∑[A181300(n)]`
-/

namespace A054146.P11477947604156294323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054146.P11477947604156294323

namespace A054146

/-- `A181305(n)+∑[A181300(n)]` -/
def P11477947604156294323.Spec : Prop :=
  ∀ n, P11477947604156294323.a n = A054146 n

end A054146

/-! ## A054146.P14086451728416808808

`A181296(n)-A181300(n+1)`
-/

namespace A054146.P14086451728416808808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181296 n - A181300 (n + 1)

end

end A054146.P14086451728416808808

namespace A054146

/-- `A181296(n)-A181300(n+1)` -/
def P14086451728416808808.Spec : Prop :=
  ∀ n, P14086451728416808808.a n = A054146 n

end A054146

/-! ## A054146.P5187907436933894206

`∑[A181337(n)-∑[A181300(n)]]`
-/

namespace A054146.P5187907436933894206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181337 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054146.P5187907436933894206

namespace A054146

/-- `∑[A181337(n)-∑[A181300(n)]]` -/
def P5187907436933894206.Spec : Prop :=
  ∀ n, P5187907436933894206.a n = A054146 n

end A054146

/-! ## A054146.P14867698755639667140

`∑[A181300(n+1)+A181300(n)]`
-/

namespace A054146.P14867698755639667140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181300 (n + 1) + A181300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054146.P14867698755639667140

namespace A054146

/-- `∑[A181300(n+1)+A181300(n)]` -/
def P14867698755639667140.Spec : Prop :=
  ∀ n, P14867698755639667140.a n = A054146 n

end A054146

/-! ## A054146.P1435631827540623737

`∑[A181290(n)]-A181292(n)`
-/

namespace A054146.P1435631827540623737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181292 n

end

end A054146.P1435631827540623737

namespace A054146

/-- `∑[A181290(n)]-A181292(n)` -/
def P1435631827540623737.Spec : Prop :=
  ∀ n, P1435631827540623737.a n = A054146 n

end A054146

/-! ## A054146.P1298822450753062185

`(A053297(n+1)-A007052(n))/2`
-/

namespace A054146.P1298822450753062185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053297 (n + 1) - A007052 n : ℚ) / 2

end

end A054146.P1298822450753062185

namespace A054146

/-- `(A053297(n+1)-A007052(n))/2` -/
def P1298822450753062185.Spec : Prop :=
  ∀ n, P1298822450753062185.a n = (A054146 n : ℚ)

end A054146

/-! ## A054146.P18433789053363603886

`(A335087(n)-A053297(n+1))/2`
-/

namespace A054146.P18433789053363603886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335087 n - A053297 (n + 1) : ℚ) / 2

end

end A054146.P18433789053363603886

namespace A054146

/-- `(A335087(n)-A053297(n+1))/2` -/
def P18433789053363603886.Spec : Prop :=
  ∀ n, P18433789053363603886.a n = (A054146 n : ℚ)

end A054146

/-! ## A054146.P12654579642124470188

`log2(sqrt(A036453(n+1)))*A054145(n)`
-/

namespace A054146.P12654579642124470188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (A036453 (n + 1) : ℝ)) * (A054145 n : ℝ)

end

end A054146.P12654579642124470188

namespace A054146

/-- `log2(sqrt(A036453(n+1)))*A054145(n)` -/
def P12654579642124470188.Spec : Prop :=
  ∀ n, P12654579642124470188.a n = (A054146 n : ℝ)

end A054146

/-! ## A054146.P1158437692551963536

`Δ[A181331(n)]-(A181331(n)+A003480(n))`
-/

namespace A054146.P1158437692551963536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A181331 n + A003480 n)

end

end A054146.P1158437692551963536

namespace A054146

/-- `Δ[A181331(n)]-(A181331(n)+A003480(n))` -/
def P1158437692551963536.Spec : Prop :=
  ∀ n, P1158437692551963536.a n = A054146 n

end A054146

/-! ## A054146.P10050180249290287593

`A181331(n+1)-(A181294(n)+A003480(n))`
-/

namespace A054146.P10050180249290287593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181331 (n + 1) - (A181294 n + A003480 n)

end

end A054146.P10050180249290287593

namespace A054146

/-- `A181331(n+1)-(A181294(n)+A003480(n))` -/
def P10050180249290287593.Spec : Prop :=
  ∀ n, P10050180249290287593.a n = A054146 n

end A054146

/-! ## A054146.P17712316288909449268

`A181292(n+1)-(A181331(n+1)+A181292(n))`
-/

namespace A054146.P17712316288909449268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 (n + 1) - (A181331 (n + 1) + A181292 n)

end

end A054146.P17712316288909449268

namespace A054146

/-- `A181292(n+1)-(A181331(n+1)+A181292(n))` -/
def P17712316288909449268.Spec : Prop :=
  ∀ n, P17712316288909449268.a n = A054146 n

end A054146

/-! ## A054146.P2631848632832239486

`A181305(n+1)+A181296(n)-A181337(n+1)`
-/

namespace A054146.P2631848632832239486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181305 (n + 1) + (A181296 n - A181337 (n + 1))

end

end A054146.P2631848632832239486

namespace A054146

/-- `A181305(n+1)+A181296(n)-A181337(n+1)` -/
def P2631848632832239486.Spec : Prop :=
  ∀ n, P2631848632832239486.a n = A054146 n

end A054146

/-!
# A054147: a(n) = T(2n,n), array T as in A054144.

The programs for A054147, the canonical program `A054147.P4851139862118195362` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054147 has offset 0).

The definition of A054147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054147.P4851139862118195362

`8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=21, a(3)=108`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054147

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P4851139862118195362.Spec : Prop :=
  ∀ n, P4851139862118195362.a n = A054147 n

theorem P4851139862118195362.correct : P4851139862118195362.Spec := by
  intro n
  simp only [A054147]

end A054147

/-! ## A054147.P6380030828198861299

`3*A181292(n)`
-/

namespace A054147.P6380030828198861299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A181292 n

end

end A054147.P6380030828198861299

namespace A054147

/-- `3*A181292(n)` -/
def P6380030828198861299.Spec : Prop :=
  ∀ n, P6380030828198861299.a n = A054147 n

end A054147

/-! ## A054147.P7828874296222981332

`∑[3*A054146(n)]`
-/

namespace A054147.P7828874296222981332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054147.P7828874296222981332

namespace A054147

/-- `∑[3*A054146(n)]` -/
def P7828874296222981332.Spec : Prop :=
  ∀ n, P7828874296222981332.a n = A054147 n

end A054147

/-! ## A054147.P5414826506907404808

`∑[∑[3*A181331(n)]]`
-/

namespace A054147.P5414826506907404808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A181331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054147.P5414826506907404808

namespace A054147

/-- `∑[∑[3*A181331(n)]]` -/
def P5414826506907404808.Spec : Prop :=
  ∀ n, P5414826506907404808.a n = A054147 n

end A054147

/-! ## A054147.P3775830913990203843

`3*n/2*A003480(n)`
-/

namespace A054147.P3775830913990203843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / 2 * (A003480 n : ℚ))

end

end A054147.P3775830913990203843

namespace A054147

/-- `3*n/2*A003480(n)` -/
def P3775830913990203843.Spec : Prop :=
  ∀ n, P3775830913990203843.a n = (A054147 n : ℚ)

end A054147

/-! ## A054147.P16433674933270550345

`3*∑[∑[A181294(n)/2]]`
-/

namespace A054147.P16433674933270550345
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181294 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054147.P16433674933270550345

namespace A054147

/-- `3*∑[∑[A181294(n)/2]]` -/
def P16433674933270550345.Spec : Prop :=
  ∀ n, P16433674933270550345.a n = (A054147 n : ℚ)

end A054147

/-! ## A054147.P1405037113998933414

`3*n*A007068(2*n+1)/4`
-/

namespace A054147.P1405037113998933414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * ((A007068 (2 * n + 1) : ℚ) / 4))

end

end A054147.P1405037113998933414

namespace A054147

/-- `3*n*A007068(2*n+1)/4` -/
def P1405037113998933414.Spec : Prop :=
  ∀ n, P1405037113998933414.a n = (A054147 n : ℚ)

end A054147

/-! ## A054147.P8432935846475971342

`A054148(n)-A003480(n)`
-/

namespace A054147.P8432935846475971342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054148 n - A003480 n

end

end A054147.P8432935846475971342

namespace A054147

/-- `A054148(n)-A003480(n)` -/
def P8432935846475971342.Spec : Prop :=
  ∀ n, P8432935846475971342.a n = A054147 n

theorem P8432935846475971342.correct : P8432935846475971342.Spec := by
  intro n
  simp only [A054147, Nat.add_sub_cancel, A054147.P8432935846475971342.a, A054147.P4851139862118195362.a, A003480, A003480.P4618945227281260986.a, A054148, A054148.P7291168594695174351.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054147

/-! ## A054147.P5341803321261342968

`∑[A054146(n)+A054145(n)]`
-/

namespace A054147.P5341803321261342968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n + A054145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054147.P5341803321261342968

namespace A054147

/-- `∑[A054146(n)+A054145(n)]` -/
def P5341803321261342968.Spec : Prop :=
  ∀ n, P5341803321261342968.a n = A054147 n

end A054147

/-! ## A054147.P15755863612663157492

`A181292(n)+∑[A054145(n)]`
-/

namespace A054147.P15755863612663157492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054147.P15755863612663157492

namespace A054147

/-- `A181292(n)+∑[A054145(n)]` -/
def P15755863612663157492.Spec : Prop :=
  ∀ n, P15755863612663157492.a n = A054147 n

end A054147

/-! ## A054147.P4051448273516391131

`A003480(n)/2*A008585(n)`
-/

namespace A054147.P4051448273516391131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 n : ℚ) / 2 * (A008585 n : ℚ)

end

end A054147.P4051448273516391131

namespace A054147

/-- `A003480(n)/2*A008585(n)` -/
def P4051448273516391131.Spec : Prop :=
  ∀ n, P4051448273516391131.a n = (A054147 n : ℚ)

end A054147

/-! ## A054147.P17740633177552340531

`A007070(n)/4*A008585(n)`
-/

namespace A054147.P17740633177552340531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) / 4 * (A008585 n : ℚ)

end

end A054147.P17740633177552340531

namespace A054147

/-- `A007070(n)/4*A008585(n)` -/
def P17740633177552340531.Spec : Prop :=
  ∀ n, P17740633177552340531.a n = (A054147 n : ℚ)

end A054147

/-! ## A054147.P11131318443332222797

`A007070(n)/8*A008588(n)`
-/

namespace A054147.P11131318443332222797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) / 8 * (A008588 n : ℚ)

end

end A054147.P11131318443332222797

namespace A054147

/-- `A007070(n)/8*A008588(n)` -/
def P11131318443332222797.Spec : Prop :=
  ∀ n, P11131318443332222797.a n = (A054147 n : ℚ)

end A054147

/-!
# A054148: T(2n+1,n), array T as in A054144.

The programs for A054148, the canonical program `A054148.P7291168594695174351` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054148 has offset 0).

The definition of A054148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054148.P8873336643394811189

`(3*n+2)/2*A003480(n)`
-/

namespace A054148.P8873336643394811189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / 2 * (A003480 n : ℚ)

end

end A054148.P8873336643394811189

namespace A054148

/-- `(3*n+2)/2*A003480(n)` -/
def P8873336643394811189.Spec : Prop :=
  ∀ n, P8873336643394811189.a n = (A054148 n : ℚ)

end A054148

/-! ## A054148.P7291168594695174351

`A054147(n)+A003480(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054148

/-- `A054147(n)+A003480(n)` -/
def P7291168594695174351.Spec : Prop :=
  ∀ n, P7291168594695174351.a n = A054148 n

theorem P7291168594695174351.correct : P7291168594695174351.Spec := by
  intro n
  simp only [A054148]

end A054148

/-! ## A054148.P14448975848356800531

`A003480(n)+3*A181292(n)`
-/

namespace A054148.P14448975848356800531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n + 3 * A181292 n

end

end A054148.P14448975848356800531

namespace A054148

/-- `A003480(n)+3*A181292(n)` -/
def P14448975848356800531.Spec : Prop :=
  ∀ n, P14448975848356800531.a n = A054148 n

end A054148

/-! ## A054148.P18315934799979904002

`A003480(n)/2*A016789(n)`
-/

namespace A054148.P18315934799979904002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 n : ℚ) / 2 * (A016789 n : ℚ)

end

end A054148.P18315934799979904002

namespace A054148

/-- `A003480(n)/2*A016789(n)` -/
def P18315934799979904002.Spec : Prop :=
  ∀ n, P18315934799979904002.a n = (A054148 n : ℚ)

end A054148

/-! ## A054148.P7936221600784724621

`ceil(A007070(n)/4*A016789(n))`
-/

namespace A054148.P7936221600784724621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007070 n : ℚ) / 4 * (A016789 n : ℚ)⌉

end

end A054148.P7936221600784724621

namespace A054148

/-- `ceil(A007070(n)/4*A016789(n))` -/
def P7936221600784724621.Spec : Prop :=
  ∀ n, P7936221600784724621.a n = A054148 n

end A054148

/-! ## A054148.P8611323588202742344

`(A016777(n)+1)*A003480(n)/2`
-/

namespace A054148.P8611323588202742344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 n + 1 : ℚ) * ((A003480 n : ℚ) / 2)

end

end A054148.P8611323588202742344

namespace A054148

/-- `(A016777(n)+1)*A003480(n)/2` -/
def P8611323588202742344.Spec : Prop :=
  ∀ n, P8611323588202742344.a n = (A054148 n : ℚ)

end A054148

/-! ## A054148.P4958641600759225056

`A007070(n)/4*A016789(n)*A075117(A000217(n))`
-/

namespace A054148.P4958641600759225056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 n : ℚ) / 4 * (A016789 n : ℚ) * (A075117 (A000217 n).toNat : ℚ)

end

end A054148.P4958641600759225056

namespace A054148

/-- `A007070(n)/4*A016789(n)*A075117(A000217(n))` -/
def P4958641600759225056.Spec : Prop :=
  ∀ n, P4958641600759225056.a n = (A054148 n : ℚ)

end A054148

/-! ## A054148.P13222980612117523956

`A053199(∑[4*n])`
-/

namespace A054148.P13222980612117523956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053199 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054148.P13222980612117523956

namespace A054148

/-- `A053199(∑[4*n])` -/
def P13222980612117523956.Spec : Prop :=
  ∀ n, P13222980612117523956.a n = A054148 n

end A054148

/-! ## A054148.P291147053212387952

`A054144(A056220(n+1))`
-/

namespace A054148.P291147053212387952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 (A056220 (n + 1)).toNat

end

end A054148.P291147053212387952

namespace A054148

/-- `A054144(A056220(n+1))` -/
def P291147053212387952.Spec : Prop :=
  ∀ n, P291147053212387952.a n = A054148 n

end A054148

/-!
# A054149: T(2n-1,n), array T as in A054144.

The programs for A054149, the canonical program `A054149.P7132182223608226584` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054149 has offset 1).

The definition of A054149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054149.P11954948604351305123

`A054147(n+1)-A020727(n)`
-/

namespace A054149.P11954948604351305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054147 (n + 1) - A020727 n

end

end A054149.P11954948604351305123

namespace A054149

/-- `A054147(n+1)-A020727(n)` -/
def P11954948604351305123.Spec : Prop :=
  ∀ n, P11954948604351305123.a n = A054149 (n + 1)

end A054149

/-! ## A054149.P5982158587949352507

`A016777(n)/2*A020727(n)`
-/

namespace A054149.P5982158587949352507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 n : ℚ) / 2 * (A020727 n : ℚ)

end

end A054149.P5982158587949352507

namespace A054149

/-- `A016777(n)/2*A020727(n)` -/
def P5982158587949352507.Spec : Prop :=
  ∀ n, P5982158587949352507.a n = (A054149 (n + 1) : ℚ)

end A054149

/-! ## A054149.P17436434287780223631

`A054147(n+1)-A003480(n+1)`
-/

namespace A054149.P17436434287780223631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054147 (n + 1) - A003480 (n + 1)

end

end A054149.P17436434287780223631

namespace A054149

/-- `A054147(n+1)-A003480(n+1)` -/
def P17436434287780223631.Spec : Prop :=
  ∀ n, P17436434287780223631.a n = A054149 (n + 1)

end A054149

/-! ## A054149.P2897858230224950532

`A003480(n+1)/2*A016777(n)`
-/

namespace A054149.P2897858230224950532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 (n + 1) : ℚ) / 2 * (A016777 n : ℚ)

end

end A054149.P2897858230224950532

namespace A054149

/-- `A003480(n+1)/2*A016777(n)` -/
def P2897858230224950532.Spec : Prop :=
  ∀ n, P2897858230224950532.a n = (A054149 (n + 1) : ℚ)

end A054149

/-! ## A054149.P11703646026886716219

`A007070(n+1)/4*A016777(n)`
-/

namespace A054149.P11703646026886716219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007070 (n + 1) : ℚ) / 4 * (A016777 n : ℚ)

end

end A054149.P11703646026886716219

namespace A054149

/-- `A007070(n+1)/4*A016777(n)` -/
def P11703646026886716219.Spec : Prop :=
  ∀ n, P11703646026886716219.a n = (A054149 (n + 1) : ℚ)

end A054149

/-! ## A054149.P7594730961694089866

`A003480(n+1)/2*Δ[A000326(n)]`
-/

namespace A054149.P7594730961694089866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003480 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A054149.P7594730961694089866

namespace A054149

/-- `A003480(n+1)/2*Δ[A000326(n)]` -/
def P7594730961694089866.Spec : Prop :=
  ∀ n, P7594730961694089866.a n = (A054149 (n + 1) : ℚ)

end A054149

/-! ## A054149.P1827050331780803401

`A054148(n+1)-2*A003480(n+1)`
-/

namespace A054149.P1827050331780803401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054148 (n + 1) - 2 * A003480 (n + 1)

end

end A054149.P1827050331780803401

namespace A054149

/-- `A054148(n+1)-2*A003480(n+1)` -/
def P1827050331780803401.Spec : Prop :=
  ∀ n, P1827050331780803401.a n = A054149 (n + 1)

end A054149

/-! ## A054149.P6160846247887341081

`A181292(n+1)+n*A003480(n+1)`
-/

namespace A054149.P6160846247887341081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 (n + 1) + (n : ℤ) * A003480 (n + 1)

end

end A054149.P6160846247887341081

namespace A054149

/-- `A181292(n+1)+n*A003480(n+1)` -/
def P6160846247887341081.Spec : Prop :=
  ∀ n, P6160846247887341081.a n = A054149 (n + 1)

end A054149

/-! ## A054149.P18020703953294968492

`A054147(n+1)+A054147(n+1)-A054148(n+1)`
-/

namespace A054149.P18020703953294968492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054147 (n + 1) + (A054147 (n + 1) - A054148 (n + 1))

end

end A054149.P18020703953294968492

namespace A054149

/-- `A054147(n+1)+A054147(n+1)-A054148(n+1)` -/
def P18020703953294968492.Spec : Prop :=
  ∀ n, P18020703953294968492.a n = A054149 (n + 1)

end A054149

/-! ## A054149.P7132182223608226584

`8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=14, a(2)=84, a(3)=410`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054149

/-- `8*a(n-1)-20*a(n-2)+16*a(n-3)-4*a(n-4)` -/
def P7132182223608226584.Spec : Prop :=
  ∀ n, P7132182223608226584.a n = A054149 (n + 1)

theorem P7132182223608226584.correct : P7132182223608226584.Spec := by
  intro n
  simp only [A054149, Nat.add_sub_cancel]

end A054149

/-! ## A054149.P15862466308653756031

`2*A054147(n+1)-A054148(n+1)`
-/

namespace A054149.P15862466308653756031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054147 (n + 1) - A054148 (n + 1)

end

end A054149.P15862466308653756031

namespace A054149

/-- `2*A054147(n+1)-A054148(n+1)` -/
def P15862466308653756031.Spec : Prop :=
  ∀ n, P15862466308653756031.a n = A054149 (n + 1)

end A054149

/-!
# A054150: Number of positive integers <= 2^n of the form x^2 + 5*y^2.

The programs for A054150, there is no canonical definition to state claims against.
-/

/-! ## A054150.P10967848559345275252

`A024417(A292322(n))`
-/

namespace A054150.P10967848559345275252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A292322 n).toNat

end

end A054150.P10967848559345275252

/-! ## A054150.P9980268620010371380

`round(log(A018077(A018077(n))))`
-/

namespace A054150.P9980268620010371380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A018077 (A018077 n).toNat : ℝ))

end

end A054150.P9980268620010371380

/-! ## A054150.P3769624981141015800

`A226762(∑[A018487(n+1)])`
-/

namespace A054150.P3769624981141015800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054150.P3769624981141015800

/-! ## A054150.P6667245310296572814

`A226762(2*A018487(n+1))`
-/

namespace A054150.P6667245310296572814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (2 * A018487 (n + 1)).toNat

end

end A054150.P6667245310296572814

/-! ## A054150.P8368207243764745782

`A055086(A054392(n)+A000071(n+1))`
-/

namespace A054150.P8368207243764745782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A054392 n + A000071 (n + 1)).toNat

end

end A054150.P8368207243764745782

/-!
# A054151: Number of positive integers <= 2^n of form x^2 + 7 y^2.

The programs for A054151, there is no canonical definition to state claims against.
-/

/-! ## A054151.P4941375357262980099

`A280951(∑[record[A069345(n+1)]])`
-/

namespace A054151.P4941375357262980099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054151.P4941375357262980099

/-! ## A054151.P3521342958290529185

`A000196(A001471(n))+A000045(n+1)`
-/

namespace A054151.P3521342958290529185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001471 n).toNat + A000045 (n + 1)

end

end A054151.P3521342958290529185

/-! ## A054151.P1637406001869971775

`A003059(A001470(n))+A000071(n+1)`
-/

namespace A054151.P1637406001869971775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A001470 n).toNat + A000071 (n + 1)

end

end A054151.P1637406001869971775

/-! ## A054151.P13425190812131129676

`A000194(A052899(n))`
-/

namespace A054151.P13425190812131129676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A052899 n).toNat

end

end A054151.P13425190812131129676

/-! ## A054151.P6151457484241067974

`A102452(A026790(n))`
-/

namespace A054151.P6151457484241067974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102452 (A026790 n).toNat

end

end A054151.P6151457484241067974

/-!
# A054152: Number of positive integers <= 2^n of form x^2 + 8 y^2.

The programs for A054152, there is no canonical definition to state claims against.
-/

/-! ## A054152.P5072734919108879300

`A261104(∑[A318899(n+3)])`
-/

namespace A054152.P5072734919108879300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318899 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054152.P5072734919108879300

/-! ## A054152.P9713289467747856187

`A193832(A148315(n)+A025431(n))`
-/

namespace A054152.P9713289467747856187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A148315 n + A025431 n).toNat

end

end A054152.P9713289467747856187

/-! ## A054152.P16847790117123023618

`A000006(A361270(n)+A057513(n))`
-/

namespace A054152.P16847790117123023618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A361270 n + A057513 n).toNat

end

end A054152.P16847790117123023618

/-! ## A054152.P7178900671724205106

`A185283(A185292(n)+A148788(n))`
-/

namespace A054152.P7178900671724205106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A185292 n + A148788 n).toNat

end

end A054152.P7178900671724205106

/-! ## A054152.P2915306063622606561

`or(A129438(n), A185283(A148788(n)))`
-/

namespace A054152.P2915306063622606561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129438 n) (A185283 (A148788 n).toNat)

end

end A054152.P2915306063622606561

/-!
# A054153: Number of positive integers <= 2^n of form x^2 + 9 y^2.

The programs for A054153, there is no canonical definition to state claims against.
-/

/-! ## A054153.P9470200132724764243

`A010101(n+1)+1-A344610(2*n+1)`
-/

namespace A054153.P9470200132724764243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010101 (n + 1) + 1 - A344610 (2 * n + 1)

end

end A054153.P9470200132724764243

/-! ## A054153.P5975301904391176518

`A004526(n)+A003984(A322294(n))`
-/

namespace A054153.P5975301904391176518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + A003984 (A322294 n).toNat

end

end A054153.P5975301904391176518

/-! ## A054153.P2794276625283726679

`A322132(n)+A170980(A114298(n))`
-/

namespace A054153.P2794276625283726679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322132 n + A170980 (A114298 n).toNat

end

end A054153.P2794276625283726679

/-! ## A054153.P9264233799985202695

`xor(A304912(n), A352514(A304912(n)))`
-/

namespace A054153.P9264233799985202695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A304912 n) (A352514 (A304912 n).toNat)

end

end A054153.P9264233799985202695

/-! ## A054153.P1926737559413663635

`xor(A059966(n+1), A156729(A066062(n)))`
-/

namespace A054153.P1926737559413663635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059966 (n + 1)) (A156729 (A066062 n).toNat)

end

end A054153.P1926737559413663635

/-!
# A054154: Moebius transform of A001037 (starting at term 0).

The programs for A054154, the canonical program `A054154.P14939316349495369977` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054154 has offset 0).

The definition of A054154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054154.P14939316349495369977

`∑{d}[n+1, A001037(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054154

/-- `∑{d}[n+1, A001037(#-1)*A008683((n+1)/#)]` -/
def P14939316349495369977.Spec : Prop :=
  ∀ n, P14939316349495369977.a n = A054154 n

theorem P14939316349495369977.correct : P14939316349495369977.Spec := by
  intro n
  simp only [A054154]

end A054154

/-! ## A054154.P2858100774383408441

`∑{d}[n+1, A007427(#)*A054080((n+1)/#-1)]`
-/

namespace A054154.P2858100774383408441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054080 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054154.P2858100774383408441

namespace A054154

/-- `∑{d}[n+1, A007427(#)*A054080((n+1)/#-1)]` -/
def P2858100774383408441.Spec : Prop :=
  ∀ n, P2858100774383408441.a n = A054154 n

end A054154

/-! ## A054154.P5391667177568661595

`A072088(A059076(n))+A054160(n)`
-/

namespace A054154.P5391667177568661595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A059076 n).toNat + A054160 n

end

end A054154.P5391667177568661595

namespace A054154

/-- `A072088(A059076(n))+A054160(n)` -/
def P5391667177568661595.Spec : Prop :=
  ∀ n, P5391667177568661595.a n = A054154 n

end A054154

/-! ## A054154.P12523818983031854814

`A059076(A004917(n+1))+A054160(n)`
-/

namespace A054154.P12523818983031854814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (A004917 (n + 1)).toNat + A054160 n

end

end A054154.P12523818983031854814

namespace A054154

/-- `A059076(A004917(n+1))+A054160(n)` -/
def P12523818983031854814.Spec : Prop :=
  ∀ n, P12523818983031854814.a n = A054154 n

end A054154

/-! ## A054154.P2807503181948742377

`A135665(xor(7, A094039(n)))`
-/

namespace A054154.P2807503181948742377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (Int.xor 7 (A094039 n)).toNat

end

end A054154.P2807503181948742377

namespace A054154

/-- `A135665(xor(7, A094039(n)))` -/
def P2807503181948742377.Spec : Prop :=
  ∀ n, P2807503181948742377.a n = A054154 n

end A054154

/-!
# A054155: Inverse Moebius transform of A000029 (starting at term 0).

The programs for A054155, the canonical program `A054155.P7253950207557350807` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054155 has offset 0).

The definition of A054155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054155.P7253950207557350807

`∑{d}[n+1, A000029(#-1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054155

/-- `∑{d}[n+1, A000029(#-1)]` -/
def P7253950207557350807.Spec : Prop :=
  ∀ n, P7253950207557350807.a n = A054155 n

theorem P7253950207557350807.correct : P7253950207557350807.Spec := by
  intro n
  simp only [A054155]

end A054155

/-! ## A054155.P10430332965364799773

`∑{d}[n+1, A000005(#)*A054156((n+1)/#-1)]`
-/

namespace A054155.P10430332965364799773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054155.P10430332965364799773

namespace A054155

/-- `∑{d}[n+1, A000005(#)*A054156((n+1)/#-1)]` -/
def P10430332965364799773.Spec : Prop :=
  ∀ n, P10430332965364799773.a n = A054155 n

end A054155

/-! ## A054155.P8238266989251366073

`A054058(A004917(n+1))-A059076(n)`
-/

namespace A054155.P8238266989251366073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054058 (A004917 (n + 1)).toNat - A059076 n

end

end A054155.P8238266989251366073

namespace A054155

/-- `A054058(A004917(n+1))-A059076(n)` -/
def P8238266989251366073.Spec : Prop :=
  ∀ n, P8238266989251366073.a n = A054155 n

end A054155

/-! ## A054155.P14856791804574721571

`A001065(A082217(n+1))+A000029(n)`
-/

namespace A054155.P14856791804574721571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A082217 (n + 1)).toNat + A000029 n

end

end A054155.P14856791804574721571

namespace A054155

/-- `A001065(A082217(n+1))+A000029(n)` -/
def P14856791804574721571.Spec : Prop :=
  ∀ n, P14856791804574721571.a n = A054155 n

end A054155

/-!
# A054156: Moebius transform of A000029 (starting at term 0).

The programs for A054156, the canonical program `A054156.P13461329148621851711` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054156 has offset 0).

The definition of A054156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054156.P13461329148621851711

`∑{d}[n+1, A000029(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054156

/-- `∑{d}[n+1, A000029(#-1)*A008683((n+1)/#)]` -/
def P13461329148621851711.Spec : Prop :=
  ∀ n, P13461329148621851711.a n = A054156 n

theorem P13461329148621851711.correct : P13461329148621851711.Spec := by
  intro n
  simp only [A054156]

end A054156

/-! ## A054156.P8550885371786975017

`∑{d}[n+1, A007427(#)*A054155((n+1)/#-1)]`
-/

namespace A054156.P8550885371786975017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054156.P8550885371786975017

namespace A054156

/-- `∑{d}[n+1, A007427(#)*A054155((n+1)/#-1)]` -/
def P8550885371786975017.Spec : Prop :=
  ∀ n, P8550885371786975017.a n = A054156 n

end A054156

/-! ## A054156.P3814629819292185724

`A054079(A004917(n+1))-A059076(n)`
-/

namespace A054156.P3814629819292185724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054079 (A004917 (n + 1)).toNat - A059076 n

end

end A054156.P3814629819292185724

namespace A054156

/-- `A054079(A004917(n+1))-A059076(n)` -/
def P3814629819292185724.Spec : Prop :=
  ∀ n, P3814629819292185724.a n = A054156 n

end A054156

/-!
# A054157: Number of positive integers <= 2^n of form 2 x^2 + 7 y^2.

The programs for A054157, there is no canonical definition to state claims against.
-/

/-! ## A054157.P5895491860221912188

`A003056(A000081(n)*A361860(n+1))`
-/

namespace A054157.P5895491860221912188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000081 n * A361860 (n + 1)).toNat

end

end A054157.P5895491860221912188

/-! ## A054157.P16154760186929407222

`A277194(round(A279277(n+1)/A001612(n)))`
-/

namespace A054157.P16154760186929407222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (SequenceMachineLib.roundAway ((A279277 (n + 1) : ℚ) / (A001612 n : ℚ))).toNat

end

end A054157.P16154760186929407222

/-! ## A054157.P3609721173681771114

`A085141(A148540(n+1))`
-/

namespace A054157.P3609721173681771114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A148540 (n + 1)).toNat

end

end A054157.P3609721173681771114

/-! ## A054157.P6486881056163635050

`A085141(A148573(n+1))`
-/

namespace A054157.P6486881056163635050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A148573 (n + 1)).toNat

end

end A054157.P6486881056163635050

/-! ## A054157.P12980889986513073067

`A085141(A148574(n+1))`
-/

namespace A054157.P12980889986513073067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A148574 (n + 1)).toNat

end

end A054157.P12980889986513073067

/-!
# A054158: Inverse Moebius transform of A001371 (starting at term 0).

The programs for A054158, there is no canonical definition to state claims against.
-/

/-! ## A054158.P12732062017050647338

`∑{d}[n+1, A001371(#-1)]`
-/

namespace A054158.P12732062017050647338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001371 (d - 1)

end

end A054158.P12732062017050647338

/-! ## A054158.P13751811647641234405

`∑{d}[n+1, A000005(#)*A054160((n+1)/#-1)]`
-/

namespace A054158.P13751811647641234405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054160 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054158.P13751811647641234405

/-! ## A054158.P5307980016804750322

`∑{d}[n+1, A276550(A212342(#))]`
-/

namespace A054158.P5307980016804750322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A276550 (A212342 d).toNat

end

end A054158.P5307980016804750322

/-! ## A054158.P15208522628499444747

`A054080(n)-A072088(A059076(n))`
-/

namespace A054158.P15208522628499444747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054080 n - A072088 (A059076 n).toNat

end

end A054158.P15208522628499444747

/-!
# A054159: Number of positive integers <= 2^n of form 2 x^2 + 9 y^2.

The programs for A054159, there is no canonical definition to state claims against.
-/

/-! ## A054159.P3868264369840635519

`A000196(A295873(n)-(-1)^∑{e}[n+1, #])`
-/

namespace A054159.P3868264369840635519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A295873 n - (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A054159.P3868264369840635519

/-! ## A054159.P14628627570336996615

`A003056(A000108(n)-A006505(n))`
-/

namespace A054159.P14628627570336996615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000108 n - A006505 n).toNat

end

end A054159.P14628627570336996615

/-! ## A054159.P953089121179786504

`A000196(A005505(n)-A011782(n))`
-/

namespace A054159.P953089121179786504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005505 n - A011782 n).toNat

end

end A054159.P953089121179786504

/-! ## A054159.P10784304381210127871

`A003056(A000108(n))-A014374(n)`
-/

namespace A054159.P10784304381210127871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000108 n).toNat - A014374 n

end

end A054159.P10784304381210127871

/-! ## A054159.P11357289551398340985

`A003056(A000108(n))-A185336(n)`
-/

namespace A054159.P11357289551398340985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000108 n).toNat - A185336 n

end

end A054159.P11357289551398340985

/-!
# A054160: Moebius transform of A001371 (starting at term 0).

The programs for A054160, there is no canonical definition to state claims against.
-/

/-! ## A054160.P15049859359254131731

`∑{d}[n+1, A001371(#-1)*A008683((n+1)/#)]`
-/

namespace A054160.P15049859359254131731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001371 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054160.P15049859359254131731

/-! ## A054160.P14843593427022772954

`∑{d}[n+1, A007427(#)*A054158((n+1)/#-1)]`
-/

namespace A054160.P14843593427022772954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054160.P14843593427022772954

/-! ## A054160.P128085343497863510

`A054154(n)-A072088(A059076(n))`
-/

namespace A054160.P128085343497863510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054154 n - A072088 (A059076 n).toNat

end

end A054160.P128085343497863510

/-! ## A054160.P13990589125629749561

`A054154(A004917(n+1))-A059076(n)`
-/

namespace A054160.P13990589125629749561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054154 (A004917 (n + 1)).toNat - A059076 n

end

end A054160.P13990589125629749561

/-! ## A054160.P3531474505157857664

`A054154(A004917(n+1))+A054158(n)-A054080(n)`
-/

namespace A054160.P3531474505157857664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054154 (A004917 (n + 1)).toNat + (A054158 n - A054080 n)

end

end A054160.P3531474505157857664

/-!
# A054161: Number of positive integers <= 2^n of form 3 x^2 + 3 y^2.

The programs for A054161, there is no canonical definition to state claims against.
-/

/-! ## A054161.P17607001338874357153

`∑[A135662(A337067(n))]`
-/

namespace A054161.P17607001338874357153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A337067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054161.P17607001338874357153

/-! ## A054161.P4621382930204609343

`A261104(A299167(n)-1)`
-/

namespace A054161.P4621382930204609343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A299167 n - 1).toNat

end

end A054161.P4621382930204609343

/-! ## A054161.P7803164186940432857

`A003056(A090826(n-char[1]))`
-/

namespace A054161.P7803164186940432857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A090826 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A054161.P7803164186940432857

/-! ## A054161.P7745298798383113210

`A184415(a(n-1)+1)-A002264(n)` with `a(0)=0, a(1)=0`
-/

namespace A054161.P7745298798383113210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A184415 (a (n - 1) + 1).toNat - A002264 n

end

end A054161.P7745298798383113210

/-!
# A054162: Number of positive integers <= 2^n of form 3 x^2 + 5 y^2.

The programs for A054162, there is no canonical definition to state claims against.
-/

/-! ## A054162.P5650106992238044753

`A057354(A113863(n+1))+A057354(n)`
-/

namespace A054162.P5650106992238044753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A113863 (n + 1)).toNat + A057354 n

end

end A054162.P5650106992238044753

/-! ## A054162.P9024645419729211189

`A335235(A169986(n))-A022865(n+1)`
-/

namespace A054162.P9024645419729211189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A169986 n).toNat - A022865 (n + 1)

end

end A054162.P9024645419729211189

/-! ## A054162.P13314523272643328061

`A072292(C(A246655(n+1), A000009(n)))`
-/

namespace A054162.P13314523272643328061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (Nat.choose (A246655 (n + 1)).toNat (A000009 n).toNat)

end

end A054162.P13314523272643328061

/-!
# A054163: Number of positive integers <= 2^n of form 3 x^2 + 6 y^2.

The programs for A054163, there is no canonical definition to state claims against.
-/

/-! ## A054163.P15298978688008821632

`A108296(n)-A103451(A339017(n))`
-/

namespace A054163.P15298978688008821632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108296 n - A103451 (A339017 n).toNat

end

end A054163.P15298978688008821632

/-! ## A054163.P5280728601657406622

`A108296(n)-A084681(A324415(n+1)+1)`
-/

namespace A054163.P5280728601657406622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108296 n - A084681 (A324415 (n + 1) + 1).toNat

end

end A054163.P5280728601657406622

/-! ## A054163.P8771410252943406344

`floor(record[A255122(n+1)/5])`
-/

namespace A054163.P8771410252943406344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255122 (n + 1) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A054163.P8771410252943406344

/-! ## A054163.P2747606700614276246

`ceil(log(A079969(A079969(n))))`
-/

namespace A054163.P2747606700614276246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A079969 (A079969 n).toNat : ℝ)⌉

end

end A054163.P2747606700614276246

/-! ## A054163.P3316294067785396695

`A172471(A148770(n)-A000108(n))`
-/

namespace A054163.P3316294067785396695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A148770 n - A000108 n).toNat

end

end A054163.P3316294067785396695

/-!
# A054164: Number of positive integers <= 2^n of form 3 x^2 + 7 y^2.

The programs for A054164, there is no canonical definition to state claims against.
-/

/-! ## A054164.P17959406915261831569

`A098357(A002220(n+2))`
-/

namespace A054164.P17959406915261831569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098357 (A002220 (n + 2)).toNat

end

end A054164.P17959406915261831569

/-! ## A054164.P17886502125442289581

`A000196(∑[xor(1, A054392(n))])`
-/

namespace A054164.P17886502125442289581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A054392 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054164.P17886502125442289581

/-! ## A054164.P13618093009119711701

`A094683(floor(3^(n-1))+1)-A165045(2*(n+1))`
-/

namespace A054164.P13618093009119711701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat - A165045 (2 * (n + 1))

end

end A054164.P13618093009119711701

/-! ## A054164.P12354280833553276407

`A003056(A135310(n)-A124540(n))`
-/

namespace A054164.P12354280833553276407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A135310 n - A124540 n).toNat

end

end A054164.P12354280833553276407

/-! ## A054164.P12919230424804718659

`A175427(A352079(n))`
-/

namespace A054164.P12919230424804718659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A352079 n).toNat

end

end A054164.P12919230424804718659

/-!
# A054165: Number of positive integers <= 2^n of form 3 x^2 + 8 y^2.

The programs for A054165, there is no canonical definition to state claims against.
-/

/-! ## A054165.P5383821821372298538

`A036378(n)-A336569(A292258(n+1))`
-/

namespace A054165.P5383821821372298538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 n - A336569 (A292258 (n + 1)).toNat

end

end A054165.P5383821821372298538

/-! ## A054165.P6423622904582851005

`A162145(n+1)-A355912(A087980(n+1))`
-/

namespace A054165.P6423622904582851005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (n + 1) - A355912 (A087980 (n + 1)).toNat

end

end A054165.P6423622904582851005

/-! ## A054165.P16475734080846336744

`floor(A275491(n+3)/12)`
-/

namespace A054165.P16475734080846336744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275491 (n + 3) : ℚ) / 12⌋

end

end A054165.P16475734080846336744

/-! ## A054165.P18202009631224897055

`A339186(A148667(n))`
-/

namespace A054165.P18202009631224897055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A148667 n).toNat

end

end A054165.P18202009631224897055

/-! ## A054165.P3706384476710971987

`A135662(Δ[A094039(n)])`
-/

namespace A054165.P3706384476710971987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (f1 (n + 1) - f1 n).toNat

end

end A054165.P3706384476710971987

/-!
# A054166: Number of positive integers <= 2^n of form 3 x^2 + 9 y^2.

The programs for A054166, there is no canonical definition to state claims against.
-/

/-! ## A054166.P6406944470297808274

`A002024(A148043(n))-A055642(n)`
-/

namespace A054166.P6406944470297808274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A148043 n).toNat - A055642 n

end

end A054166.P6406944470297808274

/-! ## A054166.P16917730271827923257

`A057358((A001037(n+1)/(A254667(n+1)-n))^A333807(n+1))`
-/

namespace A054166.P16917730271827923257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (SequenceMachineLib.roundAway (((A001037 (n + 1) : ℚ) / (A254667 (n + 1) - (n : ℤ) : ℚ)) ^ (A333807 (n + 1) : ℤ))).toNat

end

end A054166.P16917730271827923257

/-! ## A054166.P3081312199144027299

`A024327(A087432(n))`
-/

namespace A054166.P3081312199144027299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A087432 n).toNat

end

end A054166.P3081312199144027299

/-! ## A054166.P17120947883238522622

`A119557(A060089(n))`
-/

namespace A054166.P17120947883238522622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119557 (A060089 n).toNat

end

end A054166.P17120947883238522622

/-! ## A054166.P7717870293414100749

`A085141(A148567(n))`
-/

namespace A054166.P7717870293414100749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A148567 n).toNat

end

end A054166.P7717870293414100749

/-!
# A054167: Number of positive integers <= 2^n of form 3 x^2 + 10 y^2.

The programs for A054167, there is no canonical definition to state claims against.
-/

/-! ## A054167.P7014500632312448370

`A003056(A219232(n)-A238346(2*n+1))`
-/

namespace A054167.P7014500632312448370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A219232 n - A238346 (2 * n + 1)).toNat

end

end A054167.P7014500632312448370

/-! ## A054167.P4873615048365873746

`A079500(n)-A001030(A273536(3*(n+1)))`
-/

namespace A054167.P4873615048365873746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n - A001030 (A273536 (3 * (n + 1))).toNat

end

end A054167.P4873615048365873746

/-! ## A054167.P10689804311447282039

`A024327(or(A029862(n), A135851(3*n+2)))`
-/

namespace A054167.P10689804311447282039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (Int.lor (A029862 n) (A135851 (3 * n + 2))).toNat

end

end A054167.P10689804311447282039

/-! ## A054167.P1646591577204307408

`A353086(A000024(n))`
-/

namespace A054167.P1646591577204307408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A000024 n).toNat

end

end A054167.P1646591577204307408

/-! ## A054167.P16817649668782807963

`A352426(A107250(n))`
-/

namespace A054167.P16817649668782807963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352426 (A107250 n).toNat

end

end A054167.P16817649668782807963

/-!
# A054168: Inverse Moebius transform of A000013 (starting at term 0).

The programs for A054168, the canonical program `A054168.P5904931330468095639` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054168 has offset 0).

The definition of A054168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054168.P5904931330468095639

`∑{d}[n+1, A000013(#-1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054168

/-- `∑{d}[n+1, A000013(#-1)]` -/
def P5904931330468095639.Spec : Prop :=
  ∀ n, P5904931330468095639.a n = A054168 n

theorem P5904931330468095639.correct : P5904931330468095639.Spec := by
  intro n
  simp only [A054168]

end A054168

/-! ## A054168.P4737719111148870732

`∑{d}[n+1, A000005(#)*A054170((n+1)/#-1)]`
-/

namespace A054168.P4737719111148870732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054168.P4737719111148870732

namespace A054168

/-- `∑{d}[n+1, A000005(#)*A054170((n+1)/#-1)]` -/
def P4737719111148870732.Spec : Prop :=
  ∀ n, P4737719111148870732.a n = A054168 n

end A054168

/-! ## A054168.P6278342836502603231

`A316112(A000040(2*(n+1)))+A000045(n)`
-/

namespace A054168.P6278342836502603231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A000040 (2 * (n + 1))).toNat + A000045 n

end

end A054168.P6278342836502603231

namespace A054168

/-- `A316112(A000040(2*(n+1)))+A000045(n)` -/
def P6278342836502603231.Spec : Prop :=
  ∀ n, P6278342836502603231.a n = A054168 n

end A054168

/-! ## A054168.P14376811777362184696

`A316112(A029743(2*n+1))+A000045(n)`
-/

namespace A054168.P14376811777362184696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316112 (A029743 (2 * n + 1)).toNat + A000045 n

end

end A054168.P14376811777362184696

namespace A054168

/-- `A316112(A029743(2*n+1))+A000045(n)` -/
def P14376811777362184696.Spec : Prop :=
  ∀ n, P14376811777362184696.a n = A054168 n

end A054168

/-!
# A054169: Number of positive integers <= 2^n of form 4 x^2 + 5 y^2.

The programs for A054169, there is no canonical definition to state claims against.
-/

/-! ## A054169.P15464259479789055894

`A000194(∑[∏[(n-1)/a(n-1)+1]]+1)-2` with `a(0)=2`
-/

namespace A054169.P15464259479789055894
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) / f2 (n - 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - 2

end

end A054169.P15464259479789055894

/-! ## A054169.P1951025087859022488

`A052146(A245176(n))`
-/

namespace A054169.P1951025087859022488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A245176 n).toNat

end

end A054169.P1951025087859022488

/-! ## A054169.P13726875797076106965

`A052146(∑[A000085(n)])`
-/

namespace A054169.P13726875797076106965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054169.P13726875797076106965

/-! ## A054169.P200306204179271

`A052146(∑[A007578(n)])`
-/

namespace A054169.P200306204179271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054169.P200306204179271

/-! ## A054169.P708911862573638042

`A052146(∑[A229068(n)])`
-/

namespace A054169.P708911862573638042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054169.P708911862573638042

/-!
# A054170: Moebius transform of A000013 (starting at term 0).

The programs for A054170, the canonical program `A054170.P15719622128540370698` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054170 has offset 0).

The definition of A054170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054170.P15719622128540370698

`∑{d}[n+1, A000013(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054170

/-- `∑{d}[n+1, A000013(#-1)*A008683((n+1)/#)]` -/
def P15719622128540370698.Spec : Prop :=
  ∀ n, P15719622128540370698.a n = A054170 n

theorem P15719622128540370698.correct : P15719622128540370698.Spec := by
  intro n
  simp only [A054170]

end A054170

/-! ## A054170.P13606894199932437979

`∑{d}[n+1, A007427(#)*A054168((n+1)/#-1)]`
-/

namespace A054170.P13606894199932437979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054168 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054170.P13606894199932437979

namespace A054170

/-- `∑{d}[n+1, A007427(#)*A054168((n+1)/#-1)]` -/
def P13606894199932437979.Spec : Prop :=
  ∀ n, P13606894199932437979.a n = A054170 n

end A054170

/-! ## A054170.P10076524525453870896

`A056476(A187829(n+1))+2*A059053(n)`
-/

namespace A054170.P10076524525453870896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056476 (A187829 (n + 1)).toNat + 2 * A059053 n

end

end A054170.P10076524525453870896

namespace A054170

/-- `A056476(A187829(n+1))+2*A059053(n)` -/
def P10076524525453870896.Spec : Prop :=
  ∀ n, P10076524525453870896.a n = A054170 n

end A054170

/-! ## A054170.P8447109559065293216

`A210671(n)-A046051(n+1)`
-/

namespace A054170.P8447109559065293216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210671 n - A046051 (n + 1)

end

end A054170.P8447109559065293216

namespace A054170

/-- `A210671(n)-A046051(n+1)` -/
def P8447109559065293216.Spec : Prop :=
  ∀ n, P8447109559065293216.a n = A054170 n

end A054170

/-!
# A054171: Number of positive integers <= 2^n of form 4 x^2 + 7 y^2.

The programs for A054171, there is no canonical definition to state claims against.
-/

/-! ## A054171.P8935818808842458466

`floor(floor(A213594(A175161(n))/3)/3)`
-/

namespace A054171.P8935818808842458466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A213594 (A175161 n).toNat : ℚ) / 3⌋ : ℚ) / 3⌋

end

end A054171.P8935818808842458466

/-! ## A054171.P1938836919064239157

`A055086(A077003(n+2))-A078391(A008611(n))`
-/

namespace A054171.P1938836919064239157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A077003 (n + 2)).toNat - A078391 (A008611 n).toNat

end

end A054171.P1938836919064239157

/-! ## A054171.P9457085937010843002

`round(sqrt(A319565(n+1)+1))-1`
-/

namespace A054171.P9457085937010843002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A319565 (n + 1) + 1 : ℝ)) - 1

end

end A054171.P9457085937010843002

/-! ## A054171.P3083085292837543072

`A000194(A247210(n))`
-/

namespace A054171.P3083085292837543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A247210 n).toNat

end

end A054171.P3083085292837543072

/-! ## A054171.P6110920488240300047

`A259361(A319565(n+1))`
-/

namespace A054171.P6110920488240300047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A319565 (n + 1)).toNat

end

end A054171.P6110920488240300047

/-!
# A054172: Inverse Moebius transform of A000048 (starting at term 0).

The programs for A054172, the canonical program `A054172.P6329967147542046183` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054172 has offset 0).

The definition of A054172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054172.P6329967147542046183

`∑{d}[n+1, A000048(#-1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054172

/-- `∑{d}[n+1, A000048(#-1)]` -/
def P6329967147542046183.Spec : Prop :=
  ∀ n, P6329967147542046183.a n = A054172 n

theorem P6329967147542046183.correct : P6329967147542046183.Spec := by
  intro n
  simp only [A054172]

end A054172

/-! ## A054172.P14511530273539920501

`∑{d}[n+1, A000005(#)*A054174((n+1)/#-1)]`
-/

namespace A054172.P14511530273539920501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054174 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054172.P14511530273539920501

namespace A054172

/-- `∑{d}[n+1, A000005(#)*A054174((n+1)/#-1)]` -/
def P14511530273539920501.Spec : Prop :=
  ∀ n, P14511530273539920501.a n = A054172 n

end A054172

/-! ## A054172.P13186062275762548623

`∑{d}[n+1, A053633(A152947(#))]`
-/

namespace A054172.P13186062275762548623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053633 (A152947 d).toNat

end

end A054172.P13186062275762548623

namespace A054172

/-- `∑{d}[n+1, A053633(A152947(#))]` -/
def P13186062275762548623.Spec : Prop :=
  ∀ n, P13186062275762548623.a n = A054172 n

end A054172

/-! ## A054172.P8989853454833713053

`∑{d}[n+1, A053633(A184218(#))]`
-/

namespace A054172.P8989853454833713053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053633 (A184218 d).toNat

end

end A054172.P8989853454833713053

namespace A054172

/-- `∑{d}[n+1, A053633(A184218(#))]` -/
def P8989853454833713053.Spec : Prop :=
  ∀ n, P8989853454833713053.a n = A054172 n

end A054172

/-!
# A054173: Number of positive integers <= 2^n of form 4 x^2 + 9 y^2.

The programs for A054173, there is no canonical definition to state claims against.
-/

/-! ## A054173.P16756227795685645192

`A259361(A148300(n))+A004198(n)`
-/

namespace A054173.P16756227795685645192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A148300 n).toNat + A004198 n

end

end A054173.P16756227795685645192

/-! ## A054173.P1323507232178825772

`A001899(n)+A000196(A061566(n+1))`
-/

namespace A054173.P1323507232178825772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 n + A000196 (A061566 (n + 1)).toNat

end

end A054173.P1323507232178825772

/-! ## A054173.P4960014043358387145

`A349219(A181665(n)+A079694(2*n))`
-/

namespace A054173.P4960014043358387145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349219 (A181665 n + A079694 (2 * n)).toNat

end

end A054173.P4960014043358387145

/-! ## A054173.P12061449252531493345

`A178830(A117719(n))`
-/

namespace A054173.P12061449252531493345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178830 (A117719 n).toNat

end

end A054173.P12061449252531493345

/-! ## A054173.P16168354613736638143

`A394303(A135339(n+1))`
-/

namespace A054173.P16168354613736638143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 (A135339 (n + 1)).toNat

end

end A054173.P16168354613736638143

/-!
# A054174: Moebius transform of A000048 (starting at term 0).

The programs for A054174, the canonical program `A054174.P10145721077152883775` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054174 has offset 0).

The definition of A054174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054174.P10145721077152883775

`∑{d}[n+1, A000048(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054174

/-- `∑{d}[n+1, A000048(#-1)*A008683((n+1)/#)]` -/
def P10145721077152883775.Spec : Prop :=
  ∀ n, P10145721077152883775.a n = A054174 n

theorem P10145721077152883775.correct : P10145721077152883775.Spec := by
  intro n
  simp only [A054174]

end A054174

/-! ## A054174.P8307787408390573261

`∑{d}[n+1, A007427(#)*A054172((n+1)/#-1)]`
-/

namespace A054174.P8307787408390573261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054172 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054174.P8307787408390573261

namespace A054174

/-- `∑{d}[n+1, A007427(#)*A054172((n+1)/#-1)]` -/
def P8307787408390573261.Spec : Prop :=
  ∀ n, P8307787408390573261.a n = A054174 n

end A054174

/-! ## A054174.P16181117609974855185

`A000048(n)-A126043(A292381(n+2))`
-/

namespace A054174.P16181117609974855185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A126043 (A292381 (n + 2)).toNat

end

end A054174.P16181117609974855185

namespace A054174

/-- `A000048(n)-A126043(A292381(n+2))` -/
def P16181117609974855185.Spec : Prop :=
  ∀ n, P16181117609974855185.a n = A054174 n

end A054174

/-! ## A054174.P4241227879385584093

`A000048(n)-A071625(A213245(n+3))`
-/

namespace A054174.P4241227879385584093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A071625 (A213245 (n + 3)).toNat

end

end A054174.P4241227879385584093

namespace A054174

/-- `A000048(n)-A071625(A213245(n+3))` -/
def P4241227879385584093.Spec : Prop :=
  ∀ n, P4241227879385584093.a n = A054174 n

end A054174

/-! ## A054174.P7614444888418855929

`A000016(n)-A001221(A054539(2*n+3))`
-/

namespace A054174.P7614444888418855929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n - A001221 (A054539 (2 * n + 3)).toNat

end

end A054174.P7614444888418855929

namespace A054174

/-- `A000016(n)-A001221(A054539(2*n+3))` -/
def P7614444888418855929.Spec : Prop :=
  ∀ n, P7614444888418855929.a n = A054174 n

end A054174

/-!
# A054175: Number of positive integers <= 2^n of form 5 x^2 + 5 y^2.

The programs for A054175, there is no canonical definition to state claims against.
-/

/-! ## A054175.P14813784561970974860

`A055086(A292790(n+1))-1`
-/

namespace A054175.P14813784561970974860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A292790 (n + 1)).toNat - 1

end

end A054175.P14813784561970974860

/-! ## A054175.P8740891361850266259

`floor(A183138(A066425(n+1)+1)/(n+1))`
-/

namespace A054175.P8740891361850266259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A183138 (A066425 (n + 1) + 1).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A054175.P8740891361850266259

/-! ## A054175.P879304397025493476

`A000073(n)-A091225(A014138(n))`
-/

namespace A054175.P879304397025493476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n - A091225 (A014138 n).toNat

end

end A054175.P879304397025493476

/-! ## A054175.P15589693386234931203

`A000073(n)-A174875(A141459(n))`
-/

namespace A054175.P15589693386234931203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n - A174875 (A141459 n).toNat

end

end A054175.P15589693386234931203

/-! ## A054175.P4587019242491437170

`A000073(n)-A188014(A133124(n))`
-/

namespace A054175.P4587019242491437170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n - A188014 (A133124 n).toNat

end

end A054175.P4587019242491437170

/-!
# A054176: Number of positive integers <= 2^n of form 5 x^2 + 6 y^2.

The programs for A054176, there is no canonical definition to state claims against.
-/

/-! ## A054176.P16566834044495433383

`A285495(A007716(n))+A275439(n)`
-/

namespace A054176.P16566834044495433383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285495 (A007716 n).toNat + A275439 n

end

end A054176.P16566834044495433383

/-! ## A054176.P3015085626814127641

`A353495(A045900(n))+A275439(n)`
-/

namespace A054176.P3015085626814127641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A045900 n).toNat + A275439 n

end

end A054176.P3015085626814127641

/-! ## A054176.P8941054854224257722

`A000194(A240610(n)-A060632(n))`
-/

namespace A054176.P8941054854224257722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A240610 n - A060632 n).toNat

end

end A054176.P8941054854224257722

/-! ## A054176.P18403862181694466027

`A000194(A240610(n)-A089408(n))`
-/

namespace A054176.P18403862181694466027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A240610 n - A089408 n).toNat

end

end A054176.P18403862181694466027

/-! ## A054176.P3449531276443043648

`A238859(n)-A321401(A000008(n))`
-/

namespace A054176.P3449531276443043648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238859 n - A321401 (A000008 n).toNat

end

end A054176.P3449531276443043648

/-!
# A054177: Number of positive integers <= 2^n of form 5 x^2 + 7 y^2.

The programs for A054177, there is no canonical definition to state claims against.
-/

/-! ## A054177.P2485763660073346858

`A121856(A214198(n)/2)`
-/

namespace A054177.P2485763660073346858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (SequenceMachineLib.roundAway ((A214198 n : ℚ) / 2)).toNat

end

end A054177.P2485763660073346858

/-! ## A054177.P10107531165622813276

`A052146(or(n, A052854(n)))`
-/

namespace A054177.P10107531165622813276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (Int.lor (n : ℤ) (A052854 n)).toNat

end

end A054177.P10107531165622813276

/-! ## A054177.P282159719840634036

`A052146(A274706(n)+A052854(n))`
-/

namespace A054177.P282159719840634036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A274706 n + A052854 n).toNat

end

end A054177.P282159719840634036

/-! ## A054177.P4520776911241158016

`A123578(A036719(n)-A108350(n))`
-/

namespace A054177.P4520776911241158016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A036719 n - A108350 n).toNat

end

end A054177.P4520776911241158016

/-! ## A054177.P12653895475495999597

`A123578(A036719(n)-A331571(n))`
-/

namespace A054177.P12653895475495999597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A036719 n - A331571 n).toNat

end

end A054177.P12653895475495999597

/-!
# A054178: Number of positive integers <= 2^n of form 5 x^2 + 8 y^2.

The programs for A054178, there is no canonical definition to state claims against.
-/

/-! ## A054178.P14045720516657240491

`A003056(A148083(n)-A137735(n))`
-/

namespace A054178.P14045720516657240491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148083 n - A137735 n).toNat

end

end A054178.P14045720516657240491

/-! ## A054178.P16386625480140412221

`A172471(A148083(n)-A016116(n))`
-/

namespace A054178.P16386625480140412221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A148083 n - A016116 n).toNat

end

end A054178.P16386625480140412221

/-! ## A054178.P15467894110222135098

`A003056(A148083(n)-A117365(n+1))`
-/

namespace A054178.P15467894110222135098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148083 n - A117365 (n + 1)).toNat

end

end A054178.P15467894110222135098

/-! ## A054178.P14276312180616762184

`A227309(n)-A030213(A025527(n+1))`
-/

namespace A054178.P14276312180616762184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227309 n - A030213 (A025527 (n + 1)).toNat

end

end A054178.P14276312180616762184

/-! ## A054178.P8578749559044025696

`A003056(A148083(n)-A343026(n+1))`
-/

namespace A054178.P8578749559044025696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148083 n - A343026 (n + 1)).toNat

end

end A054178.P8578749559044025696

/-!
# A054179: Number of positive integers <= 2^n of form 5 x^2 + 9 y^2.

The programs for A054179, there is no canonical definition to state claims against.
-/

/-! ## A054179.P525802532198459722

`A052146(A060776(n+1)+and(1, n))`
-/

namespace A054179.P525802532198459722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A060776 (n + 1) + (Nat.land 1 n : ℤ)).toNat

end

end A054179.P525802532198459722

/-! ## A054179.P11113578587500193668

`A052146(A060776(n+1)+A005873(n))`
-/

namespace A054179.P11113578587500193668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A060776 (n + 1) + A005873 n).toNat

end

end A054179.P11113578587500193668

/-! ## A054179.P11503118435910715355

`A052146(A293638(n)+A060776(n+1))`
-/

namespace A054179.P11503118435910715355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A293638 n + A060776 (n + 1)).toNat

end

end A054179.P11503118435910715355

/-! ## A054179.P14154761394207756743

`A052146(A295889(n)+A060776(n+1))`
-/

namespace A054179.P14154761394207756743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A295889 n + A060776 (n + 1)).toNat

end

end A054179.P14154761394207756743

/-! ## A054179.P2252886463868728339

`A003056(A200743(n+1))-A136522(n+1)`
-/

namespace A054179.P2252886463868728339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A200743 (n + 1)).toNat - A136522 (n + 1)

end

end A054179.P2252886463868728339

/-!
# A054180: Number of positive integers <= 2^n of form 5 x^2 + 10 y^2.

The programs for A054180, there is no canonical definition to state claims against.
-/

/-! ## A054180.P16688789770332715901

`A172471(A114852(2*n+3))%A303980(n)`
-/

namespace A054180.P16688789770332715901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A114852 (2 * n + 3)).toNat) (A303980 n)

end

end A054180.P16688789770332715901

/-! ## A054180.P17870474536426720258

`A259361(Δ[A005251(n)²])`
-/

namespace A054180.P17870474536426720258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (f1 (n + 1) - f1 n).toNat

end

end A054180.P17870474536426720258

/-! ## A054180.P2214362115076882239

`A033810(A101488(n+1))-2`
-/

namespace A054180.P2214362115076882239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A101488 (n + 1)).toNat - 2

end

end A054180.P2214362115076882239

/-! ## A054180.P14603058697403190214

`A259361(Δ[A114775(4*n)²])`
-/

namespace A054180.P14603058697403190214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (f1 (n + 1) - f1 n).toNat

end

end A054180.P14603058697403190214

/-! ## A054180.P16654547378456658643

`A003056(and(-2, A025272(n+1)))`
-/

namespace A054180.P16654547378456658643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.land (-2) (A025272 (n + 1))).toNat

end

end A054180.P16654547378456658643

/-!
# A054181: Inverse Moebius transform of A000011 (starting at term 0).

The programs for A054181, the canonical program `A054181.P17075192393642453761` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054181 has offset 0).

The definition of A054181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054181.P17075192393642453761

`∑{d}[n+1, A000011(#-1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A054181

/-- `∑{d}[n+1, A000011(#-1)]` -/
def P17075192393642453761.Spec : Prop :=
  ∀ n, P17075192393642453761.a n = A054181 n

theorem P17075192393642453761.correct : P17075192393642453761.Spec := by
  intro n
  simp only [A054181]

end A054181

/-! ## A054181.P9369749003078334458

`∑{d}[n+1, A000005(#)*A054183((n+1)/#-1)]`
-/

namespace A054181.P9369749003078334458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A054183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054181.P9369749003078334458

namespace A054181

/-- `∑{d}[n+1, A000005(#)*A054183((n+1)/#-1)]` -/
def P9369749003078334458.Spec : Prop :=
  ∀ n, P9369749003078334458.a n = A054181 n

end A054181

/-! ## A054181.P8236519061936013080

`A332013(A099651(n+4))+A004694(n)`
-/

namespace A054181.P8236519061936013080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332013 (A099651 (n + 4)).toNat + A004694 n

end

end A054181.P8236519061936013080

namespace A054181

/-- `A332013(A099651(n+4))+A004694(n)` -/
def P8236519061936013080.Spec : Prop :=
  ∀ n, P8236519061936013080.a n = A054181 n

end A054181

/-! ## A054181.P6960436463607560287

`lt[A334031(A044051(n+1)), A389924(n+1)]`
-/

namespace A054181.P6960436463607560287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (A044051 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054181.P6960436463607560287

namespace A054181

/-- `lt[A334031(A044051(n+1)), A389924(n+1)]` -/
def P6960436463607560287.Spec : Prop :=
  ∀ n, (P6960436463607560287.a n : ℤ) = A054181 n

end A054181

/-!
# A054182: Number of positive integers <= 2^n of form 6*x^2 + 7*y^2.

The programs for A054182, there is no canonical definition to state claims against.
-/

/-! ## A054182.P13999538473219137472

`A123578(A036719(n)-A108350(n))-A138471(A030105(n))`
-/

namespace A054182.P13999538473219137472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A036719 n - A108350 n).toNat - A138471 (A030105 n).toNat

end

end A054182.P13999538473219137472

/-! ## A054182.P4876272465743755114

`A324935(A279785(n))-1`
-/

namespace A054182.P4876272465743755114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A279785 n).toNat - 1

end

end A054182.P4876272465743755114

/-! ## A054182.P17476776053629665523

`A000196(and(-4, A000108(n)))-char[8]`
-/

namespace A054182.P17476776053629665523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land (-4) (A000108 n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054182.P17476776053629665523

/-! ## A054182.P7697254367894757942

`A000196(A000108(n)%n!)-char[8]`
-/

namespace A054182.P7697254367894757942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A000108 n) (Nat.factorial n : ℤ)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054182.P7697254367894757942

/-! ## A054182.P10907290727249323850

`A000196(A000108(n)-A124560(3*n+2))`
-/

namespace A054182.P10907290727249323850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000108 n - A124560 (3 * n + 2)).toNat

end

end A054182.P10907290727249323850

/-!
# A054183: Moebius transform of A000011 (starting at term 0).

The programs for A054183, the canonical program `A054183.P17782024646663310574` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054183 has offset 0).

The definition of A054183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054183.P17782024646663310574

`∑{d}[n+1, A000011(#-1)*A008683((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A054183

/-- `∑{d}[n+1, A000011(#-1)*A008683((n+1)/#)]` -/
def P17782024646663310574.Spec : Prop :=
  ∀ n, P17782024646663310574.a n = A054183 n

theorem P17782024646663310574.correct : P17782024646663310574.Spec := by
  intro n
  simp only [A054183]

end A054183

/-! ## A054183.P1140057344383389060

`∑{d}[n+1, A007427(#)*A054181((n+1)/#-1)]`
-/

namespace A054183.P1140057344383389060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A054181 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A054183.P1140057344383389060

namespace A054183

/-- `∑{d}[n+1, A007427(#)*A054181((n+1)/#-1)]` -/
def P1140057344383389060.Spec : Prop :=
  ∀ n, P1140057344383389060.a n = A054183 n

end A054183

/-! ## A054183.P231714733371704561

`A059053(n)+A056476(A187829(n+1))`
-/

namespace A054183.P231714733371704561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 n + A056476 (A187829 (n + 1)).toNat

end

end A054183.P231714733371704561

namespace A054183

/-- `A059053(n)+A056476(A187829(n+1))` -/
def P231714733371704561.Spec : Prop :=
  ∀ n, P231714733371704561.a n = A054183 n

end A054183

/-! ## A054183.P2271455846661555227

`A210671(n)-A046051(n+1)-A308706(n)`
-/

namespace A054183.P2271455846661555227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210671 n - A046051 (n + 1) - A308706 n

end

end A054183.P2271455846661555227

namespace A054183

/-- `A210671(n)-A046051(n+1)-A308706(n)` -/
def P2271455846661555227.Spec : Prop :=
  ∀ n, P2271455846661555227.a n = A054183 n

end A054183

/-!
# A054184: Number of positive integers <= 2^n of form 6 x^2 + 9 y^2.

The programs for A054184, there is no canonical definition to state claims against.
-/

/-! ## A054184.P12199666155458713003

`A331933(n+1)-A296976(A331933(n+1))`
-/

namespace A054184.P12199666155458713003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331933 (n + 1) - A296976 (A331933 (n + 1)).toNat

end

end A054184.P12199666155458713003

/-!
# A054185: Binomial transform of A000031.

The programs for A054185, there is no canonical definition to state claims against.
-/

/-! ## A054185.P5908757251691876220

`A048739(n)+2*A007037(A000013(n))`
-/

namespace A054185.P5908757251691876220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + 2 * A007037 (A000013 n).toNat

end

end A054185.P5908757251691876220

/-! ## A054185.P9050967942446845179

`A048739(n)+2*A048652(A048632(n))`
-/

namespace A054185.P9050967942446845179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + 2 * A048652 (A048632 n).toNat

end

end A054185.P9050967942446845179

/-! ## A054185.P12736606379307751980

`2*a(n-1)+A316864(A000142(n))+A136753(n+1)` with `a(0)=1`
-/

namespace A054185.P12736606379307751980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (A316864 (A000142 n).toNat + A136753 (n + 1))

end

end A054185.P12736606379307751980

/-!
# A054186: Number of positive integers <= 2^n of form 7 x^2 + 7 y^2.

The programs for A054186, there is no canonical definition to state claims against.
-/

/-! ## A054186.P14467573438488055818

`A257639(3*A287901(n))-A020912(A128023(n+1))`
-/

namespace A054186.P14467573438488055818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (3 * A287901 n).toNat - A020912 (A128023 (n + 1)).toNat

end

end A054186.P14467573438488055818

/-! ## A054186.P12066982780377331334

`A257639(3*A287901(n))-A020912(A128022(n+1)/(n+1))`
-/

namespace A054186.P12066982780377331334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (3 * A287901 n).toNat - A020912 (SequenceMachineLib.roundAway ((A128022 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A054186.P12066982780377331334

/-! ## A054186.P11619280878144780138

`A135665(A034341(n+1))`
-/

namespace A054186.P11619280878144780138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A034341 (n + 1)).toNat

end

end A054186.P11619280878144780138

/-! ## A054186.P17267960718094083787

`A123345(A337495(n))-1`
-/

namespace A054186.P17267960718094083787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (A337495 n).toNat - 1

end

end A054186.P17267960718094083787

/-! ## A054186.P1772282117266884803

`A141002(n)-A104368(A000055(n))`
-/

namespace A054186.P1772282117266884803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141002 n - A104368 (A000055 n).toNat

end

end A054186.P1772282117266884803

/-!
# A054187: Number of positive integers <= 2^n of form 7 x^2 + 8 y^2.

The programs for A054187, there is no canonical definition to state claims against.
-/

/-! ## A054187.P8800904547418975774

`A339186(A292698(n+2))`
-/

namespace A054187.P8800904547418975774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (A292698 (n + 2)).toNat

end

end A054187.P8800904547418975774

/-! ## A054187.P18092505606599449228

`A156350(A001590(n+1)+1)`
-/

namespace A054187.P18092505606599449228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156350 (A001590 (n + 1) + 1).toNat

end

end A054187.P18092505606599449228

/-!
# A054188: Number of positive integers <= 2^n of form 7 x^2 + 9 y^2.

The programs for A054188, there is no canonical definition to state claims against.
-/

/-! ## A054188.P13159988396350006109

`A172471(A303030(n)+1)-2`
-/

namespace A054188.P13159988396350006109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A303030 n + 1).toNat - 2

end

end A054188.P13159988396350006109

/-! ## A054188.P4590928894166833101

`A172471(A303030(n)-A001405(n))`
-/

namespace A054188.P4590928894166833101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A303030 n - A001405 n).toNat

end

end A054188.P4590928894166833101

/-! ## A054188.P7465178134808128598

`A003056(A303030(n)-A213709(n))`
-/

namespace A054188.P7465178134808128598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A303030 n - A213709 n).toNat

end

end A054188.P7465178134808128598

/-! ## A054188.P10397097294470098926

`A322407(A054193(n+1))`
-/

namespace A054188.P10397097294470098926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A054193 (n + 1)).toNat

end

end A054188.P10397097294470098926

/-! ## A054188.P2524861068865032882

`A000196(A219232(n)-A117494(2*n+5))`
-/

namespace A054188.P2524861068865032882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A219232 n - A117494 (2 * n + 5)).toNat

end

end A054188.P2524861068865032882

/-!
# A054189: Number of positive integers <= 2^n of form 7 x^2 + 10 y^2.

The programs for A054189, there is no canonical definition to state claims against.
-/

/-! ## A054189.P8910778217884836193

`∑[∑[A117173(A266504(n))]]`
-/

namespace A054189.P8910778217884836193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (A266504 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054189.P8910778217884836193

/-! ## A054189.P4450317583513159432

`A333223(A100482(n+1)-A000071(n+1))`
-/

namespace A054189.P4450317583513159432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (A100482 (n + 1) - A000071 (n + 1)).toNat

end

end A054189.P4450317583513159432

/-! ## A054189.P17531668029781603987

`A057354(C(A336142(n), A118914(3*n+2)))`
-/

namespace A054189.P17531668029781603987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Nat.choose (A336142 n).toNat (A118914 (3 * n + 2)).toNat)

end

end A054189.P17531668029781603987

/-! ## A054189.P33939046609370695

`Δ[A265529(a(n-1))+a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A054189.P33939046609370695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  A265529 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054189.P33939046609370695

/-! ## A054189.P18402962101551842643

`A273859(A121649(n))`
-/

namespace A054189.P18402962101551842643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A121649 n).toNat

end

end A054189.P18402962101551842643

/-!
# A054190: Binomial transform of A001037.

The programs for A054190, there is no canonical definition to state claims against.
-/

/-! ## A054190.P11042253742499614707

`A126257(∑[∑[A002605(n)]+3])`
-/

namespace A054190.P11042253742499614707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054190.P11042253742499614707

/-! ## A054190.P2939313799976550234

`2*A325251(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A054190.P2939313799976550234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * A325251 (a (n - 1)).toNat

end

end A054190.P2939313799976550234

/-! ## A054190.P7335168477959988450

`2*A330977(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A054190.P7335168477959988450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * A330977 (a (n - 1)).toNat

end

end A054190.P7335168477959988450

/-!
# A054191: Number of positive integers <= 2^n of form 8 x^2 + 9 y^2.

The programs for A054191, there is no canonical definition to state claims against.
-/

/-! ## A054191.P17006394193438932996

`A257639(A148301(n))-1`
-/

namespace A054191.P17006394193438932996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A148301 n).toNat - 1

end

end A054191.P17006394193438932996

/-! ## A054191.P3413165135421050599

`A003056(floor(A148327(n)/4))`
-/

namespace A054191.P3413165135421050599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊(A148327 n : ℚ) / 4⌋.toNat

end

end A054191.P3413165135421050599

/-! ## A054191.P12056707060544520972

`A000196(∑[A221586(n)-1])`
-/

namespace A054191.P12056707060544520972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221586 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054191.P12056707060544520972

/-! ## A054191.P9211109252445424978

`A259361(A130380(n))+A053392(n)`
-/

namespace A054191.P9211109252445424978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A130380 n).toNat + A053392 n

end

end A054191.P9211109252445424978

/-! ## A054191.P10452753111816617006

`A000196(A011768(2*n+1)-A000120(n))`
-/

namespace A054191.P10452753111816617006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A011768 (2 * n + 1) - A000120 n).toNat

end

end A054191.P10452753111816617006

/-!
# A054192: Binomial transform of A000029.

The programs for A054192, there is no canonical definition to state claims against.
-/

/-! ## A054192.P9575782028424798874

`(A054185(n)+A048739(n))/2`
-/

namespace A054192.P9575782028424798874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054185 n + A048739 n : ℚ) / 2

end

end A054192.P9575782028424798874

/-! ## A054192.P17033937340772107993

`A027826(n+2)-A051903(A002189(n))`
-/

namespace A054192.P17033937340772107993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 (n + 2) - A051903 (A002189 n).toNat

end

end A054192.P17033937340772107993

/-! ## A054192.P7939277024731375533

`A027826(n+2)-A115583(A057977(n))`
-/

namespace A054192.P7939277024731375533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 (n + 2) - A115583 (A057977 n).toNat

end

end A054192.P7939277024731375533

/-! ## A054192.P14923255109282304185

`A027826(n+2)-A152193(A352066(n))`
-/

namespace A054192.P14923255109282304185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 (n + 2) - A152193 (A352066 n).toNat

end

end A054192.P14923255109282304185

/-! ## A054192.P13930516539753783946

`A349350(A000229(n+2))+A027826(n+2)`
-/

namespace A054192.P13930516539753783946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349350 (A000229 (n + 2)).toNat + A027826 (n + 2)

end

end A054192.P13930516539753783946

/-!
# A054193: Number of positive integers <= 2^n of form 9 x^2 + 9 y^2.

The programs for A054193, there is no canonical definition to state claims against.
-/

/-! ## A054193.P16905596265137584598

`A003056(floor(A148040(n)/4))`
-/

namespace A054193.P16905596265137584598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌊(A148040 n : ℚ) / 4⌋.toNat

end

end A054193.P16905596265137584598

/-! ## A054193.P5967791279002573463

`A000196(ceil((A238708(∑[n])-1)/2))`
-/

namespace A054193.P5967791279002573463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(A238708 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 : ℚ) / 2⌉.toNat

end

end A054193.P5967791279002573463

/-! ## A054193.P3968679773982591731

`A034397((2*n+3)^A237291(n+1))`
-/

namespace A054193.P3968679773982591731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034397 (SequenceMachineLib.roundAway ((2 * n + 3 : ℚ) ^ (A237291 (n + 1) : ℤ))).toNat

end

end A054193.P3968679773982591731

/-! ## A054193.P12597116682023861434

`A173711(A057608(n)-A002265(n))`
-/

namespace A054193.P12597116682023861434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A057608 n - A002265 n).toNat

end

end A054193.P12597116682023861434

/-! ## A054193.P4328456889331817294

`A100617(A055226(n))-A261585(n)`
-/

namespace A054193.P4328456889331817294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A055226 n).toNat - A261585 n

end

end A054193.P4328456889331817294

/-!
# A054194: Number of positive integers <= 2^n of form 9 x^2 + 10 y^2.

The programs for A054194, there is no canonical definition to state claims against.
-/

/-! ## A054194.P424170717655455823

`A259361(A148100(n)-A123498(n))`
-/

namespace A054194.P424170717655455823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A148100 n - A123498 n).toNat

end

end A054194.P424170717655455823

/-! ## A054194.P18340255590163609135

`A052146(A360569(n+1)+A325200(n))`
-/

namespace A054194.P18340255590163609135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A360569 (n + 1) + A325200 n).toNat

end

end A054194.P18340255590163609135

/-! ## A054194.P8556413791095681833

`A003056(A005817(n))-A134816(n+1)`
-/

namespace A054194.P8556413791095681833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005817 n).toNat - A134816 (n + 1)

end

end A054194.P8556413791095681833

/-! ## A054194.P9234085145626452214

`A135665(or(A022166(n), A076822(n+1)))`
-/

namespace A054194.P9234085145626452214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (Int.lor (A022166 n) (A076822 (n + 1))).toNat

end

end A054194.P9234085145626452214

/-! ## A054194.P10182755597874582994

`A394303(A148452(n))`
-/

namespace A054194.P10182755597874582994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394303 (A148452 n).toNat

end

end A054194.P10182755597874582994

/-!
# A054195: Binomial transform of A001371.

The programs for A054195, there is no canonical definition to state claims against.
-/

/-! ## A054195.P3962847540462772634

`∑[A077767(A210529(3*n+2)+A037544(n+1))]`
-/

namespace A054195.P3962847540462772634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A210529 (3 * n + 2) + A037544 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054195.P3962847540462772634

/-! ## A054195.P1946615879464022906

`∑[floor(sqrt(A108598((n+1)!+1)))]`
-/

namespace A054195.P1946615879464022906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A108598 (Nat.factorial (n + 1) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054195.P1946615879464022906

/-! ## A054195.P14229710796826297177

`∑[A000194(A008980(n))]`
-/

namespace A054195.P14229710796826297177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054195.P14229710796826297177

/-!
# A054196: Binomial transform of A000013.

The programs for A054196, there is no canonical definition to state claims against.
-/

/-! ## A054196.P9207434858156816761

`A054846(A113437(n))`
-/

namespace A054196.P9207434858156816761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A113437 n).toNat

end

end A054196.P9207434858156816761

/-! ## A054196.P10759937739142879272

`A210357(∑[A191625(n)])`
-/

namespace A054196.P10759937739142879272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054196.P10759937739142879272

/-! ## A054196.P9147145345712647734

`A006530(5*n!)+Δ[A024537(n)]-5`
-/

namespace A054196.P9147145345712647734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * Nat.factorial n) + (f1 (n + 1) - f1 n - 5)

end

end A054196.P9147145345712647734

/-! ## A054196.P8534625615552845186

`A054198(n)+A054166(A185053(n))`
-/

namespace A054196.P8534625615552845186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054198 n + A054166 (A185053 n).toNat

end

end A054196.P8534625615552845186

/-!
# A054197: Binomial transform of A000048.

The programs for A054197, there is no canonical definition to state claims against.
-/

/-! ## A054197.P4430985464336248945

`∑[A152225(A004892(n+1))]`
-/

namespace A054197.P4430985464336248945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152225 (A004892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054197.P4430985464336248945

/-! ## A054197.P10519737316694201891

`A287776(∑[2^A285527(n)])`
-/

namespace A054197.P10519737316694201891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A285527 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287776 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A054197.P10519737316694201891

/-! ## A054197.P9177613933315618984

`A326249(A285527(n))+A287776(n+3)`
-/

namespace A054197.P9177613933315618984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326249 (A285527 n).toNat + A287776 (n + 3)

end

end A054197.P9177613933315618984

/-! ## A054197.P4246890437585487338

`A287776(n+3)*A329900(A287804(n))`
-/

namespace A054197.P4246890437585487338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287776 (n + 3) * A329900 (A287804 n).toNat

end

end A054197.P4246890437585487338

/-!
# A054198: Binomial transform of A000011.

The programs for A054198, there is no canonical definition to state claims against.
-/

/-! ## A054198.P12215506660342480534

`A054846(A077830(n))`
-/

namespace A054198.P12215506660342480534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A077830 n).toNat

end

end A054198.P12215506660342480534

/-! ## A054198.P8689266304286784868

`A209081(A078343(n+1))`
-/

namespace A054198.P8689266304286784868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A078343 (n + 1)).toNat

end

end A054198.P8689266304286784868

/-! ## A054198.P12482348702374260913

`A194698(17*A078057(n))`
-/

namespace A054198.P12482348702374260913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (17 * A078057 n).toNat

end

end A054198.P12482348702374260913

/-! ## A054198.P8555649328118863224

`A122840(A216999(n))+A000129(n+1)`
-/

namespace A054198.P8555649328118863224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A216999 n).toNat + A000129 (n + 1)

end

end A054198.P8555649328118863224

/-!
# A054199: Binomial transform of A000046 (1, 1, 1, 1, 2, 3, 5, 8, 14, 21, 39, 62, 112, ...).

The programs for A054199, there is no canonical definition to state claims against.
-/

/-! ## A054199.P2729628624507945379

`A007496(A110304(n+1))+A001519(n)`
-/

namespace A054199.P2729628624507945379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A110304 (n + 1)).toNat + A001519 n

end

end A054199.P2729628624507945379

/-! ## A054199.P6934242371116723193

`A007496(A161604(n+1))+A001519(n)`
-/

namespace A054199.P6934242371116723193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (A161604 (n + 1)).toNat + A001519 n

end

end A054199.P6934242371116723193

/-! ## A054199.P17039419792598143451

`A007496(n+1)+A005350(A000045(2*n+1))`
-/

namespace A054199.P17039419792598143451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007496 (n + 1) + A005350 (A000045 (2 * n + 1)).toNat

end

end A054199.P17039419792598143451

/-! ## A054199.P1454256430638820261

`A265554(n)+A152251(∑[n+1])`
-/

namespace A054199.P1454256430638820261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265554 n + A152251 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054199.P1454256430638820261

/-! ## A054199.P16446267903720120587

`A004233(A149827(n))+A001519(n)`
-/

namespace A054199.P16446267903720120587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004233 (A149827 n).toNat + A001519 n

end

end A054199.P16446267903720120587

