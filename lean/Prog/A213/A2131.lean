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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A213100: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^9)^3.

The programs for A213100, there is no canonical definition to state claims against.
-/

/-! ## A213100.P8153189071672602300

`A261334(A376565(n))+A000009(n)`
-/

namespace A213100.P8153189071672602300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (A376565 n).toNat + A000009 n

end

end A213100.P8153189071672602300

/-! ## A213100.P12791672410593321485

`A026355(A365626(n)-A365623(3*n+1))`
-/

namespace A213100.P12791672410593321485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (A365626 n - A365623 (3 * n + 1)).toNat

end

end A213100.P12791672410593321485

/-!
# A213101: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^8)^4.

The programs for A213101, there is no canonical definition to state claims against.
-/

/-! ## A213101.P10803924300177344650

`A004523(A111530(n)+A106228(n))`
-/

namespace A213101.P10803924300177344650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A111530 n + A106228 n).toNat

end

end A213101.P10803924300177344650

/-! ## A213101.P6934114672629568710

`A005206(A071716(n)*A071726(n))`
-/

namespace A213101.P6934114672629568710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A071716 n * A071726 n).toNat

end

end A213101.P6934114672629568710

/-!
# A213102: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^9)^4.

The programs for A213102, there is no canonical definition to state claims against.
-/

/-! ## A213102.P3401327084358252348

`A352867(A005816(n)+A000073(n))`
-/

namespace A213102.P3401327084358252348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352867 (A005816 n + A000073 n).toNat

end

end A213102.P3401327084358252348

/-! ## A213102.P31653472676285416

`A005185(abs(A007360(3*n+4)-A007017(n)))`
-/

namespace A213102.P31653472676285416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 |A007360 (3 * n + 4) - A007017 n|.toNat

end

end A213102.P31653472676285416

/-!
# A213103: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^12)^4.

The programs for A213103, there is no canonical definition to state claims against.
-/

/-! ## A213103.P11261674963351223466

`A178330(floor(cosh(n)))`
-/

namespace A213103.P11261674963351223466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178330 ⌊Real.cosh (n : ℝ)⌋.toNat

end

end A213103.P11261674963351223466

/-!
# A213104: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^10)^5.

The programs for A213104, there is no canonical definition to state claims against.
-/

/-! ## A213104.P12858616064254247013

`A390264(n^(n+1)+1)`
-/

namespace A213104.P12858616064254247013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390264 (n ^ (n + 1) + 1)

end

end A213104.P12858616064254247013

/-!
# A213105: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^12)^6.

The programs for A213105, there is no canonical definition to state claims against.
-/

/-! ## A213105.P9365355460966362186

`∏{p}[A246235(n)², #]`
-/

namespace A213105.P9365355460966362186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246235 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A213105.P9365355460966362186

/-!
# A213108: E.g.f.: A(x) = exp( x/A(-x*A(x)) ).

The programs for A213108, there is no canonical definition to state claims against.
-/

/-! ## A213108.P7704947208422681698

`A384801(∑[n+1]+n)`
-/

namespace A213108.P7704947208422681698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384801 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213108.P7704947208422681698

/-!
# A213109: E.g.f.: A(x) = exp( x/A(-x*A(x)^3) ).

The programs for A213109, there is no canonical definition to state claims against.
-/

/-! ## A213109.P11816544385686075085

`A384802(∑[n+1]+n)`
-/

namespace A213109.P11816544385686075085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384802 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213109.P11816544385686075085

/-! ## A213109.P14847695689291142164

`A056313(n+1)+A028310(A161567(n))`
-/

namespace A213109.P14847695689291142164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056313 (n + 1) + A028310 (A161567 n).toNat

end

end A213109.P14847695689291142164

/-!
# A213110: E.g.f.: A(x) = exp( x/A(-x*A(x)^5)^2 ).

The programs for A213110, there is no canonical definition to state claims against.
-/

/-! ## A213110.P11893071128793303053

`A341868((C(n, 2)+1)²)`
-/

namespace A213110.P11893071128793303053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341868 ((Nat.choose n 2 + 1) ^ 2 + 10)

end

end A213110.P11893071128793303053

/-!
# A213111: E.g.f.: A(x) = exp( x/A(-x*A(x)^6)^2 ).

The programs for A213111, there is no canonical definition to state claims against.
-/

/-! ## A213111.P14811362969578658893

`A353301(A126952(n))`
-/

namespace A213111.P14811362969578658893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353301 (A126952 n).toNat

end

end A213111.P14811362969578658893

/-!
# A213112: E.g.f.: A(x) = exp( x/A(-x*A(x)^7)^3 ).

The programs for A213112, there is no canonical definition to state claims against.
-/

/-! ## A213112.P15886810605568859899

`A111175(A294024(n))`
-/

namespace A213112.P15886810605568859899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111175 (A294024 n).toNat

end

end A213112.P15886810605568859899

/-!
# A213113: E.g.f.: A(x) = exp( x/A(-x*A(x)^9)^3 ).

The programs for A213113, there is no canonical definition to state claims against.
-/

/-! ## A213113.P1192316790734276375

`A005374(A250120(n)^(n-1)+1)`
-/

namespace A213113.P1192316790734276375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (SequenceMachineLib.roundAway ((A250120 n : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat

end

end A213113.P1192316790734276375

/-!
# A213114: Number of binary arrays of length n+7 with fewer than 4 ones in any length 8 subsequence (=less than 50% duty cycle).

The programs for A213114, there is no canonical definition to state claims against.
-/

/-! ## A213114.P17678651062526114822

`A213118(A027379(n+2))`
-/

namespace A213114.P17678651062526114822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A027379 (n + 2)).toNat

end

end A213114.P17678651062526114822

/-! ## A213114.P6403831558274283030

`A213118(A055998(n+2))`
-/

namespace A213114.P6403831558274283030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055998 (n + 2)).toNat

end

end A213114.P6403831558274283030

/-! ## A213114.P17673076473735240378

`A213118(A155212(n)+5)`
-/

namespace A213114.P17673076473735240378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A155212 n + 5).toNat

end

end A213114.P17673076473735240378

/-! ## A213114.P14098609294299015555

`A213118(A056000(n)+7)`
-/

namespace A213114.P14098609294299015555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A056000 n + 7).toNat

end

end A213114.P14098609294299015555

/-! ## A213114.P17320244127565221195

`A213118(Δ[A006503(n+1)])`
-/

namespace A213114.P17320244127565221195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n).toNat

end

end A213114.P17320244127565221195

/-! ## A213114.P5698746486702605888

`A213118(A052905(n+1)+2)`
-/

namespace A213114.P5698746486702605888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A052905 (n + 1) + 2).toNat

end

end A213114.P5698746486702605888

/-! ## A213114.P11670744879114190719

`A213118(A167499(n)+A016777(n))`
-/

namespace A213114.P11670744879114190719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167499 n + A016777 n).toNat

end

end A213114.P11670744879114190719

/-! ## A213114.P3097945460868778917

`A213118(A167614(n+1)+A005408(n))`
-/

namespace A213114.P3097945460868778917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167614 (n + 1) + A005408 n).toNat

end

end A213114.P3097945460868778917

/-!
# A213115: Number of binary arrays of length n+9 with fewer than 5 ones in any length 10 subsequence (=less than 50% duty cycle).

The programs for A213115, there is no canonical definition to state claims against.
-/

/-! ## A213115.P16254032721607548949

`A213118(Δ[A264443(n)])`
-/

namespace A213115.P16254032721607548949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n).toNat

end

end A213115.P16254032721607548949

/-! ## A213115.P17083346598422976635

`A213118(A046691(n+3))`
-/

namespace A213115.P17083346598422976635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A046691 (n + 3)).toNat

end

end A213115.P17083346598422976635

/-! ## A213115.P14781621269791469308

`A213118(A056115(n)+11)`
-/

namespace A213115.P14781621269791469308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A056115 n + 11).toNat

end

end A213115.P14781621269791469308

/-! ## A213115.P6207989590992230297

`A213118(Δ[A023545(n+1)])`
-/

namespace A213115.P6207989590992230297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n).toNat

end

end A213115.P6207989590992230297

/-! ## A213115.P10396251146951686346

`A213118(A052905(n+2)+1)`
-/

namespace A213115.P10396251146951686346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A052905 (n + 2) + 1).toNat

end

end A213115.P10396251146951686346

/-! ## A213115.P10486817735227855052

`A213118(A055998(n+3)-1)`
-/

namespace A213115.P10486817735227855052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055998 (n + 3) - 1).toNat

end

end A213115.P10486817735227855052

/-! ## A213115.P17134586205869130635

`A213118(A000096(n+4)-3)`
-/

namespace A213115.P17134586205869130635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000096 (n + 4) - 3).toNat

end

end A213115.P17134586205869130635

/-! ## A213115.P5515854446472722547

`A213118(A000217(n+5)-4)`
-/

namespace A213115.P5515854446472722547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000217 (n + 5) - 4).toNat

end

end A213115.P5515854446472722547

/-! ## A213115.P16676916965896616944

`A213118(A000124(n+5)-5)`
-/

namespace A213115.P16676916965896616944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000124 (n + 5) - 5).toNat

end

end A213115.P16676916965896616944

/-! ## A213115.P12024874922926726063

`A213118(A167614(n+2)+2*(n+1))`
-/

namespace A213115.P12024874922926726063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A213115.P12024874922926726063

/-!
# A213116: Number of binary arrays of length n+11 with fewer than 6 ones in any length 12 subsequence (=less than 50% duty cycle).

The programs for A213116, there is no canonical definition to state claims against.
-/

/-! ## A213116.P7386924432391712570

`A213118(A052905(n+3))`
-/

namespace A213116.P7386924432391712570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A052905 (n + 3)).toNat

end

end A213116.P7386924432391712570

/-! ## A213116.P13657762344486494014

`A213118(A055999(n+3)+1)`
-/

namespace A213116.P13657762344486494014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055999 (n + 3) + 1).toNat

end

end A213116.P13657762344486494014

/-! ## A213116.P3858556815881217730

`A213118(A046691(n+4)-1)`
-/

namespace A213116.P3858556815881217730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A046691 (n + 4) - 1).toNat

end

end A213116.P3858556815881217730

/-! ## A213116.P16832895138949189838

`A213118(A055998(n+4)-2)`
-/

namespace A213116.P16832895138949189838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055998 (n + 4) - 2).toNat

end

end A213116.P16832895138949189838

/-! ## A213116.P821690929232636896

`A213118(A000124(n+6)-6)`
-/

namespace A213116.P821690929232636896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000124 (n + 6) - 6).toNat

end

end A213116.P821690929232636896

/-! ## A213116.P7610208510039220512

`A213118(Δ[A264443(n+1)]-1)`
-/

namespace A213116.P7610208510039220512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n - 1).toNat

end

end A213116.P7610208510039220512

/-! ## A213116.P9609078646315804445

`A213118(Δ[A023545(n+2)]-1)`
-/

namespace A213116.P9609078646315804445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n - 1).toNat

end

end A213116.P9609078646315804445

/-! ## A213116.P2681116981078356918

`A213118(A008587(n+3)+A000217(n+1))`
-/

namespace A213116.P2681116981078356918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A008587 (n + 3) + A000217 (n + 1)).toNat

end

end A213116.P2681116981078356918

/-!
# A213117: Number of binary arrays of length n+13 with fewer than 7 ones in any length 14 subsequence (=less than 50% duty cycle).

The programs for A213117, there is no canonical definition to state claims against.
-/

/-! ## A213117.P5406082275502263289

`A213118(A055999(n+4))`
-/

namespace A213117.P5406082275502263289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055999 (n + 4)).toNat

end

end A213117.P5406082275502263289

/-! ## A213117.P14468636407266571588

`A213118(A000217(n+7)-6)`
-/

namespace A213117.P14468636407266571588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000217 (n + 7) - 6).toNat

end

end A213117.P14468636407266571588

/-! ## A213117.P3361038149632325840

`A213118(A000124(n+7)-7)`
-/

namespace A213117.P3361038149632325840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000124 (n + 7) - 7).toNat

end

end A213117.P3361038149632325840

/-! ## A213117.P1426924745658030123

`A213118(A167499(n+6)-11)`
-/

namespace A213117.P1426924745658030123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167499 (n + 6) - 11).toNat

end

end A213117.P1426924745658030123

/-! ## A213117.P16866445908171775505

`A213118(A016993(n+3)+A000217(n))`
-/

namespace A213117.P16866445908171775505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A016993 (n + 3) + A000217 n).toNat

end

end A213117.P16866445908171775505

/-! ## A213117.P15655856597119519666

`A213118(A055998(n+3)+A004275(n+6))`
-/

namespace A213117.P15655856597119519666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055998 (n + 3) + A004275 (n + 6)).toNat

end

end A213117.P15655856597119519666

/-!
# A213119: Number of binary arrays of length 2*n+1 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213119, the canonical program `A213119.P6091923279066594458` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213119 has offset 1).

The definition of A213119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213119.P6091923279066594458

`4^(n+1)-3*C(2*(n+1)-1, n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213119

/-- `4^(n+1)-3*C(2*(n+1)-1, n+1)` -/
def P6091923279066594458.Spec : Prop :=
  ∀ n, P6091923279066594458.a n = A213119 (n + 1)

theorem P6091923279066594458.correct : P6091923279066594458.Spec := by
  intro n
  simp only [A213119, Nat.add_sub_cancel]

end A213119

/-! ## A213119.P13453498747740953722

`3*A000108(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A213119.P13453498747740953722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A000108 n + 4 * a (n - 1)

end

end A213119.P13453498747740953722

namespace A213119

/-- `3*A000108(n)+4*a(n-1)` -/
def P13453498747740953722.Spec : Prop :=
  ∀ n, P13453498747740953722.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P12915870976787458258

`A068551(n+1)-A001700(n)`
-/

namespace A213119.P12915870976787458258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 (n + 1) - A001700 n

end

end A213119.P12915870976787458258

namespace A213119

/-- `A068551(n+1)-A001700(n)` -/
def P12915870976787458258.Spec : Prop :=
  ∀ n, P12915870976787458258.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P16244028630661783514

`A038679(n)-A024482(n+2)`
-/

namespace A213119.P16244028630661783514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038679 n - A024482 (n + 2)

end

end A213119.P16244028630661783514

namespace A213119

/-- `A038679(n)-A024482(n+2)` -/
def P16244028630661783514.Spec : Prop :=
  ∀ n, P16244028630661783514.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P6621841872988285863

`A000346(n)+2*A008549(n)`
-/

namespace A213119.P6621841872988285863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000346 n + 2 * A008549 n

end

end A213119.P6621841872988285863

namespace A213119

/-- `A000346(n)+2*A008549(n)` -/
def P6621841872988285863.Spec : Prop :=
  ∀ n, P6621841872988285863.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P16916832585226049861

`2*A000346(n)-A001700(n)`
-/

namespace A213119.P16916832585226049861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000346 n - A001700 n

end

end A213119.P16916832585226049861

namespace A213119

/-- `2*A000346(n)-A001700(n)` -/
def P16916832585226049861.Spec : Prop :=
  ∀ n, P16916832585226049861.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P6171066107024954169

`A001700(n)+4*A008549(n)`
-/

namespace A213119.P6171066107024954169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + 4 * A008549 n

end

end A213119.P6171066107024954169

namespace A213119

/-- `A001700(n)+4*A008549(n)` -/
def P6171066107024954169.Spec : Prop :=
  ∀ n, P6171066107024954169.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P1959478306030111635

`A000302(n+1)-A003409(n+1)`
-/

namespace A213119.P1959478306030111635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) - A003409 (n + 1)

end

end A213119.P1959478306030111635

namespace A213119

/-- `A000302(n+1)-A003409(n+1)` -/
def P1959478306030111635.Spec : Prop :=
  ∀ n, P1959478306030111635.a n = A213119 (n + 1)

theorem P1959478306030111635.correct : P1959478306030111635.Spec := by
  intro n
  simp only [A213119, Nat.add_sub_cancel, A213119.P1959478306030111635.a, A213119.P6091923279066594458.a, A000302, A000302.P5166485833484575275.a, A003409, A003409.P14280900282895762854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213119

/-! ## A213119.P1513122906792371520

`A180967(2*(n+1))+A001700(n)`
-/

namespace A213119.P1513122906792371520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180967 (2 * (n + 1)) + A001700 n

end

end A213119.P1513122906792371520

namespace A213119

/-- `A180967(2*(n+1))+A001700(n)` -/
def P1513122906792371520.Spec : Prop :=
  ∀ n, P1513122906792371520.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P9403717968882353408

`A307768(2*(n+1))-A001700(n)`
-/

namespace A213119.P9403717968882353408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (2 * (n + 1)) - A001700 n

end

end A213119.P9403717968882353408

namespace A213119

/-- `A307768(2*(n+1))-A001700(n)` -/
def P9403717968882353408.Spec : Prop :=
  ∀ n, P9403717968882353408.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P14858769555550417678

`A000079(n+1)²-A003409(n+1)`
-/

namespace A213119.P14858769555550417678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A003409 (n + 1)

end

end A213119.P14858769555550417678

namespace A213119

/-- `A000079(n+1)²-A003409(n+1)` -/
def P14858769555550417678.Spec : Prop :=
  ∀ n, P14858769555550417678.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P8374673439950477408

`A037951(2*n+1)+A008549(n+1)`
-/

namespace A213119.P8374673439950477408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 (2 * n + 1) + A008549 (n + 1)

end

end A213119.P8374673439950477408

namespace A213119

/-- `A037951(2*n+1)+A008549(n+1)` -/
def P8374673439950477408.Spec : Prop :=
  ∀ n, P8374673439950477408.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P15828341835482722610

`A068551(n+1)-A001405(2*n+1)`
-/

namespace A213119.P15828341835482722610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 (n + 1) - A001405 (2 * n + 1)

end

end A213119.P15828341835482722610

namespace A213119

/-- `A068551(n+1)-A001405(2*n+1)` -/
def P15828341835482722610.Spec : Prop :=
  ∀ n, P15828341835482722610.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P18160530204426809517

`A045621(2*(n+1))-A088218(n+1)`
-/

namespace A213119.P18160530204426809517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * (n + 1)) - A088218 (n + 1)

end

end A213119.P18160530204426809517

namespace A213119

/-- `A045621(2*(n+1))-A088218(n+1)` -/
def P18160530204426809517.Spec : Prop :=
  ∀ n, P18160530204426809517.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P18163948872456955930

`A068551(n+1)-A000984(n+1)/2`
-/

namespace A213119.P18163948872456955930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 (n + 1) : ℚ) - (A000984 (n + 1) : ℚ) / 2

end

end A213119.P18163948872456955930

namespace A213119

/-- `A068551(n+1)-A000984(n+1)/2` -/
def P18163948872456955930.Spec : Prop :=
  ∀ n, P18163948872456955930.a n = (A213119 (n + 1) : ℚ)

end A213119

/-! ## A213119.P1182734082402732288

`A180967(2*(n+1))+A001405(2*n+1)`
-/

namespace A213119.P1182734082402732288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180967 (2 * (n + 1)) + A001405 (2 * n + 1)

end

end A213119.P1182734082402732288

namespace A213119

/-- `A180967(2*(n+1))+A001405(2*n+1)` -/
def P1182734082402732288.Spec : Prop :=
  ∀ n, P1182734082402732288.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P13783552374517344779

`A340569(2*(n+1))+A001405(2*n+1)`
-/

namespace A213119.P13783552374517344779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 (2 * (n + 1)) + A001405 (2 * n + 1)

end

end A213119.P13783552374517344779

namespace A213119

/-- `A340569(2*(n+1))+A001405(2*n+1)` -/
def P13783552374517344779.Spec : Prop :=
  ∀ n, P13783552374517344779.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P4314576492675033990

`A340569(2*(n+1))+A037952(2*n+1)`
-/

namespace A213119.P4314576492675033990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340569 (2 * (n + 1)) + A037952 (2 * n + 1)

end

end A213119.P4314576492675033990

namespace A213119

/-- `A340569(2*(n+1))+A037952(2*n+1)` -/
def P4314576492675033990.Spec : Prop :=
  ∀ n, P4314576492675033990.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P13812697518436735072

`A045621(2*(n+1))-A001405(2*n+1)`
-/

namespace A213119.P13812697518436735072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * (n + 1)) - A001405 (2 * n + 1)

end

end A213119.P13812697518436735072

namespace A213119

/-- `A045621(2*(n+1))-A001405(2*n+1)` -/
def P13812697518436735072.Spec : Prop :=
  ∀ n, P13812697518436735072.a n = A213119 (n + 1)

end A213119

/-! ## A213119.P16058052094947943119

`A307768(2*(n+1))-A001405(2*n+1)`
-/

namespace A213119.P16058052094947943119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (2 * (n + 1)) - A001405 (2 * n + 1)

end

end A213119.P16058052094947943119

namespace A213119

/-- `A307768(2*(n+1))-A001405(2*n+1)` -/
def P16058052094947943119.Spec : Prop :=
  ∀ n, P16058052094947943119.a n = A213119 (n + 1)

end A213119

/-!
# A213120: Number of binary arrays of length 2*n+2 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213120, the canonical program `A213120.P15984309934372154679` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213120 has offset 1).

The definition of A213120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213120.P15984309934372154679

`2^(2*(n+1)+1)-(15*(n+1)-8)*C(2*(n+1)-2, n)/(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213120

/-- `2^(2*(n+1)+1)-(15*(n+1)-8)*C(2*(n+1)-2, n)/(n+1)` -/
def P15984309934372154679.Spec : Prop :=
  ∀ n, P15984309934372154679.a n = (A213120 (n + 1) : ℚ)

end A213120

/-! ## A213120.P16163402423445463555

`A000984(n)+8*A008549(n)`
-/

namespace A213120.P16163402423445463555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 8 * A008549 n

end

end A213120.P16163402423445463555

namespace A213120

/-- `A000984(n)+8*A008549(n)` -/
def P16163402423445463555.Spec : Prop :=
  ∀ n, P16163402423445463555.a n = A213120 (n + 1)

end A213120

/-! ## A213120.P12541122319096868308

`A001405(2*n)+2*A180967(2*(n+1))`
-/

namespace A213120.P12541122319096868308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + 2 * A180967 (2 * (n + 1))

end

end A213120.P12541122319096868308

namespace A213120

/-- `A001405(2*n)+2*A180967(2*(n+1))` -/
def P12541122319096868308.Spec : Prop :=
  ∀ n, P12541122319096868308.a n = A213120 (n + 1)

end A213120

/-! ## A213120.P9779222956788892378

`A063886(2*n)+2*A180967(2*(n+1))`
-/

namespace A213120.P9779222956788892378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + 2 * A180967 (2 * (n + 1))

end

end A213120.P9779222956788892378

namespace A213120

/-- `A063886(2*n)+2*A180967(2*(n+1))` -/
def P9779222956788892378.Spec : Prop :=
  ∀ n, P9779222956788892378.a n = A213120 (n + 1)

end A213120

/-! ## A213120.P2895901970151154892

`6*A008549(n)+A000346(n)-A001791(n)`
-/

namespace A213120.P2895901970151154892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A008549 n + (A000346 n - A001791 n)

end

end A213120.P2895901970151154892

namespace A213120

/-- `6*A008549(n)+A000346(n)-A001791(n)` -/
def P2895901970151154892.Spec : Prop :=
  ∀ n, P2895901970151154892.a n = A213120 (n + 1)

end A213120

/-! ## A213120.P6793528813606061787

`A213118(∑[n+2]+4)`
-/

namespace A213120.P6793528813606061787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A213120.P6793528813606061787

namespace A213120

/-- `A213118(∑[n+2]+4)` -/
def P6793528813606061787.Spec : Prop :=
  ∀ n, P6793528813606061787.a n = A213120 (n + 1)

end A213120

/-! ## A213120.P4973566066095981325

`lcm((-1)^n, A213118(A167614(n+1)))`
-/

namespace A213120.P4973566066095981325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A213118 (A167614 (n + 1)).toNat)

end

end A213120.P4973566066095981325

namespace A213120

/-- `lcm((-1)^n, A213118(A167614(n+1)))` -/
def P4973566066095981325.Spec : Prop :=
  ∀ n, (P4973566066095981325.a n : ℤ) = A213120 (n + 1)

end A213120

/-! ## A213120.P8579901456096496448

`gcd(A000038(n), A213118(A055998(n)+6))`
-/

namespace A213120.P8579901456096496448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A213118 (A055998 n + 6).toNat)

end

end A213120.P8579901456096496448

namespace A213120

/-- `gcd(A000038(n), A213118(A055998(n)+6))` -/
def P8579901456096496448.Spec : Prop :=
  ∀ n, (P8579901456096496448.a n : ℤ) = A213120 (n + 1)

end A213120

/-! ## A213120.P8506730176756789755

`A213118(A167499(n)+n)%A299748(n+1)`
-/

namespace A213120.P8506730176756789755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213118 (A167499 n + (n : ℤ)).toNat) (A299748 (n + 1))

end

end A213120.P8506730176756789755

namespace A213120

/-- `A213118(A167499(n)+n)%A299748(n+1)` -/
def P8506730176756789755.Spec : Prop :=
  ∀ n, P8506730176756789755.a n = A213120 (n + 1)

end A213120

/-! ## A213120.P3265505740063642251

`A213118(A034856(n+1)+5)%A126643(n+1)`
-/

namespace A213120.P3265505740063642251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213118 (A034856 (n + 1) + 5).toNat) (A126643 (n + 1))

end

end A213120.P3265505740063642251

namespace A213120

/-- `A213118(A034856(n+1)+5)%A126643(n+1)` -/
def P3265505740063642251.Spec : Prop :=
  ∀ n, P3265505740063642251.a n = A213120 (n + 1)

end A213120

/-!
# A213121: Number of binary arrays of length 2*n+3 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213121, the canonical program `A213121.P2940945555763886217` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213121 has offset 1).

The definition of A213121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213121.P2940945555763886217

`2^(2*(n+1)+2)-5*(7*(n+1)-4)*C(2*(n+1)-2, n)/(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213121

/-- `2^(2*(n+1)+2)-5*(7*(n+1)-4)*C(2*(n+1)-2, n)/(n+1)` -/
def P2940945555763886217.Spec : Prop :=
  ∀ n, P2940945555763886217.a n = (A213121 (n + 1) : ℚ)

end A213121

/-! ## A213121.P4944075251468187059

`A213118(A052905(n)+9)`
-/

namespace A213121.P4944075251468187059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A052905 n + 9).toNat

end

end A213121.P4944075251468187059

namespace A213121

/-- `A213118(A052905(n)+9)` -/
def P4944075251468187059.Spec : Prop :=
  ∀ n, P4944075251468187059.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P5028646680693305434

`A213118(A055999(n)+10)`
-/

namespace A213121.P5028646680693305434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055999 n + 10).toNat

end

end A213121.P5028646680693305434

namespace A213121

/-- `A213118(A055999(n)+10)` -/
def P5028646680693305434.Spec : Prop :=
  ∀ n, P5028646680693305434.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P16260125053264860941

`A213118(A167614(n+2)+1)`
-/

namespace A213121.P16260125053264860941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167614 (n + 2) + 1).toNat

end

end A213121.P16260125053264860941

namespace A213121

/-- `A213118(A167614(n+2)+1)` -/
def P16260125053264860941.Spec : Prop :=
  ∀ n, P16260125053264860941.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P6908510565484927631

`A213118(A166136(n+2)-2)`
-/

namespace A213121.P6908510565484927631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A166136 (n + 2) - 2).toNat

end

end A213121.P6908510565484927631

namespace A213121

/-- `A213118(A166136(n+2)-2)` -/
def P6908510565484927631.Spec : Prop :=
  ∀ n, P6908510565484927631.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P8452227068594855381

`A213118(A000124(n+3)+3)`
-/

namespace A213121.P8452227068594855381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000124 (n + 3) + 3).toNat

end

end A213121.P8452227068594855381

namespace A213121

/-- `A213118(A000124(n+3)+3)` -/
def P8452227068594855381.Spec : Prop :=
  ∀ n, P8452227068594855381.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P16775478666965989319

`A213118(A000217(n+3)+4)`
-/

namespace A213121.P16775478666965989319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000217 (n + 3) + 4).toNat

end

end A213121.P16775478666965989319

namespace A213121

/-- `A213118(A000217(n+3)+4)` -/
def P16775478666965989319.Spec : Prop :=
  ∀ n, P16775478666965989319.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P6204718375837103721

`A213118(Δ[A264443(n)-n²])`
-/

namespace A213121.P6204718375837103721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n).toNat

end

end A213121.P6204718375837103721

namespace A213121

/-- `A213118(Δ[A264443(n)-n²])` -/
def P6204718375837103721.Spec : Prop :=
  ∀ n, P6204718375837103721.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P278339299212430863

`A213118(A166136(n+1)+1+n)`
-/

namespace A213121.P278339299212430863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A213121.P278339299212430863

namespace A213121

/-- `A213118(A166136(n+1)+1+n)` -/
def P278339299212430863.Spec : Prop :=
  ∀ n, P278339299212430863.a n = A213121 (n + 1)

end A213121

/-! ## A213121.P5851878650315196385

`A213118(Δ[A023545(n+1)-n²])`
-/

namespace A213121.P5851878650315196385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (f1 (n + 1) - f1 n).toNat

end

end A213121.P5851878650315196385

namespace A213121

/-- `A213118(Δ[A023545(n+1)-n²])` -/
def P5851878650315196385.Spec : Prop :=
  ∀ n, P5851878650315196385.a n = A213121 (n + 1)

end A213121

/-!
# A213122: Number of binary arrays of length 2*n+4 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213122, there is no canonical definition to state claims against.
-/

/-! ## A213122.P11107564118777094256

`A213118(A167499(n+3))`
-/

namespace A213122.P11107564118777094256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167499 (n + 3)).toNat

end

end A213122.P11107564118777094256

/-! ## A213122.P10790966802334934357

`A213118(A155212(n)+13)`
-/

namespace A213122.P10790966802334934357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A155212 n + 13).toNat

end

end A213122.P10790966802334934357

/-! ## A213122.P6092068420284570617

`A213118(A166136(n+3)-1)`
-/

namespace A213122.P6092068420284570617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A166136 (n + 3) - 1).toNat

end

end A213122.P6092068420284570617

/-! ## A213122.P4636645252748759806

`A213118(A167614(n+3)+2)`
-/

namespace A213122.P4636645252748759806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A167614 (n + 3) + 2).toNat

end

end A213122.P4636645252748759806

/-! ## A213122.P12046085622560619544

`A213118(A000217(n+4)+5)`
-/

namespace A213122.P12046085622560619544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000217 (n + 4) + 5).toNat

end

end A213122.P12046085622560619544

/-! ## A213122.P11772388482189595831

`A213118(A038722(Δ[A023545(n+1)]))`
-/

namespace A213122.P11772388482189595831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A213122.P11772388482189595831

/-! ## A213122.P14524677604690242283

`A213118(A008619((n+4)²)+A008619(n+11))`
-/

namespace A213122.P14524677604690242283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A008619 ((n + 4) ^ 2) + A008619 (n + 11)).toNat

end

end A213122.P14524677604690242283

/-!
# A213123: Number of binary arrays of length 2*n+5 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213123, there is no canonical definition to state claims against.
-/

/-! ## A213123.P13102040388605341528

`A213118(A056115(n)+21)`
-/

namespace A213123.P13102040388605341528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A056115 n + 21).toNat

end

end A213123.P13102040388605341528

/-! ## A213123.P242882025961741834

`A213118(A000217(n+5)+6)`
-/

namespace A213123.P242882025961741834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000217 (n + 5) + 6).toNat

end

end A213123.P242882025961741834

/-! ## A213123.P11741227546114597165

`A213118(A161680(n+6)+6)`
-/

namespace A213123.P11741227546114597165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A161680 (n + 6) + 6).toNat

end

end A213123.P11741227546114597165

/-! ## A213123.P14363682549546981417

`A213118(A055998(n+5)-A004275(n+3))`
-/

namespace A213123.P14363682549546981417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055998 (n + 5) - A004275 (n + 3)).toNat

end

end A213123.P14363682549546981417

/-! ## A213123.P10232581579688394589

`A213118(A008619((n+5)²)+A008619(n)+7)`
-/

namespace A213123.P10232581579688394589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A008619 ((n + 5) ^ 2) + (A008619 n + 7)).toNat

end

end A213123.P10232581579688394589

/-!
# A213124: Number of binary arrays of length 2*n+6 with fewer than n ones in any length 2n subsequence (=less than 50% duty cycle).

The programs for A213124, there is no canonical definition to state claims against.
-/

/-! ## A213124.P2323003402933457270

`A213118(A000217(n+6)+7)`
-/

namespace A213124.P2323003402933457270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A000217 (n + 6) + 7).toNat

end

end A213124.P2323003402933457270

/-! ## A213124.P11439157554706918552

`A213118(A161680(n+7)+7)`
-/

namespace A213124.P11439157554706918552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A161680 (n + 7) + 7).toNat

end

end A213124.P11439157554706918552

/-! ## A213124.P3365973846930584892

`A213118(A155212(n+2)+15)`
-/

namespace A213124.P3365973846930584892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A155212 (n + 2) + 15).toNat

end

end A213124.P3365973846930584892

/-! ## A213124.P17928678321800308788

`A213118(A112414(n+7)+A055999(n))`
-/

namespace A213124.P17928678321800308788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A112414 (n + 7) + A055999 n).toNat

end

end A213124.P17928678321800308788

/-! ## A213124.P3116702006233395914

`A213118(A055999(n)+A016777(n+9))`
-/

namespace A213124.P3116702006233395914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213118 (A055999 n + A016777 (n + 9)).toNat

end

end A213124.P3116702006233395914

/-!
# A213126: Rows of triangle formed using Pascal's rule, except sums in the n-th row are modulo n: T(n,0) = T(n,n) = 1 and T(n,k) = (T(n-1,k-1) + T(n-1,k)) mod n.

The programs for A213126, there is no canonical definition to state claims against.
-/

/-! ## A213126.P10504684748955252009

`A087698(n)%A087739(A087739(2*(n+1)))`
-/

namespace A213126.P10504684748955252009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087698 n) (A087739 (A087739 (2 * (n + 1))).toNat)

end

end A213126.P10504684748955252009

/-! ## A213126.P11905722886676148624

`A087698(n)%A040006(A000041(n))`
-/

namespace A213126.P11905722886676148624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087698 n) (A040006 (A000041 n).toNat)

end

end A213126.P11905722886676148624

/-! ## A213126.P15072768684838262680

`A146988(n)%A040006(A000041(n))`
-/

namespace A213126.P15072768684838262680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146988 n) (A040006 (A000041 n).toNat)

end

end A213126.P15072768684838262680

/-! ## A213126.P8995480838419661093

`A010875(A146988(n))+A010051(A038231(n))`
-/

namespace A213126.P8995480838419661093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A146988 n).toNat + A010051 (A038231 n).toNat

end

end A213126.P8995480838419661093

/-! ## A213126.P11987734778251094681

`A001221(A066146(n+1))*A010875(A146988(n))`
-/

namespace A213126.P11987734778251094681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066146 (n + 1)).toNat * A010875 (A146988 n).toNat

end

end A213126.P11987734778251094681

/-!
# A213129: Polylogarithm li(-n,-1/6) multiplied by (7^(n+1))/6.

The programs for A213129, there is no canonical definition to state claims against.
-/

/-! ## A213129.P2397794177324823438

`A327058(n)+1-A078057(n)`
-/

namespace A213129.P2397794177324823438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327058 n + (1 - A078057 n)

end

end A213129.P2397794177324823438

/-!
# A213130: Polylogarithm li(-n,-1/7) multiplied by (8^(n+1))/7.

The programs for A213130, there is no canonical definition to state claims against.
-/

/-! ## A213130.P5279801712194250910

`2^floor(n/2)*A171684(A000217(n))`
-/

namespace A213130.P5279801712194250910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A171684 (A000217 n).toNat : ℚ)

end

end A213130.P5279801712194250910

/-!
# A213131: Polylogarithm li(-n,-1/8) multiplied by (9^(n+1))/8.

The programs for A213131, there is no canonical definition to state claims against.
-/

/-! ## A213131.P5429512900595864695

`A363778(A000984(n))-A051836(n)`
-/

namespace A213131.P5429512900595864695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363778 (A000984 n).toNat - A051836 n

end

end A213131.P5429512900595864695

/-!
# A213134: Polylogarithm li(-n,-2/5) multiplied by (7^(n+1))/5.

The programs for A213134, there is no canonical definition to state claims against.
-/

/-! ## A213134.P297731254502602302

`A124134(A313826(n)+n^n)-Δ[n²]²`
-/

namespace A213134.P297731254502602302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (A313826 n + (n ^ n : ℤ)).toNat - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A213134.P297731254502602302

/-!
# A213135: Polylogarithm li(-n,-2/7) multiplied by (9^(n+1))/7.

The programs for A213135, there is no canonical definition to state claims against.
-/

/-! ## A213135.P11263311820967641971

`A360960(A003024(n))-A001196(n)`
-/

namespace A213135.P11263311820967641971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360960 (A003024 n).toNat - A001196 n

end

end A213135.P11263311820967641971

/-!
# A213137: Polylogarithm li(-n,-3/4) multiplied by (7^(n+1))/4.

The programs for A213137, there is no canonical definition to state claims against.
-/

/-! ## A213137.P17324357587445045888

`A336467(A070198(2*n+1))-∑[6*n]`
-/

namespace A213137.P17324357587445045888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336467 (A070198 (2 * n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213137.P17324357587445045888

/-!
# A213139: Polylogarithm li(-n,-3/7) multiplied by (10^(n+1))/7.

The programs for A213139, there is no canonical definition to state claims against.
-/

/-! ## A213139.P4370004404032085505

`A188643(A127782(2*n+1))-A328212(3*n+5)`
-/

namespace A213139.P4370004404032085505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188643 (A127782 (2 * n + 1)).toNat - A328212 (3 * n + 5)

end

end A213139.P4370004404032085505

/-!
# A213158: Positive integers of the form (x+y+z)*x*y*z (x,y,z positive integers).

The programs for A213158, there is no canonical definition to state claims against.
-/

/-! ## A213158.P17287274236206328841

`record[A001222(2*(n+1))*A377307(2*(n+1))]`
-/

namespace A213158.P17287274236206328841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1)) * A377307 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213158.P17287274236206328841

/-! ## A213158.P9688851262165296585

`eq[A222217(A110234(n+1)), A244612(n+1)]`
-/

namespace A213158.P9688851262165296585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A110234 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213158.P9688851262165296585

/-!
# A213160: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(-,0,4,0)(x).

The programs for A213160, there is no canonical definition to state claims against.
-/

/-! ## A213160.P18315549960567957266

`A268399(A119368(n+1))`
-/

namespace A213160.P18315549960567957266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268399 (A119368 (n + 1)).toNat

end

end A213160.P18315549960567957266

/-!
# A213163: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(3,0,-,0)(x).

The programs for A213163, the canonical program `A213163.P13692512211002323822` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213163 has offset 4).

The definition of A213163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213163.P13692512211002323822

`7*a(n-1)-17*a(n-2)+17*a(n-3)-7*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=32, a(3)=122, a(4)=422`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213163

/-- `7*a(n-1)-17*a(n-2)+17*a(n-3)-7*a(n-4)+a(n-5)` -/
def P13692512211002323822.Spec : Prop :=
  ∀ n, P13692512211002323822.a n = A213163 (n + 4)

theorem P13692512211002323822.correct : P13692512211002323822.Spec := by
  intro n
  simp only [A213163, Nat.add_sub_cancel]

end A213163

/-! ## A213163.P7476022044735545636

`∑[ogf(1/(1-6x+11x^2-6x^3+x^4))]`
-/

namespace A213163.P7476022044735545636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 11, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P7476022044735545636

namespace A213163

/-- `∑[ogf(1/(1-6x+11x^2-6x^3+x^4))]` -/
def P7476022044735545636.Spec : Prop :=
  ∀ n, P7476022044735545636.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P2874934157549632824

`∑[A001871(n)]`
-/

namespace A213163.P2874934157549632824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P2874934157549632824

namespace A213163

/-- `∑[A001871(n)]` -/
def P2874934157549632824.Spec : Prop :=
  ∀ n, P2874934157549632824.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P9280943798327748530

`∑[∑[A001870(n)]]`
-/

namespace A213163.P9280943798327748530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P9280943798327748530

namespace A213163

/-- `∑[∑[A001870(n)]]` -/
def P9280943798327748530.Spec : Prop :=
  ∀ n, P9280943798327748530.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P6036404493814513813

`∑[∑[A025078(Δ[n²])]]`
-/

namespace A213163.P6036404493814513813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025078 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P6036404493814513813

namespace A213163

/-- `∑[∑[A025078(Δ[n²])]]` -/
def P6036404493814513813.Spec : Prop :=
  ∀ n, P6036404493814513813.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P10312946048164804069

`∑[A129722(2*n+3)]`
-/

namespace A213163.P10312946048164804069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P10312946048164804069

namespace A213163

/-- `∑[A129722(2*n+3)]` -/
def P10312946048164804069.Spec : Prop :=
  ∀ n, P10312946048164804069.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P3643748253233773345

`∑[A067331(2*n)/2]`
-/

namespace A213163.P3643748253233773345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067331 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P3643748253233773345

namespace A213163

/-- `∑[A067331(2*n)/2]` -/
def P3643748253233773345.Spec : Prop :=
  ∀ n, P3643748253233773345.a n = (A213163 (n + 4) : ℚ)

end A213163

/-! ## A213163.P14899976000556941573

`∑[∑[∑[A030267(n+1)]]]`
-/

namespace A213163.P14899976000556941573
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P14899976000556941573

namespace A213163

/-- `∑[∑[∑[A030267(n+1)]]]` -/
def P14899976000556941573.Spec : Prop :=
  ∀ n, P14899976000556941573.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P1541425924128391310

`∑[∑[A024458(2*(n+1))]]`
-/

namespace A213163.P1541425924128391310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024458 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P1541425924128391310

namespace A213163

/-- `∑[∑[A024458(2*(n+1))]]` -/
def P1541425924128391310.Spec : Prop :=
  ∀ n, P1541425924128391310.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P12868255577825920766

`∑[∑[A089089(2*(n+1))]]`
-/

namespace A213163.P12868255577825920766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089089 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P12868255577825920766

namespace A213163

/-- `∑[∑[A089089(2*(n+1))]]` -/
def P12868255577825920766.Spec : Prop :=
  ∀ n, P12868255577825920766.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P7618523317740608070

`∑[∑[A089098(2*(n+1))]]`
-/

namespace A213163.P7618523317740608070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089098 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P7618523317740608070

namespace A213163

/-- `∑[∑[A089098(2*(n+1))]]` -/
def P7618523317740608070.Spec : Prop :=
  ∀ n, P7618523317740608070.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P4346540469486390406

`∑[∑[A281199(n+2)/2]]`
-/

namespace A213163.P4346540469486390406
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281199 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P4346540469486390406

namespace A213163

/-- `∑[∑[A281199(n+2)/2]]` -/
def P4346540469486390406.Spec : Prop :=
  ∀ n, P4346540469486390406.a n = (A213163 (n + 4) : ℚ)

end A213163

/-! ## A213163.P9770563299410093713

`∑[A054454(2*n+1)/2]`
-/

namespace A213163.P9770563299410093713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054454 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P9770563299410093713

namespace A213163

/-- `∑[A054454(2*n+1)/2]` -/
def P9770563299410093713.Spec : Prop :=
  ∀ n, P9770563299410093713.a n = (A213163 (n + 4) : ℚ)

end A213163

/-! ## A213163.P13303728248971024323

`∑[∑[∑[A129720(2*n+1)]]]`
-/

namespace A213163.P13303728248971024323
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129720 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P13303728248971024323

namespace A213163

/-- `∑[∑[∑[A129720(2*n+1)]]]` -/
def P13303728248971024323.Spec : Prop :=
  ∀ n, P13303728248971024323.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P1466608890960831780

`∑[∑[∑[A134512(2*n+1)]]]`
-/

namespace A213163.P1466608890960831780
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P1466608890960831780

namespace A213163

/-- `∑[∑[∑[A134512(2*n+1)]]]` -/
def P1466608890960831780.Spec : Prop :=
  ∀ n, P1466608890960831780.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P4264631911768975418

`∑[∑[(n+1)*A000045(2*(n+1))-a(n-1)]]` with `a(0)=1`
-/

namespace A213163.P4264631911768975418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1 : ℤ) * A000045 (2 * (n + 1)) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P4264631911768975418

namespace A213163

/-- `∑[∑[(n+1)*A000045(2*(n+1))-a(n-1)]]` -/
def P4264631911768975418.Spec : Prop :=
  ∀ n, P4264631911768975418.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P1287635358506385210

`A317408(n+1)+A006478(2*n+1)`
-/

namespace A213163.P1287635358506385210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 (n + 1) + A006478 (2 * n + 1)

end

end A213163.P1287635358506385210

namespace A213163

/-- `A317408(n+1)+A006478(2*n+1)` -/
def P1287635358506385210.Spec : Prop :=
  ∀ n, P1287635358506385210.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P5016132861563728122

`A001871(floor(sqrt(A010000(n))))+a(n-1)` with `a(0)=1`
-/

namespace A213163.P5016132861563728122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001871 (Int.sqrt (A010000 n)).toNat + a (n - 1)

end

end A213163.P5016132861563728122

namespace A213163

/-- `A001871(floor(sqrt(A010000(n))))+a(n-1)` -/
def P5016132861563728122.Spec : Prop :=
  ∀ n, P5016132861563728122.a n = A213163 (n + 4)

end A213163

/-! ## A213163.P996747832332141173

`∑[∑[A025082(2*(n+1))-A025082(2*n+1)]]`
-/

namespace A213163.P996747832332141173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025082 (2 * (n + 1)) - A025082 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213163.P996747832332141173

namespace A213163

/-- `∑[∑[A025082(2*(n+1))-A025082(2*n+1)]]` -/
def P996747832332141173.Spec : Prop :=
  ∀ n, P996747832332141173.a n = A213163 (n + 4)

end A213163

/-!
# A213164: Sequence of coefficients of x in marked mesh pattern generating function Q_{n,132}^(4,0,-,0)(x).

The programs for A213164, the canonical program `A213164.P2048091254153720547` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213164 has offset 5).

The definition of A213164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213164.P2048091254153720547

`((2*(n+5)-11)*3^(n+3)+2*(n+5)²-2*(n+5)+3)/16`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213164

/-- `((2*(n+5)-11)*3^(n+3)+2*(n+5)²-2*(n+5)+3)/16` -/
def P2048091254153720547.Spec : Prop :=
  ∀ n, P2048091254153720547.a n = (A213164 (n + 5) : ℚ)

end A213164

/-! ## A213164.P10493377962506538433

`∑[∑[∑[ogf(1/(1-6x+9x^2))]]]`
-/

namespace A213164.P10493377962506538433
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 9] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213164.P10493377962506538433

namespace A213164

/-- `∑[∑[∑[ogf(1/(1-6x+9x^2))]]]` -/
def P10493377962506538433.Spec : Prop :=
  ∀ n, P10493377962506538433.a n = A213164 (n + 5)

end A213164

/-! ## A213164.P3525149585995173840

`∑[A212337(n)]`
-/

namespace A213164.P3525149585995173840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213164.P3525149585995173840

namespace A213164

/-- `∑[A212337(n)]` -/
def P3525149585995173840.Spec : Prop :=
  ∀ n, P3525149585995173840.a n = A213164 (n + 5)

end A213164

/-! ## A213164.P5819533641238967036

`∑[∑[A014915(n+1)]]`
-/

namespace A213164.P5819533641238967036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213164.P5819533641238967036

namespace A213164

/-- `∑[∑[A014915(n+1)]]` -/
def P5819533641238967036.Spec : Prop :=
  ∀ n, P5819533641238967036.a n = A213164 (n + 5)

end A213164

/-! ## A213164.P678877037051201871

`A212337(n+1)-A372878(n+5)`
-/

namespace A213164.P678877037051201871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212337 (n + 1) - A372878 (n + 5)

end

end A213164.P678877037051201871

namespace A213164

/-- `A212337(n+1)-A372878(n+5)` -/
def P678877037051201871.Spec : Prop :=
  ∀ n, P678877037051201871.a n = A213164 (n + 5)

end A213164

/-! ## A213164.P5929541227506543182

`A014915(n+3)-A372878(n+6)`
-/

namespace A213164.P5929541227506543182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014915 (n + 3) - A372878 (n + 6)

end

end A213164.P5929541227506543182

namespace A213164

/-- `A014915(n+3)-A372878(n+6)` -/
def P5929541227506543182.Spec : Prop :=
  ∀ n, P5929541227506543182.a n = A213164 (n + 5)

end A213164

/-!
# A213166: Triangle, read by rows, of permutations of length n with k white global corners.

The programs for A213166, there is no canonical definition to state claims against.
-/

/-! ## A213166.P2429350560830824063

`A172312(A080416(n))`
-/

namespace A213166.P2429350560830824063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172312 (A080416 n).toNat

end

end A213166.P2429350560830824063

/-! ## A213166.P14802466359191722427

`A172251(A287532(n))`
-/

namespace A213166.P14802466359191722427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172251 (A287532 n).toNat

end

end A213166.P14802466359191722427

/-! ## A213166.P12509339510633326990

`A344651(A154979(n)-A333213(n))`
-/

namespace A213166.P12509339510633326990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (A154979 n - A333213 n).toNat

end

end A213166.P12509339510633326990

/-! ## A213166.P6787239837869059750

`A095047(A094507(n)^A033630(n))`
-/

namespace A213166.P6787239837869059750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095047 (SequenceMachineLib.roundAway ((A094507 n : ℚ) ^ (A033630 n : ℤ))).toNat

end

end A213166.P6787239837869059750

/-! ## A213166.P7632927913431291658

`A095047(A094507(n)^A182172(n))`
-/

namespace A213166.P7632927913431291658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095047 (SequenceMachineLib.roundAway ((A094507 n : ℚ) ^ (A182172 n : ℤ))).toNat

end

end A213166.P7632927913431291658

/-!
# A213167: a(n) = n! - (n-2)!.

The programs for A213167, the canonical program `A213167.P17414384898676733797` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213167 has offset 2).

The definition of A213167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)!-n!` (program `A213167.P17414384898676733797`, by `A213167.P17414384898676733797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213167.P17414384898676733797

`(n+2)!-n!`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213167

/-- `(n+2)!-n!` -/
def P17414384898676733797.Spec : Prop :=
  ∀ n, P17414384898676733797.a n = A213167 (n + 2)

theorem P17414384898676733797.correct : P17414384898676733797.Spec := by
  intro n
  simp only [A213167, Nat.add_sub_cancel]

end A213167

/-! ## A213167.P9859450436624360406

`Δ[(n+2)*n!]`
-/

namespace A213167.P9859450436624360406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213167.P9859450436624360406

namespace A213167

/-- `Δ[(n+2)*n!]` -/
def P9859450436624360406.Spec : Prop :=
  ∀ n, P9859450436624360406.a n = A213167 (n + 2)

theorem P9859450436624360406.correct : P9859450436624360406.Spec := by
  intro n
  simp only [A213167, Nat.add_sub_cancel, A213167.P9859450436624360406.f1, A213167.P9859450436624360406.a, A213167.P17414384898676733797.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A213167

/-! ## A213167.P4290728655129954525

`Δ[(n+1)!+n!]`
-/

namespace A213167.P4290728655129954525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A213167.P4290728655129954525

namespace A213167

/-- `Δ[(n+1)!+n!]` -/
def P4290728655129954525.Spec : Prop :=
  ∀ n, P4290728655129954525.a n = A213167 (n + 2)

theorem P4290728655129954525.correct : P4290728655129954525.Spec := by
  intro n
  simp only [A213167, Nat.add_sub_cancel, A213167.P4290728655129954525.f1, A213167.P4290728655129954525.a, A213167.P17414384898676733797.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A213167

/-! ## A213167.P6306314088042134611

`((n+1)²+n)*n!`
-/

namespace A213167.P6306314088042134611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n) * Nat.factorial n

end

end A213167.P6306314088042134611

namespace A213167

/-- `((n+1)²+n)*n!` -/
def P6306314088042134611.Spec : Prop :=
  ∀ n, (P6306314088042134611.a n : ℤ) = A213167 (n + 2)

theorem P6306314088042134611.correct : P6306314088042134611.Spec := by
  intro n
  simp only [A213167, Nat.add_sub_cancel, A213167.P6306314088042134611.a, A213167.P17414384898676733797.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A213167

/-! ## A213167.P13445630984533610750

`record[abs(2-n)!]-n!`
-/

namespace A213167.P13445630984533610750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (Nat.factorial n : ℤ)

end

end A213167.P13445630984533610750

namespace A213167

/-- `record[abs(2-n)!]-n!` -/
def P13445630984533610750.Spec : Prop :=
  ∀ n, P13445630984533610750.a n = A213167 (n + 2)

end A213167

/-! ## A213167.P10247933492357579729

`n!*or(1, n*(n+3))`
-/

namespace A213167.P10247933492357579729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.lor 1 (n * (n + 3))

end

end A213167.P10247933492357579729

namespace A213167

/-- `n!*or(1, n*(n+3))` -/
def P10247933492357579729.Spec : Prop :=
  ∀ n, (P10247933492357579729.a n : ℤ) = A213167 (n + 2)

end A213167

/-! ## A213167.P12981770753990249442

`n!*xor(1, n*(n+3))`
-/

namespace A213167.P12981770753990249442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 1 (n * (n + 3))

end

end A213167.P12981770753990249442

namespace A213167

/-- `n!*xor(1, n*(n+3))` -/
def P12981770753990249442.Spec : Prop :=
  ∀ n, (P12981770753990249442.a n : ℤ) = A213167 (n + 2)

end A213167

/-! ## A213167.P5861093945787591312

`Δ[∏[n+1]*ratio[n+1]]`
-/

namespace A213167.P5861093945787591312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213167.P5861093945787591312

namespace A213167

/-- `Δ[∏[n+1]*ratio[n+1]]` -/
def P5861093945787591312.Spec : Prop :=
  ∀ n, P5861093945787591312.a n = (A213167 (n + 2) : ℚ)

end A213167

/-! ## A213167.P11675336592454404588

`n!*record[(1-n)²-n]`
-/

namespace A213167.P11675336592454404588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213167.P11675336592454404588

namespace A213167

/-- `n!*record[(1-n)²-n]` -/
def P11675336592454404588.Spec : Prop :=
  ∀ n, P11675336592454404588.a n = A213167 (n + 2)

end A213167

/-! ## A213167.P14356207118109483308

`abs(n!-(2*n-(n-2))!)`
-/

namespace A213167.P14356207118109483308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - (Nat.factorial ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℤ)|

end

end A213167.P14356207118109483308

namespace A213167

/-- `abs(n!-(2*n-(n-2))!)` -/
def P14356207118109483308.Spec : Prop :=
  ∀ n, P14356207118109483308.a n = A213167 (n + 2)

end A213167

/-!
# A213168: a(n) = n!/2 - (n-1)! - n + 2.

The programs for A213168, the canonical program `A213168.P1469583912502785109` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213168 has offset 2).

The definition of A213168 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)!/2-(n+1)!-(n+2)+2` (program `A213168.P2555659381484152354`, by `A213168.P2555659381484152354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213168.P2555659381484152354

`(n+2)!/2-(n+1)!-(n+2)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213168.P2555659381484152354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / 2 - (Nat.factorial (n + 1) : ℚ) - (n + 2 : ℚ) + 2

end

end A213168.P2555659381484152354

namespace A213168

/-- `(n+2)!/2-(n+1)!-(n+2)+2` -/
def P2555659381484152354.Spec : Prop :=
  ∀ n, P2555659381484152354.a n = (A213168 (n + 2) : ℚ)

theorem P2555659381484152354.correct : P2555659381484152354.Spec := by
  intro n
  simp only [A213168, Nat.add_sub_cancel, A213168.P2555659381484152354.a, A213168.P1469583912502785109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213168

/-! ## A213168.P10574345747721155016

`n!*∑[n]-n`
-/

namespace A213168.P10574345747721155016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A213168.P10574345747721155016

namespace A213168

/-- `n!*∑[n]-n` -/
def P10574345747721155016.Spec : Prop :=
  ∀ n, P10574345747721155016.a n = A213168 (n + 2)

end A213168

/-! ## A213168.P13989302980853645914

`n*((n+1)!/2-1)`
-/

namespace A213168.P13989302980853645914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.factorial (n + 1) : ℚ) / 2 - 1)

end

end A213168.P13989302980853645914

namespace A213168

/-- `n*((n+1)!/2-1)` -/
def P13989302980853645914.Spec : Prop :=
  ∀ n, P13989302980853645914.a n = (A213168 (n + 2) : ℚ)

end A213168

/-! ## A213168.P11328476296235792981

`n*(∏[n+1]/2-1)`
-/

namespace A213168.P11328476296235792981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 - 1)

end

end A213168.P11328476296235792981

namespace A213168

/-- `n*(∏[n+1]/2-1)` -/
def P11328476296235792981.Spec : Prop :=
  ∀ n, P11328476296235792981.a n = (A213168 (n + 2) : ℚ)

end A213168

/-! ## A213168.P1469583912502785109

`C(n+1, 2)*n!-n`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213168

/-- `C(n+1, 2)*n!-n` -/
def P1469583912502785109.Spec : Prop :=
  ∀ n, P1469583912502785109.a n = A213168 (n + 2)

theorem P1469583912502785109.correct : P1469583912502785109.Spec := by
  intro n
  simp only [A213168, Nat.add_sub_cancel]

end A213168

/-! ## A213168.P794847037425251417

`∑[n]*∏[round(1/acot(n))]-n`
-/

namespace A213168.P794847037425251417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∏ j ∈ Finset.range (n + 1), f2 j) - (n : ℤ)

end

end A213168.P794847037425251417

namespace A213168

/-- `∑[n]*∏[round(1/acot(n))]-n` -/
def P794847037425251417.Spec : Prop :=
  ∀ n, P794847037425251417.a n = A213168 (n + 2)

end A213168

/-! ## A213168.P12742908694691442376

`A180119(n)-n`
-/

namespace A213168.P12742908694691442376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n - (n : ℤ)

end

end A213168.P12742908694691442376

namespace A213168

/-- `A180119(n)-n` -/
def P12742908694691442376.Spec : Prop :=
  ∀ n, P12742908694691442376.a n = A213168 (n + 2)

end A213168

/-! ## A213168.P6618053480812217509

`A300559(n)-(n+1)`
-/

namespace A213168.P6618053480812217509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300559 n - (n + 1 : ℤ)

end

end A213168.P6618053480812217509

namespace A213168

/-- `A300559(n)-(n+1)` -/
def P6618053480812217509.Spec : Prop :=
  ∀ n, P6618053480812217509.a n = A213168 (n + 2)

end A213168

/-! ## A213168.P10656284262807027482

`∑[n]*A000142(n)-n`
-/

namespace A213168.P10656284262807027482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000142 n - (n : ℤ)

end

end A213168.P10656284262807027482

namespace A213168

/-- `∑[n]*A000142(n)-n` -/
def P10656284262807027482.Spec : Prop :=
  ∀ n, P10656284262807027482.a n = A213168 (n + 2)

end A213168

/-! ## A213168.P8322165939707030709

`record[n*A047920(n)]-n`
-/

namespace A213168.P8322165939707030709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A213168.P8322165939707030709

namespace A213168

/-- `record[n*A047920(n)]-n` -/
def P8322165939707030709.Spec : Prop :=
  ∀ n, P8322165939707030709.a n = A213168 (n + 2)

end A213168

/-!
# A213169: a(n) = n! + n + 1.

The programs for A213169, the canonical program `A213169.P6346947423144086463` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213169 has offset 0).

The definition of A213169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n+1` (program `A213169.P6346947423144086463`, by `A213169.P6346947423144086463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213169.P6346947423144086463

`n!+n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213169

/-- `n!+n+1` -/
def P6346947423144086463.Spec : Prop :=
  ∀ n, (P6346947423144086463.a n : ℤ) = A213169 n

theorem P6346947423144086463.correct : P6346947423144086463.Spec := by
  intro n
  simp only [A213169]

end A213169

/-! ## A213169.P9430324774635033100

`n-xor(n!, -1)`
-/

namespace A213169.P9430324774635033100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (Nat.factorial n : ℤ) (-1)

end

end A213169.P9430324774635033100

namespace A213169

/-- `n-xor(n!, -1)` -/
def P9430324774635033100.Spec : Prop :=
  ∀ n, P9430324774635033100.a n = A213169 n

end A213169

/-! ## A213169.P12616146447379192628

`Δ[n²]-(n-n!)`
-/

namespace A213169.P12616146447379192628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - (Nat.factorial n : ℤ))

end

end A213169.P12616146447379192628

namespace A213169

/-- `Δ[n²]-(n-n!)` -/
def P12616146447379192628.Spec : Prop :=
  ∀ n, P12616146447379192628.a n = A213169 n

theorem P12616146447379192628.correct : P12616146447379192628.Spec := by
  intro n
  simp only [A213169, Nat.add_sub_cancel, A213169.P12616146447379192628.f1, A213169.P12616146447379192628.a, A213169.P6346947423144086463.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A213169

/-! ## A213169.P1901472937517365168

`1-(n-n!-2*n)`
-/

namespace A213169.P1901472937517365168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (Nat.factorial n : ℤ) - (2 * n : ℤ))

end

end A213169.P1901472937517365168

namespace A213169

/-- `1-(n-n!-2*n)` -/
def P1901472937517365168.Spec : Prop :=
  ∀ n, P1901472937517365168.a n = A213169 n

theorem P1901472937517365168.correct : P1901472937517365168.Spec := by
  intro n
  simp only [A213169, Nat.add_sub_cancel, A213169.P1901472937517365168.a, A213169.P6346947423144086463.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A213169

/-! ## A213169.P1581432126334586386

`∏[round(1/acot(n))]+1+n`
-/

namespace A213169.P1581432126334586386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A213169.P1581432126334586386

namespace A213169

/-- `∏[round(1/acot(n))]+1+n` -/
def P1581432126334586386.Spec : Prop :=
  ∀ n, P1581432126334586386.a n = A213169 n

end A213169

/-! ## A213169.P2671656934597619547

`abs(∏[floor(acot(n)-n)])+1+n`
-/

namespace A213169.P2671656934597619547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j| + 1 + (n : ℤ)

end

end A213169.P2671656934597619547

namespace A213169

/-- `abs(∏[floor(acot(n)-n)])+1+n` -/
def P2671656934597619547.Spec : Prop :=
  ∀ n, P2671656934597619547.a n = A213169 n

end A213169

/-! ## A213169.P1275598793641729615

`∏[C(2, n+2)+n]+n+1`
-/

namespace A213169.P1275598793641729615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A213169.P1275598793641729615

namespace A213169

/-- `∏[C(2, n+2)+n]+n+1` -/
def P1275598793641729615.Spec : Prop :=
  ∀ n, (P1275598793641729615.a n : ℤ) = A213169 n

end A213169

/-! ## A213169.P10197711314540487811

`∏[a(n-1)+1]+n+1` with `a(0)=1, a(1)=1`
-/

namespace A213169.P10197711314540487811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A213169.P10197711314540487811

namespace A213169

/-- `∏[a(n-1)+1]+n+1` -/
def P10197711314540487811.Spec : Prop :=
  ∀ n, (P10197711314540487811.a n : ℤ) = A213169 n

end A213169

/-! ## A213169.P5180826148605428083

`n*(a(n-1)+1-n)+1` with `a(0)=2`
-/

namespace A213169.P5180826148605428083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * (a (n - 1) + (1 - (n : ℤ))) + 1

end

end A213169.P5180826148605428083

namespace A213169

/-- `n*(a(n-1)+1-n)+1` -/
def P5180826148605428083.Spec : Prop :=
  ∀ n, P5180826148605428083.a n = A213169 n

end A213169

/-! ## A213169.P8892112569496941497

`1-n*(n-1-a(n-1))` with `a(0)=2`
-/

namespace A213169.P8892112569496941497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (n : ℤ) * ((n : ℤ) - 1 - a (n - 1))

end

end A213169.P8892112569496941497

namespace A213169

/-- `1-n*(n-1-a(n-1))` -/
def P8892112569496941497.Spec : Prop :=
  ∀ n, P8892112569496941497.a n = A213169 n

end A213169

/-!
# A213170: E.g.f.: exp(2*(1-exp(x))).

The programs for A213170, there is no canonical definition to state claims against.
-/

/-! ## A213170.P484434661976235170

`A292861(∑[n+3])`
-/

namespace A213170.P484434661976235170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213170.P484434661976235170

/-! ## A213170.P15751280879391482192

`A292861(A055998(n+1))/(-(-1)^n)^n`
-/

namespace A213170.P15751280879391482192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292861 (A055998 (n + 1)).toNat : ℚ) / ((-((-1) ^ n)) ^ n : ℚ)

end

end A213170.P15751280879391482192

/-! ## A213170.P18408970956885911822

`A292861(A055998(n+1))^A057428(n)²`
-/

namespace A213170.P18408970956885911822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292861 (A055998 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A213170.P18408970956885911822

/-! ## A213170.P10661000911184649735

`A292861(A027379(n+1))^A000038(n)!`
-/

namespace A213170.P10661000911184649735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (A027379 (n + 1)).toNat ^ Nat.factorial (A000038 n).toNat

end

end A213170.P10661000911184649735

/-! ## A213170.P9214791278052551252

`A004767(n+1)%2*A292861(A055998(n+1))`
-/

namespace A213170.P9214791278052551252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 (n + 1)) 2 * A292861 (A055998 (n + 1)).toNat

end

end A213170.P9214791278052551252

/-! ## A213170.P2322802947517289539

`A007318(((-1)^n)²)*A292861(A027379(n+1))`
-/

namespace A213170.P2322802947517289539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A292861 (A027379 (n + 1)).toNat

end

end A213170.P2322802947517289539

/-! ## A213170.P859461181151476692

`A105700(A000040(n+1))*A292861(A055998(n+1))`
-/

namespace A213170.P859461181151476692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A000040 (n + 1)).toNat * A292861 (A055998 (n + 1)).toNat

end

end A213170.P859461181151476692

/-! ## A213170.P14710810368550537838

`A057427(A093848(n+1))*A292861(A027379(n+1))`
-/

namespace A213170.P14710810368550537838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A093848 (n + 1)).toNat * A292861 (A027379 (n + 1)).toNat

end

end A213170.P14710810368550537838

/-! ## A213170.P986811183967817816

`A292861(A055998(n+1))^A105700(A020639(n+1))`
-/

namespace A213170.P986811183967817816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292861 (A055998 (n + 1)).toNat : ℚ) ^ (A105700 (A020639 (n + 1)).toNat : ℤ)

end

end A213170.P986811183967817816

/-! ## A213170.P10849282384637192785

`A292861(A055998(n+1))+A057428(A020639(n+2))+1`
-/

namespace A213170.P10849282384637192785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (A055998 (n + 1)).toNat + (A057428 (A020639 (n + 2)).toNat + 1)

end

end A213170.P10849282384637192785

/-!
# A213171: T(n,k) = ((k+n)^2 - 4*k + 3 - (-1)^n - (k+n)*(-1)^(k+n))/2; n, k > 0, read by antidiagonals.

The programs for A213171, the canonical program `A213171.P12504534459747449911` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213171 has offset 1).

The definition of A213171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213171.P12504534459747449911

`(A003057(n+2)²-4*A004736(n+1)+3-(-1)^A002260(n+1)-A003057(n+2)*(-1)^A003056(n))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A213171

/-- `(A003057(n+2)²-4*A004736(n+1)+3-(-1)^A002260(n+1)-A003057(n+2)*(-1)^A003056(n))/2` -/
def P12504534459747449911.Spec : Prop :=
  ∀ n, P12504534459747449911.a n = (A213171 (n + 1) : ℚ)

end A213171

/-! ## A213171.P15062846214979218247

`A211377(A199855(A213205(n+1)))`
-/

namespace A213171.P15062846214979218247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A199855 (A213205 (n + 1)).toNat).toNat

end

end A213171.P15062846214979218247

namespace A213171

/-- `A211377(A199855(A213205(n+1)))` -/
def P15062846214979218247.Spec : Prop :=
  ∀ n, P15062846214979218247.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P10601231152263993055

`A211377(A379343(n+1))`
-/

namespace A213171.P10601231152263993055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A379343 (n + 1)).toNat

end

end A213171.P10601231152263993055

namespace A213171

/-- `A211377(A379343(n+1))` -/
def P10601231152263993055.Spec : Prop :=
  ∀ n, P10601231152263993055.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P3713769847159458083

`A221217(A211377((n²+1+n)%comp[∑[n]]))`
-/

namespace A213171.P3713769847159458083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A211377 ((n ^ 2 + 1 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A213171.P3713769847159458083

namespace A213171

/-- `A221217(A211377((n²+1+n)%comp[∑[n]]))` -/
def P3713769847159458083.Spec : Prop :=
  ∀ n, P3713769847159458083.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P13307635757149102691

`A221217(A211377(A221217(A211394(n+1))))`
-/

namespace A213171.P13307635757149102691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A211377 (A221217 (A211394 (n + 1)).toNat).toNat).toNat

end

end A213171.P13307635757149102691

namespace A213171

/-- `A221217(A211377(A221217(A211394(n+1))))` -/
def P13307635757149102691.Spec : Prop :=
  ∀ n, P13307635757149102691.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P6857533753654115810

`A216249(A199855(A213205(A199855(A216248(n+1)))))`
-/

namespace A213171.P6857533753654115810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216249 (A199855 (A213205 (A199855 (A216248 (n + 1)).toNat).toNat).toNat).toNat

end

end A213171.P6857533753654115810

namespace A213171

/-- `A216249(A199855(A213205(A199855(A216248(n+1)))))` -/
def P6857533753654115810.Spec : Prop :=
  ∀ n, P6857533753654115810.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P6864005206303214865

`n+1+Δ[A007590(A092542(n+1))]`
-/

namespace A213171.P6864005206303214865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A092542 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (f1 (n + 1) - f1 n)

end

end A213171.P6864005206303214865

namespace A213171

/-- `n+1+Δ[A007590(A092542(n+1))]` -/
def P6864005206303214865.Spec : Prop :=
  ∀ n, P6864005206303214865.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P11200857141424052330

`Δ[A007590(A092542(n+1))+A000124(n)]`
-/

namespace A213171.P11200857141424052330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A092542 (n + 1)).toNat + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213171.P11200857141424052330

namespace A213171

/-- `Δ[A007590(A092542(n+1))+A000124(n)]` -/
def P11200857141424052330.Spec : Prop :=
  ∀ n, P11200857141424052330.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P2329524556092721097

`Δ[A007590(A092542(n+1))+A000217(n)]`
-/

namespace A213171.P2329524556092721097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A092542 (n + 1)).toNat + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213171.P2329524556092721097

namespace A213171

/-- `Δ[A007590(A092542(n+1))+A000217(n)]` -/
def P2329524556092721097.Spec : Prop :=
  ∀ n, P2329524556092721097.a n = A213171 (n + 1)

end A213171

/-! ## A213171.P17671092646911350060

`A221217(A367269(n))`
-/

namespace A213171.P17671092646911350060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A367269 n).toNat

end

end A213171.P17671092646911350060

namespace A213171

/-- `A221217(A367269(n))` -/
def P17671092646911350060.Spec : Prop :=
  ∀ n, P17671092646911350060.a n = A213171 (n + 1)

end A213171

/-!
# A213172: Floor of the Euclidean distance of a point on the (1, 2, 3; 4, 5, 6) 3D walk.

The programs for A213172, there is no canonical definition to state claims against.
-/

/-! ## A213172.P7873240432025090863

`ceil(∑[γ*(n-char[2])])`
-/

namespace A213172.P7873240432025090863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant * ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A213172.P7873240432025090863

/-! ## A213172.P3045499763919472338

`A038128(∑[n]+6)-3`
-/

namespace A213172.P3045499763919472338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (∑ j ∈ Finset.range (n + 1), f1 j + 6) - 3

end

end A213172.P3045499763919472338

/-! ## A213172.P16521179118917220342

`record[gcd(ceil(γ*n), A025581(n))]`
-/

namespace A213172.P16521179118917220342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈Real.eulerMascheroniConstant * (n : ℝ)⌉ (A025581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213172.P16521179118917220342

/-! ## A213172.P8658531490835465261

`record[ceil(γ*n)/A186366(n+1)]`
-/

namespace A213172.P8658531490835465261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.eulerMascheroniConstant * (n : ℝ)⌉ : ℚ) / (A186366 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213172.P8658531490835465261

/-! ## A213172.P7572124810570586636

`floor(A057427(n)+∑[γ*(n-char[2])])`
-/

namespace A213172.P7572124810570586636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant * ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A213172.P7572124810570586636

/-!
# A213173: a(n) = 4^floor(n/2), Powers of 4 repeated.

The programs for A213173, the canonical program `A213173.P16493910666287653192` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213173 has offset 0).

The definition of A213173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213173.P3402366546355462428

`4^floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A213173.P3402366546355462428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A213173.P3402366546355462428

namespace A213173

/-- `4^floor(n/2)` -/
def P3402366546355462428.Spec : Prop :=
  ∀ n, P3402366546355462428.a n = (A213173 n : ℚ)

end A213173

/-! ## A213173.P16493910666287653192

`4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213173

/-- `4*a(n-2)` -/
def P16493910666287653192.Spec : Prop :=
  ∀ n, (P16493910666287653192.a n : ℤ) = A213173 n

theorem P16493910666287653192.correct : P16493910666287653192.Spec := by
  intro n
  simp only [A213173]

end A213173

/-! ## A213173.P9894368840412385620

`A016116(n)²`
-/

namespace A213173.P9894368840412385620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

end

end A213173.P9894368840412385620

namespace A213173

/-- `A016116(n)²` -/
def P9894368840412385620.Spec : Prop :=
  ∀ n, P9894368840412385620.a n = A213173 n

end A213173

/-! ## A213173.P6983694597705454303

`(∏[gcd(2, n)]/2)²`
-/

namespace A213173.P6983694597705454303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2) ^ 2

end

end A213173.P6983694597705454303

namespace A213173

/-- `(∏[gcd(2, n)]/2)²` -/
def P6983694597705454303.Spec : Prop :=
  ∀ n, P6983694597705454303.a n = (A213173 n : ℚ)

end A213173

/-! ## A213173.P1619087183298396983

`ogf((1+x)/(1-4x^2))`
-/

namespace A213173.P1619087183298396983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -4] n

end

end A213173.P1619087183298396983

namespace A213173

/-- `ogf((1+x)/(1-4x^2))` -/
def P1619087183298396983.Spec : Prop :=
  ∀ n, P1619087183298396983.a n = A213173 n

end A213173

/-! ## A213173.P2055701677933459179

`floor(2^(or(1, n)-1))`
-/

namespace A213173.P2055701677933459179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((Nat.lor 1 n : ℤ) - 1 : ℤ)⌋

end

end A213173.P2055701677933459179

namespace A213173

/-- `floor(2^(or(1, n)-1))` -/
def P2055701677933459179.Spec : Prop :=
  ∀ n, P2055701677933459179.a n = A213173 n

end A213173

/-! ## A213173.P14515838569499548107

`ceil(2^(or(1, n)-1))`
-/

namespace A213173.P14515838569499548107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((Nat.lor 1 n : ℤ) - 1 : ℤ)⌉

end

end A213173.P14515838569499548107

namespace A213173

/-- `ceil(2^(or(1, n)-1))` -/
def P14515838569499548107.Spec : Prop :=
  ∀ n, P14515838569499548107.a n = A213173 n

end A213173

/-! ## A213173.P7259154076163441512

`round(2^(or(1, n)-1))`
-/

namespace A213173.P7259154076163441512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.lor 1 n : ℤ) - 1 : ℤ))

end

end A213173.P7259154076163441512

namespace A213173

/-- `round(2^(or(1, n)-1))` -/
def P7259154076163441512.Spec : Prop :=
  ∀ n, P7259154076163441512.a n = A213173 n

end A213173

/-! ## A213173.P1132807811709811854

`(∏[or(n, -2)]/2)²`
-/

namespace A213173.P1132807811709811854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2

end

end A213173.P1132807811709811854

namespace A213173

/-- `(∏[or(n, -2)]/2)²` -/
def P1132807811709811854.Spec : Prop :=
  ∀ n, P1132807811709811854.a n = (A213173 n : ℚ)

end A213173

/-! ## A213173.P9448269723265985413

`2*2^or(1, n-2)`
-/

namespace A213173.P9448269723265985413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 2) : ℤ)

end

end A213173.P9448269723265985413

namespace A213173

/-- `2*2^or(1, n-2)` -/
def P9448269723265985413.Spec : Prop :=
  ∀ n, P9448269723265985413.a n = (A213173 n : ℚ)

end A213173

/-! ## A213173.P4312479563702265134

`∏[5-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A213173.P4312479563702265134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213173.P4312479563702265134

namespace A213173

/-- `∏[5-a(n-1)]` -/
def P4312479563702265134.Spec : Prop :=
  ∀ n, P4312479563702265134.a n = A213173 n

end A213173

/-! ## A213173.P8980470138238370229

`∏[ceil(4^((n-1)%2))]`
-/

namespace A213173.P8980470138238370229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213173.P8980470138238370229

namespace A213173

/-- `∏[ceil(4^((n-1)%2))]` -/
def P8980470138238370229.Spec : Prop :=
  ∀ n, P8980470138238370229.a n = A213173 n

end A213173

/-! ## A213173.P3603972426392287257

`∏[gcd(n², 4%(n+3))]`
-/

namespace A213173.P3603972426392287257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (4 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213173.P3603972426392287257

namespace A213173

/-- `∏[gcd(n², 4%(n+3))]` -/
def P3603972426392287257.Spec : Prop :=
  ∀ n, (P3603972426392287257.a n : ℤ) = A213173 n

end A213173

/-! ## A213173.P10247046755560641481

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=1`
-/

namespace A213173.P10247046755560641481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A213173.P10247046755560641481

namespace A213173

/-- `a(n-2)/(1/2)²` -/
def P10247046755560641481.Spec : Prop :=
  ∀ n, P10247046755560641481.a n = (A213173 n : ℚ)

end A213173

/-! ## A213173.P8922913904974717821

`(2^∑[1-a(n-1)])²` with `a(0)=0, a(1)=0`
-/

namespace A213173.P8922913904974717821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)) ^ 2

end

end A213173.P8922913904974717821

namespace A213173

/-- `(2^∑[1-a(n-1)])²` -/
def P8922913904974717821.Spec : Prop :=
  ∀ n, P8922913904974717821.a n = (A213173 n : ℚ)

end A213173

/-! ## A213173.P4768480823773571590

`floor(2^∑[2-a(n-1)])` with `a(0)=0, a(1)=0`
-/

namespace A213173.P4768480823773571590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A213173.P4768480823773571590

namespace A213173

/-- `floor(2^∑[2-a(n-1)])` -/
def P4768480823773571590.Spec : Prop :=
  ∀ n, P4768480823773571590.a n = A213173 n

end A213173

/-! ## A213173.P8620510686681533485

`floor(a(n-2)/(1-3/4))` with `a(0)=1, a(1)=1`
-/

namespace A213173.P8620510686681533485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A213173.P8620510686681533485

namespace A213173

/-- `floor(a(n-2)/(1-3/4))` -/
def P8620510686681533485.Spec : Prop :=
  ∀ n, P8620510686681533485.a n = A213173 n

end A213173

/-! ## A213173.P14745771577744550950

`a(n-2)+lcm(3, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A213173.P14745771577744550950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 3 (a (n - 2))

end

end A213173.P14745771577744550950

namespace A213173

/-- `a(n-2)+lcm(3, a(n-2))` -/
def P14745771577744550950.Spec : Prop :=
  ∀ n, (P14745771577744550950.a n : ℤ) = A213173 n

end A213173

/-! ## A213173.P10752935173541045234

`∑[a(n-2)+a(n-2)]²` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A213173.P10752935173541045234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A213173.P10752935173541045234

namespace A213173

/-- `∑[a(n-2)+a(n-2)]²` -/
def P10752935173541045234.Spec : Prop :=
  ∀ n, (P10752935173541045234.a n : ℤ) = A213173 n

end A213173

/-! ## A213173.P10253393138038920416

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A213173.P10253393138038920416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A213173.P10253393138038920416

namespace A213173

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P10253393138038920416.Spec : Prop :=
  ∀ n, (P10253393138038920416.a n : ℤ) = A213173 n

theorem P10253393138038920416.correct : P10253393138038920416.Spec := by
  intro n
  simp only [A213173, Nat.add_sub_cancel, A213173.P10253393138038920416.a, A213173.P16493910666287653192.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A213173

/-!
# A213175: Primes p such that subtracting two from any single decimal digit of p produces another prime with restriction that first digit may not be changed to a 0 (obviously p cannot contain digits less than 2).

The programs for A213175, there is no canonical definition to state claims against.
-/

/-! ## A213175.P6657015897493395874

`A006512(eq[A001222(n+1), A341973(n+4)])`
-/

namespace A213175.P6657015897493395874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341973 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A213175.P6657015897493395874

/-!
# A213176: Numbers n such that (13^n + 4^n)/17 is prime.

The programs for A213176, there is no canonical definition to state claims against.
-/

/-! ## A213176.P9393094477463268109

`A020619((p?[5*n-1]-4)/5-∑{e}[n+1, #])`
-/

namespace A213176.P9393094477463268109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020619 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4 : ℚ) / 5 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))).toNat

end

end A213176.P9393094477463268109

/-! ## A213176.P11147862330200223189

`A156284(A045537(n)+ceil(2*(2^n-1)/3))`
-/

namespace A213176.P11147862330200223189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A045537 n + ⌈2 * (((2 ^ n : ℤ) - 1 : ℚ) / 3)⌉).toNat

end

end A213176.P11147862330200223189

/-!
# A213177: Number T(n,k) of parts in all partitions of n with largest multiplicity k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A213177, there is no canonical definition to state claims against.
-/

/-! ## A213177.P10838225053602671267

`A001222(C(A302889(n+1), A048723(n)))`
-/

namespace A213177.P10838225053602671267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A302889 (n + 1)).toNat (A048723 n).toNat)

end

end A213177.P10838225053602671267

/-! ## A213177.P10259523998461954872

`A172475(A172467(n+1)^A331509(n)²)`
-/

namespace A213177.P10259523998461954872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (SequenceMachineLib.roundAway ((A172467 (n + 1) : ℚ) ^ (A331509 n ^ 2 : ℤ))).toNat

end

end A213177.P10259523998461954872

/-! ## A213177.P5574574186930483060

`A172475(A331509(n)^7*A172467(n+1))`
-/

namespace A213177.P5574574186930483060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (A331509 n ^ 7 * A172467 (n + 1)).toNat

end

end A213177.P5574574186930483060

/-! ## A213177.P4999321299717030485

`A172475(A172467(n+1)^A331509(n)^7)`
-/

namespace A213177.P4999321299717030485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (SequenceMachineLib.roundAway ((A172467 (n + 1) : ℚ) ^ (A331509 n ^ 7 : ℤ))).toNat

end

end A213177.P4999321299717030485

/-! ## A213177.P9020114476669028260

`A255270(lcm(A004006(n), A271424(n)))`
-/

namespace A213177.P9020114476669028260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (Int.lcm (A004006 n) (A271424 n))

end

end A213177.P9020114476669028260

/-!
# A213178: Total cell count of the expansion of a single cell, utilizing S1/B1 Game of Life cellular automata rules.

The programs for A213178, the canonical program `A213178.P17333174942045343673` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213178 has offset 0).

The definition of A213178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213178.P17333174942045343673

`4*a(and(n, n-2))` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213178

/-- `4*a(and(n, n-2))` -/
def P17333174942045343673.Spec : Prop :=
  ∀ n, (P17333174942045343673.a n : ℤ) = A213178 n

theorem P17333174942045343673.correct : P17333174942045343673.Spec := by
  intro n
  simp only [A213178]

end A213178

/-! ## A213178.P17566501237186828421

`gcd(2, n+1)*A102376(n)`
-/

namespace A213178.P17566501237186828421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A102376 n

end

end A213178.P17566501237186828421

namespace A213178

/-- `gcd(2, n+1)*A102376(n)` -/
def P17566501237186828421.Spec : Prop :=
  ∀ n, P17566501237186828421.a n = A213178 n

end A213178

/-! ## A213178.P15628942618461339335

`(char[2*n+1]+1)*4^A000120(n)`
-/

namespace A213178.P15628942618461339335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) * (4 : ℚ) ^ (A000120 n : ℤ)

end

end A213178.P15628942618461339335

namespace A213178

/-- `(char[2*n+1]+1)*4^A000120(n)` -/
def P15628942618461339335.Spec : Prop :=
  ∀ n, P15628942618461339335.a n = (A213178 n : ℚ)

end A213178

/-! ## A213178.P2065291273822932356

`A000034(n)*A102376(n)`
-/

namespace A213178.P2065291273822932356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A102376 n

end

end A213178.P2065291273822932356

namespace A213178

/-- `A000034(n)*A102376(n)` -/
def P2065291273822932356.Spec : Prop :=
  ∀ n, P2065291273822932356.a n = A213178 n

end A213178

/-! ## A213178.P11422253758952325513

`A001316(n)²*A000034(n)`
-/

namespace A213178.P11422253758952325513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A000034 n

end

end A213178.P11422253758952325513

namespace A213178

/-- `A001316(n)²*A000034(n)` -/
def P11422253758952325513.Spec : Prop :=
  ∀ n, P11422253758952325513.a n = A213178 n

end A213178

/-! ## A213178.P5530184385886448718

`(A000035(n)+1)*A001316(n)²`
-/

namespace A213178.P5530184385886448718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A001316 n ^ 2

end

end A213178.P5530184385886448718

namespace A213178

/-- `(A000035(n)+1)*A001316(n)²` -/
def P5530184385886448718.Spec : Prop :=
  ∀ n, P5530184385886448718.a n = A213178 n

end A213178

/-! ## A213178.P4436783788917370984

`(A038573(n)+1)²*A000034(n)`
-/

namespace A213178.P4436783788917370984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) ^ 2 * A000034 n

end

end A213178.P4436783788917370984

namespace A213178

/-- `(A038573(n)+1)²*A000034(n)` -/
def P4436783788917370984.Spec : Prop :=
  ∀ n, P4436783788917370984.a n = A213178 n

end A213178

/-! ## A213178.P18036037379723398988

`A001316(n)²*A040001(n+1)`
-/

namespace A213178.P18036037379723398988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A040001 (n + 1)

end

end A213178.P18036037379723398988

namespace A213178

/-- `A001316(n)²*A040001(n+1)` -/
def P18036037379723398988.Spec : Prop :=
  ∀ n, P18036037379723398988.a n = A213178 n

end A213178

/-! ## A213178.P17259542464293588827

`(2-A059841(n))*A001316(n)²`
-/

namespace A213178.P17259542464293588827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A001316 n ^ 2

end

end A213178.P17259542464293588827

namespace A213178

/-- `(2-A059841(n))*A001316(n)²` -/
def P17259542464293588827.Spec : Prop :=
  ∀ n, P17259542464293588827.a n = A213178 n

end A213178

/-! ## A213178.P3502087048023092579

`A000142(Δ[or(1, n)])*A102376(n)`
-/

namespace A213178.P3502087048023092579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A102376 n

end

end A213178.P3502087048023092579

namespace A213178

/-- `A000142(Δ[or(1, n)])*A102376(n)` -/
def P3502087048023092579.Spec : Prop :=
  ∀ n, P3502087048023092579.a n = A213178 n

end A213178

/-! ## A213178.P17771667289246561359

`(A109613(n+1)-n)*A102376(n)`
-/

namespace A213178.P17771667289246561359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 (n + 1) - (n : ℤ)) * A102376 n

end

end A213178.P17771667289246561359

namespace A213178

/-- `(A109613(n+1)-n)*A102376(n)` -/
def P17771667289246561359.Spec : Prop :=
  ∀ n, P17771667289246561359.a n = A213178 n

end A213178

/-! ## A213178.P17540390959672031246

`A077385(Δ[or(1, n)]+1)*A102376(n)`
-/

namespace A213178.P17540390959672031246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * A102376 n

end

end A213178.P17540390959672031246

namespace A213178

/-- `A077385(Δ[or(1, n)]+1)*A102376(n)` -/
def P17540390959672031246.Spec : Prop :=
  ∀ n, P17540390959672031246.a n = A213178 n

end A213178

/-! ## A213178.P17249996705973514281

`A000034(n)*A000302(A000120(n))`
-/

namespace A213178.P17249996705973514281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000302 (A000120 n).toNat

end

end A213178.P17249996705973514281

namespace A213178

/-- `A000034(n)*A000302(A000120(n))` -/
def P17249996705973514281.Spec : Prop :=
  ∀ n, P17249996705973514281.a n = A213178 n

end A213178

/-! ## A213178.P7129230914245712380

`A001316(n)*A001316(A014601(n))`
-/

namespace A213178.P7129230914245712380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A001316 (A014601 n).toNat

end

end A213178.P7129230914245712380

namespace A213178

/-- `A001316(n)*A001316(A014601(n))` -/
def P7129230914245712380.Spec : Prop :=
  ∀ n, P7129230914245712380.a n = A213178 n

end A213178

/-! ## A213178.P11247692827948170700

`A001316(n)²*A273126(A071044(n))`
-/

namespace A213178.P11247692827948170700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2 * A273126 (A071044 n).toNat

end

end A213178.P11247692827948170700

namespace A213178

/-- `A001316(n)²*A273126(A071044(n))` -/
def P11247692827948170700.Spec : Prop :=
  ∀ n, P11247692827948170700.a n = A213178 n

end A213178

/-! ## A213178.P18244261893014025435

`A000034(n)*A000079(2*A000120(n))`
-/

namespace A213178.P18244261893014025435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000079 (2 * A000120 n).toNat

end

end A213178.P18244261893014025435

namespace A213178

/-- `A000034(n)*A000079(2*A000120(n))` -/
def P18244261893014025435.Spec : Prop :=
  ∀ n, P18244261893014025435.a n = A213178 n

end A213178

/-! ## A213178.P10709962352524466871

`A000578(A060632(2*n))/A060632(n)`
-/

namespace A213178.P10709962352524466871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A060632 (2 * n)).toNat : ℚ) / (A060632 n : ℚ)

end

end A213178.P10709962352524466871

namespace A213178

/-- `A000578(A060632(2*n))/A060632(n)` -/
def P10709962352524466871.Spec : Prop :=
  ∀ n, P10709962352524466871.a n = (A213178 n : ℚ)

end A213178

/-! ## A213178.P7009021637166796687

`A001316(n)/A060632(n)*A001316(n)²`
-/

namespace A213178.P7009021637166796687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A060632 n : ℚ) * (A001316 n ^ 2 : ℚ)

end

end A213178.P7009021637166796687

namespace A213178

/-- `A001316(n)/A060632(n)*A001316(n)²` -/
def P7009021637166796687.Spec : Prop :=
  ∀ n, P7009021637166796687.a n = (A213178 n : ℚ)

end A213178

/-! ## A213178.P5302309920659581899

`A001316(A047461(n+1)-1)*A001316(n)`
-/

namespace A213178.P5302309920659581899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A047461 (n + 1) - 1).toNat * A001316 n

end

end A213178.P5302309920659581899

namespace A213178

/-- `A001316(A047461(n+1)-1)*A001316(n)` -/
def P5302309920659581899.Spec : Prop :=
  ∀ n, P5302309920659581899.a n = A213178 n

end A213178

/-! ## A213178.P14837461720183172187

`A000034(n)*A001316(n)*A001316(A038573(n))`
-/

namespace A213178.P14837461720183172187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A001316 n * A001316 (A038573 n).toNat

end

end A213178.P14837461720183172187

namespace A213178

/-- `A000034(n)*A001316(n)*A001316(A038573(n))` -/
def P14837461720183172187.Spec : Prop :=
  ∀ n, P14837461720183172187.a n = A213178 n

end A213178

/-!
# A213179: Numbers k such that 2*k is a partition number.

The programs for A213179, there is no canonical definition to state claims against.
-/

/-! ## A213179.P3544662819422077423

`A052001(n+1)/2`
-/

namespace A213179.P3544662819422077423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052001 (n + 1) : ℚ) / 2

end

end A213179.P3544662819422077423

/-! ## A213179.P3651627051584798764

`A095814(A001560(n+1))`
-/

namespace A213179.P3651627051584798764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095814 (A001560 (n + 1)).toNat

end

end A213179.P3651627051584798764

/-! ## A213179.P7247483407385567908

`∪[A163286(n+1), A163288(n+1)]`
-/

namespace A213179.P7247483407385567908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213179.P7247483407385567908

/-! ## A213179.P4876763177504382146

`A000041(eq[0, A040051(n)])/2`
-/

namespace A213179.P4876763177504382146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A213179.P4876763177504382146

/-! ## A213179.P16437219284061145136

`A000041(eq[0, A000041(n)%2])/2`
-/

namespace A213179.P16437219284061145136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A213179.P16437219284061145136

/-! ## A213179.P17073042009377709428

`A000041(lt[1, gcd(2, A000041(n))])/2`
-/

namespace A213179.P17073042009377709428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A213179.P17073042009377709428

/-! ## A213179.P16057402863886919319

`A000041(eq[0, and(1, A000041(n))])/2`
-/

namespace A213179.P16057402863886919319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000041 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A213179.P16057402863886919319

/-!
# A213181: Number of chains of even numbers of length 2 or more in the Collatz (3x+1) trajectory of n.

The programs for A213181, there is no canonical definition to state claims against.
-/

/-! ## A213181.P2719315684759450759

`A160541(gcd(∑[n], (n+1)²))`
-/

namespace A213181.P2719315684759450759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) ((n + 1) ^ 2))

end

end A213181.P2719315684759450759

/-! ## A213181.P9007463978126714394

`A160541(floor(n/(n%2+1))+1)`
-/

namespace A213181.P9007463978126714394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A213181.P9007463978126714394

/-! ## A213181.P14807162431039359796

`A160541((∑[n]+n)%(n+1)+1)`
-/

namespace A213181.P14807162431039359796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A213181.P14807162431039359796

/-! ## A213181.P15709995669158568510

`A160541(A026741(n+1))`
-/

namespace A213181.P15709995669158568510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A026741 (n + 1)).toNat

end

end A213181.P15709995669158568510

/-! ## A213181.P15758731018618469598

`A160541(A214682(n+1))`
-/

namespace A213181.P15758731018618469598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A214682 (n + 1)).toNat

end

end A213181.P15758731018618469598

/-! ## A213181.P15623472140296857767

`A346965(n+1)+A011765(n+1)`
-/

namespace A213181.P15623472140296857767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346965 (n + 1) + A011765 (n + 1)

end

end A213181.P15623472140296857767

/-! ## A213181.P16271108181907647979

`A286380(n+1)-A213209(n+1)`
-/

namespace A213181.P16271108181907647979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A213209 (n + 1)

end

end A213181.P16271108181907647979

/-! ## A213181.P11232788241847684135

`A160541(n+1)-Δ[A008619(A008619(n))]`
-/

namespace A213181.P11232788241847684135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (n + 1) - (f1 (n + 1) - f1 n)

end

end A213181.P11232788241847684135

/-! ## A213181.P17075506179610032346

`A160541(A283971(n+1))`
-/

namespace A213181.P17075506179610032346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A283971 (n + 1)).toNat

end

end A213181.P17075506179610032346

/-! ## A213181.P13941139875184093676

`A078719(n+1)-(A213209(n+1)+A000035(n+1))`
-/

namespace A213181.P13941139875184093676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - (A213209 (n + 1) + A000035 (n + 1))

end

end A213181.P13941139875184093676

/-! ## A213181.P7380131278868803814

`A160541(A165342(n+1))`
-/

namespace A213181.P7380131278868803814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160541 (A165342 (n + 1)).toNat

end

end A213181.P7380131278868803814

/-!
# A213182: Numbers which may represent a date in "condensed European notation" DDMMYY.

The programs for A213182, there is no canonical definition to state claims against.
-/

/-! ## A213182.P1288601368075539597

`(10/cos(atan(10)))²+n`
-/

namespace A213182.P1288601368075539597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 / Real.cos (Real.arctan (10 : ℝ))) ^ 2 + (n : ℝ)

end

end A213182.P1288601368075539597

/-!
# A213183: Initialize a(1)=R=1. Repeat: copy the last R preceding terms to current position; increment R; do twice: append the least integer that has not appeared in the sequence yet.

The programs for A213183, there is no canonical definition to state claims against.
-/

/-! ## A213183.P14967275369514997419

`1-C(∑[char[∑[n]-2]]+1, 2)+n`
-/

namespace A213183.P14967275369514997419
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 : ℤ) + (n : ℤ)

end

end A213183.P14967275369514997419

/-! ## A213183.P579392400707470501

`(a(n-1)+1)/(char[∑[n]-2]+1)` with `a(0)=1`
-/

namespace A213183.P579392400707470501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A213183.P579392400707470501

/-! ## A213183.P4924606199130480263

`∑[1-A132440(n)]`
-/

namespace A213183.P4924606199130480263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213183.P4924606199130480263

/-! ## A213183.P13007985383838618246

`∑[1-A218272(n)]`
-/

namespace A213183.P13007985383838618246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A218272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213183.P13007985383838618246

/-! ## A213183.P9465500353096332175

`A051162(n+2)-1`
-/

namespace A213183.P9465500353096332175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (n + 2) - 1

end

end A213183.P9465500353096332175

/-! ## A213183.P8480249240508645370

`A134478(n+2)-1`
-/

namespace A213183.P8480249240508645370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (n + 2) - 1

end

end A213183.P8480249240508645370

/-! ## A213183.P11527451435271730613

`A094727(n+3)-2`
-/

namespace A213183.P11527451435271730613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 3) - 2

end

end A213183.P11527451435271730613

/-! ## A213183.P173039727535877446

`A108872(n+3)-3`
-/

namespace A213183.P173039727535877446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 3) - 3

end

end A213183.P173039727535877446

/-! ## A213183.P820233548121418673

`∑[∑[-Δ[A134402(n)]]]`
-/

namespace A213183.P820233548121418673
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213183.P820233548121418673

/-! ## A213183.P549219244260094922

`∑[1-A134402(n+1)]`
-/

namespace A213183.P549219244260094922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A134402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213183.P549219244260094922

/-!
# A213185: For the Collatz (3x+1) iteration starting at n, number of integers k such that T(n,k) = T(n-1,k) + 1 where T(n,k) is the k-th number of the trajectory (n is not counted).

The programs for A213185, there is no canonical definition to state claims against.
-/

/-! ## A213185.P10594681562711809850

`A261423(A129853(n))%A355731(n+1)`
-/

namespace A213185.P10594681562711809850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261423 (A129853 n).toNat) (A355731 (n + 1))

end

end A213185.P10594681562711809850

/-!
# A213187: a(n) = (p+1)/2 if 4 | p+1, and p otherwise, where p is the least prime > n with 2(n+1)-p prime.

The programs for A213187, there is no canonical definition to state claims against.
-/

/-! ## A213187.P3125592903930682051

`A234345(n+2)-A004526(A097706(A234345(n+2)))`
-/

namespace A213187.P3125592903930682051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 2) - A004526 (A097706 (A234345 (n + 2)).toNat).toNat

end

end A213187.P3125592903930682051

/-!
# A213188: Triangular numbers that are hypotenuse and a leg of a Pythagorean triple.

The programs for A213188, there is no canonical definition to state claims against.
-/

/-! ## A213188.P17757523169944127821

`A117892(A228865(n+2))`
-/

namespace A213188.P17757523169944127821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A228865 (n + 2)).toNat

end

end A213188.P17757523169944127821

/-!
# A213189: Triangular numbers which are leg of a Pythagorean triple with hypotenuse in A213188.

The programs for A213189, there is no canonical definition to state claims against.
-/

/-! ## A213189.P9867074019584266410

`C(A049508(n+2), A324191(A232956(n+1)))`
-/

namespace A213189.P9867074019584266410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049508 (n + 2)).toNat (A324191 (A232956 (n + 1)).toNat).toNat

end

end A213189.P9867074019584266410

/-!
# A213190: a(0)=1, a(1)=1, a(n) = n*a(n-1) + 3*a(n-2).

The programs for A213190, the canonical program `A213190.P13032820429675853940` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213190 has offset 0).

The definition of A213190 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+3*a(n-2)` (program `A213190.P13032820429675853940`, by `A213190.P13032820429675853940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213190.P13032820429675853940

`n*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A213190

/-- `n*a(n-1)+3*a(n-2)` -/
def P13032820429675853940.Spec : Prop :=
  ∀ n, (P13032820429675853940.a n : ℤ) = A213190 n

theorem P13032820429675853940.correct : P13032820429675853940.Spec := by
  intro n
  simp only [A213190]

end A213190

/-! ## A213190.P17651373069556889438

`∏[3/a(n-1)+n]` with `a(0)=1, a(1)=1`
-/

namespace A213190.P17651373069556889438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 / f1 (n - 1) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213190.P17651373069556889438

namespace A213190

/-- `∏[3/a(n-1)+n]` -/
def P17651373069556889438.Spec : Prop :=
  ∀ n, P17651373069556889438.a n = (A213190 n : ℚ)

end A213190

/-! ## A213190.P6516369817322114346

`4*a(n-2)-(a(n-2)-n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A213190.P6516369817322114346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 2) - (a (n - 2) - (n : ℤ) * a (n - 1))

end

end A213190.P6516369817322114346

namespace A213190

/-- `4*a(n-2)-(a(n-2)-n*a(n-1))` -/
def P6516369817322114346.Spec : Prop :=
  ∀ n, P6516369817322114346.a n = A213190 n

end A213190

/-! ## A213190.P7089055108597651384

`A008486(a(n-2))+n*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A213190.P7089055108597651384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008486 (a (n - 2)).toNat + (n : ℤ) * a (n - 1)

end

end A213190.P7089055108597651384

namespace A213190

/-- `A008486(a(n-2))+n*a(n-1)` -/
def P7089055108597651384.Spec : Prop :=
  ∀ n, P7089055108597651384.a n = A213190 n

end A213190

/-!
# A213191: Total sum A(n,k) of k-th powers of parts in all partitions of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A213191, there is no canonical definition to state claims against.
-/

/-! ## A213191.P16706077909223865103

`A000720(A208763(n+1))^∑[A106433(n)]`
-/

namespace A213191.P16706077909223865103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A208763 (n + 1)).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A213191.P16706077909223865103

/-! ## A213191.P8122741110662517645

`A000720(A208763(n+1)%A110600(n+1))`
-/

namespace A213191.P8122741110662517645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A208763 (n + 1)) (A110600 (n + 1))).toNat

end

end A213191.P8122741110662517645

/-! ## A213191.P12930645245890141767

`A000720(A208763(n+1))%A321513(3*n+4)`
-/

namespace A213191.P12930645245890141767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A208763 (n + 1)).toNat) (A321513 (3 * n + 4))

end

end A213191.P12930645245890141767

/-! ## A213191.P13245716433999176351

`A000720(A208763(n+1))^A014963(A018062(n))`
-/

namespace A213191.P13245716433999176351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A208763 (n + 1)).toNat : ℚ) ^ (A014963 (A018062 n).toNat : ℤ)

end

end A213191.P13245716433999176351

/-! ## A213191.P11856989726533663797

`A321936(A080165(n+1))+A139601(n)`
-/

namespace A213191.P11856989726533663797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A080165 (n + 1)).toNat + A139601 n

end

end A213191.P11856989726533663797

/-!
# A213192: G.f. satisfies: A(x) = 1 + x * sqrt( d/dx x*A(x)^4 ).

The programs for A213192, there is no canonical definition to state claims against.
-/

/-! ## A213192.P6445379194348464767

`A047298(or(n, A059849(n)))`
-/

namespace A213192.P6445379194348464767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047298 (Int.lor (n : ℤ) (A059849 n)).toNat

end

end A213192.P6445379194348464767

/-! ## A213192.P4098094184610064643

`A103354(A027851(n)+A000142(n))`
-/

namespace A213192.P4098094184610064643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103354 (A027851 n + A000142 n).toNat

end

end A213192.P4098094184610064643

/-!
# A213194: First inverse function (numbers of rows) for pairing function A211377.

The programs for A213194, the canonical program `A213194.P3452364425526493797` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213194 has offset 1).

The definition of A213194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213194.P3452364425526493797

`A008619(A060511(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A213194

/-- `A008619(A060511(n))` -/
def P3452364425526493797.Spec : Prop :=
  ∀ n, P3452364425526493797.a n = A213194 (n + 1)

theorem P3452364425526493797.correct : P3452364425526493797.Spec := by
  intro n
  simp only [A213194, Nat.add_sub_cancel]

end A213194

/-! ## A213194.P3808550636395431050

`A065033(A060511(n)+1)`
-/

namespace A213194.P3808550636395431050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A060511 n + 1).toNat

end

end A213194.P3808550636395431050

namespace A213194

/-- `A065033(A060511(n)+1)` -/
def P3808550636395431050.Spec : Prop :=
  ∀ n, P3808550636395431050.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P573623717955427108

`A110654(A060511(n)+1)`
-/

namespace A213194.P573623717955427108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A060511 n + 1).toNat

end

end A213194.P573623717955427108

namespace A213194

/-- `A110654(A060511(n)+1)` -/
def P573623717955427108.Spec : Prop :=
  ∀ n, P573623717955427108.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P3377438012277975149

`A002260(A199855(n+1))`
-/

namespace A213194.P3377438012277975149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A199855 (n + 1)).toNat

end

end A213194.P3377438012277975149

namespace A213194

/-- `A002260(A199855(n+1))` -/
def P3377438012277975149.Spec : Prop :=
  ∀ n, P3377438012277975149.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P7202366791895629659

`A002260(A213196(n+1))`
-/

namespace A213194.P7202366791895629659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A213196 (n + 1)).toNat

end

end A213194.P7202366791895629659

namespace A213194

/-- `A002260(A213196(n+1))` -/
def P7202366791895629659.Spec : Prop :=
  ∀ n, P7202366791895629659.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P13337342692457522603

`A071797(∑[A002260(n+1)%2])`
-/

namespace A213194.P13337342692457522603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213194.P13337342692457522603

namespace A213194

/-- `A071797(∑[A002260(n+1)%2])` -/
def P13337342692457522603.Spec : Prop :=
  ∀ n, P13337342692457522603.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P2150636824192270963

`A071797(∑[A004201(n+1)%2])`
-/

namespace A213194.P2150636824192270963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004201 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213194.P2150636824192270963

namespace A213194

/-- `A071797(∑[A004201(n+1)%2])` -/
def P2150636824192270963.Spec : Prop :=
  ∀ n, P2150636824192270963.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P14847006962098733617

`A071797(∑[and(1, A002260(n+1))])`
-/

namespace A213194.P14847006962098733617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002260 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213194.P14847006962098733617

namespace A213194

/-- `A071797(∑[and(1, A002260(n+1))])` -/
def P14847006962098733617.Spec : Prop :=
  ∀ n, P14847006962098733617.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P5291948556761093040

`A071797(∑[and(1, A004201(n+1))])`
-/

namespace A213194.P5291948556761093040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213194.P5291948556761093040

namespace A213194

/-- `A071797(∑[and(1, A004201(n+1))])` -/
def P5291948556761093040.Spec : Prop :=
  ∀ n, P5291948556761093040.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P4935156083224411002

`A209279(A380245(n+1))`
-/

namespace A213194.P4935156083224411002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A380245 (n + 1)).toNat

end

end A213194.P4935156083224411002

namespace A213194

/-- `A209279(A380245(n+1))` -/
def P4935156083224411002.Spec : Prop :=
  ∀ n, P4935156083224411002.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P16951095886910417896

`A057555(2*A213196(n+1)-1)`
-/

namespace A213194.P16951095886910417896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A213196 (n + 1) - 1).toNat

end

end A213194.P16951095886910417896

namespace A213194

/-- `A057555(2*A213196(n+1)-1)` -/
def P16951095886910417896.Spec : Prop :=
  ∀ n, P16951095886910417896.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P4380284112195807574

`A057555(A213196(n+1)+A213196(n+1)-1)`
-/

namespace A213194.P4380284112195807574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A213196 (n + 1) + (A213196 (n + 1) - 1)).toNat

end

end A213194.P4380284112195807574

namespace A213194

/-- `A057555(A213196(n+1)+A213196(n+1)-1)` -/
def P4380284112195807574.Spec : Prop :=
  ∀ n, P4380284112195807574.a n = A213194 (n + 1)

end A213194

/-! ## A213194.P17882938335481947174

`A194195(A060734(A216252(A060736(n+1))))`
-/

namespace A213194.P17882938335481947174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A060734 (A216252 (A060736 (n + 1)).toNat).toNat).toNat

end

end A213194.P17882938335481947174

namespace A213194

/-- `A194195(A060734(A216252(A060736(n+1))))` -/
def P17882938335481947174.Spec : Prop :=
  ∀ n, P17882938335481947174.a n = A213194 (n + 1)

end A213194

/-!
# A213195: Second inverse function (of columns) for pairing function A211377.

The programs for A213195, the canonical program `A213195.P10148847701811811621` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213195 has offset 1).

The definition of A213195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213195.P10148847701811811621

`A004736(A213196(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A213195

/-- `A004736(A213196(n+1))` -/
def P10148847701811811621.Spec : Prop :=
  ∀ n, P10148847701811811621.a n = A213195 (n + 1)

theorem P10148847701811811621.correct : P10148847701811811621.Spec := by
  intro n
  simp only [A213195, Nat.add_sub_cancel]

end A213195

/-! ## A213195.P7910172970426364186

`A003991(A213196(n+1))/A213194(n+1)`
-/

namespace A213195.P7910172970426364186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A213196 (n + 1)).toNat : ℚ) / (A213194 (n + 1) : ℚ)

end

end A213195.P7910172970426364186

namespace A213195

/-- `A003991(A213196(n+1))/A213194(n+1)` -/
def P7910172970426364186.Spec : Prop :=
  ∀ n, P7910172970426364186.a n = (A213195 (n + 1) : ℚ)

end A213195

/-! ## A213195.P14973472322799053750

`A057555(2*A213196(n+1))`
-/

namespace A213195.P14973472322799053750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * A213196 (n + 1)).toNat

end

end A213195.P14973472322799053750

namespace A213195

/-- `A057555(2*A213196(n+1))` -/
def P14973472322799053750.Spec : Prop :=
  ∀ n, P14973472322799053750.a n = A213195 (n + 1)

end A213195

/-! ## A213195.P5082398071368844421

`A194195(A060736(A216252(A060736(n+1))))`
-/

namespace A213195.P5082398071368844421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194195 (A060736 (A216252 (A060736 (n + 1)).toNat).toNat).toNat

end

end A213195.P5082398071368844421

namespace A213195

/-- `A194195(A060736(A216252(A060736(n+1))))` -/
def P5082398071368844421.Spec : Prop :=
  ∀ n, P5082398071368844421.a n = A213195 (n + 1)

end A213195

/-!
# A213196: Inverse permutation of A211377.

The programs for A213196, the canonical program `A213196.P17087712218540186127` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213196 has offset 1).

The definition of A213196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213196.P17087712218540186127

`A199855(A211377(A199855(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A213196

/-- `A199855(A211377(A199855(n+1)))` -/
def P17087712218540186127.Spec : Prop :=
  ∀ n, P17087712218540186127.a n = A213196 (n + 1)

theorem P17087712218540186127.correct : P17087712218540186127.Spec := by
  intro n
  simp only [A213196, Nat.add_sub_cancel]

end A213196

/-! ## A213196.P344158775277397997

`A216252(A060736(n+1))`
-/

namespace A213196.P344158775277397997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A060736 (n + 1)).toNat

end

end A213196.P344158775277397997

namespace A213196

/-- `A216252(A060736(n+1))` -/
def P344158775277397997.Spec : Prop :=
  ∀ n, P344158775277397997.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P16351309674624422599

`A216252(A220508(n)+1)`
-/

namespace A213196.P16351309674624422599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A220508 n + 1).toNat

end

end A213196.P16351309674624422599

namespace A213196

/-- `A216252(A220508(n)+1)` -/
def P16351309674624422599.Spec : Prop :=
  ∀ n, P16351309674624422599.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P14488508419815527178

`A216252(A060734((n²+1+n)%comp[∑[n]]))`
-/

namespace A213196.P14488508419815527178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A060734 ((n ^ 2 + 1 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A213196.P14488508419815527178

namespace A213196

/-- `A216252(A060734((n²+1+n)%comp[∑[n]]))` -/
def P14488508419815527178.Spec : Prop :=
  ∀ n, P14488508419815527178.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P11631205731112969827

`A216252(A060734(A064788(A060734(n+1))))`
-/

namespace A213196.P11631205731112969827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A060734 (A064788 (A060734 (n + 1)).toNat).toNat).toNat

end

end A213196.P11631205731112969827

namespace A213196

/-- `A216252(A060734(A064788(A060734(n+1))))` -/
def P11631205731112969827.Spec : Prop :=
  ∀ n, P11631205731112969827.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P15232549925434867696

`A216252(A081344(A211377(A216252(A081344(n+1)))))`
-/

namespace A213196.P15232549925434867696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A081344 (A211377 (A216252 (A081344 (n + 1)).toNat).toNat).toNat).toNat

end

end A213196.P15232549925434867696

namespace A213196

/-- `A216252(A081344(A211377(A216252(A081344(n+1)))))` -/
def P15232549925434867696.Spec : Prop :=
  ∀ n, P15232549925434867696.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P14474196562760235330

`A216252(ceil(A342354(n)/2))`
-/

namespace A213196.P14474196562760235330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 ⌈(A342354 n : ℚ) / 2⌉.toNat

end

end A213196.P14474196562760235330

namespace A213196

/-- `A216252(ceil(A342354(n)/2))` -/
def P14474196562760235330.Spec : Prop :=
  ∀ n, P14474196562760235330.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P16210252977759759685

`A216252(round(A342354(n)/2))`
-/

namespace A213196.P16210252977759759685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (SequenceMachineLib.roundAway ((A342354 n : ℚ) / 2)).toNat

end

end A213196.P16210252977759759685

namespace A213196

/-- `A216252(round(A342354(n)/2))` -/
def P16210252977759759685.Spec : Prop :=
  ∀ n, P16210252977759759685.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P2107182371538066416

`A216252((A342354(n)+1)/2)`
-/

namespace A213196.P2107182371538066416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (SequenceMachineLib.roundAway ((A342354 n + 1 : ℚ) / 2)).toNat

end

end A213196.P2107182371538066416

namespace A213196

/-- `A216252((A342354(n)+1)/2)` -/
def P2107182371538066416.Spec : Prop :=
  ∀ n, P2107182371538066416.a n = A213196 (n + 1)

end A213196

/-! ## A213196.P6282604642774344871

`A216252(A342354(n)-A220508(n))`
-/

namespace A213196.P6282604642774344871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216252 (A342354 n - A220508 n).toNat

end

end A213196.P6282604642774344871

namespace A213196

/-- `A216252(A342354(n)-A220508(n))` -/
def P6282604642774344871.Spec : Prop :=
  ∀ n, P6282604642774344871.a n = A213196 (n + 1)

end A213196

/-!
# A213199: Numbers k whose Collatz (3x+1) trajectory includes at least one term that is greater than k.

The programs for A213199, there is no canonical definition to state claims against.
-/

/-! ## A213199.P1048727188630630102

`comp[record[A213330(n+1)]]`
-/

namespace A213199.P1048727188630630102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213199.P1048727188630630102

/-! ## A213199.P3533783343513382710

`comp[C(A087258(n+1), n)]`
-/

namespace A213199.P3533783343513382710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087258 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A213199.P3533783343513382710

/-! ## A213199.P9244983975468045661

`lt[1, A087225(n+1)]+1`
-/

namespace A213199.P9244983975468045661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213199.P9244983975468045661

/-! ## A213199.P4206485176935836161

`lt[1, A213204(n+1)]+1`
-/

namespace A213199.P4206485176935836161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213199.P4206485176935836161

/-! ## A213199.P3374063360355486203

`comp[A025586(n+1)-1]+1`
-/

namespace A213199.P3374063360355486203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213199.P3374063360355486203

/-! ## A213199.P7213600982146744986

`comp[A033496(n+1)-1]+1`
-/

namespace A213199.P7213600982146744986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033496 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213199.P7213600982146744986

/-! ## A213199.P6413207064027230869

`lt[1, A220421(n+1)+1]+1`
-/

namespace A213199.P6413207064027230869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213199.P6413207064027230869

/-! ## A213199.P15602411069447923683

`eq[1, A087255(A028310(n))+1]`
-/

namespace A213199.P15602411069447923683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213199.P15602411069447923683

/-! ## A213199.P13826627238081700025

`eq[1, A008574(A087255(n+1))]+1`
-/

namespace A213199.P13826627238081700025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A087255 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213199.P13826627238081700025

/-! ## A213199.P13194304256936004540

`eq[1, A299764(A087255(n+2)+1)]+2`
-/

namespace A213199.P13194304256936004540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299764 (A087255 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A213199.P13194304256936004540

/-! ## A213199.P10828378313157729725

`eq[A025586(n+2), A270570(n+2)]+2`
-/

namespace A213199.P10828378313157729725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270570 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A213199.P10828378313157729725

/-! ## A213199.P6528305676752997567

`lt[A000203(A087258(n+1)+1), n+2]+1`
-/

namespace A213199.P6528305676752997567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A087258 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A213199.P6528305676752997567

/-! ## A213199.P9780934831835019028

`lt[A219190(n+1), A219190(A270570(n+2))]+2`
-/

namespace A213199.P9780934831835019028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219190 (A270570 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A213199.P9780934831835019028

