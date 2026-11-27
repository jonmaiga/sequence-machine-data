import SequenceMachineLib.Basic
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022

/-!
# A022600: Expansion of Product_{m>=1} (1+q^m)^(-5).

The programs for A022600, there is no canonical definition to state claims against.
-/

/-! ## A022600.P13131690713201897231

`A286352(2*n+∑[n+4]+11)`
-/

namespace A022600.P13131690713201897231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 11))

end

end A022600.P13131690713201897231

/-! ## A022600.P16790047346346933235

`gcd(n, n+1)*A286352(eq[11, A099375(n)])`
-/

namespace A022600.P16790047346346933235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022600.P16790047346346933235

/-! ## A022600.P3612423474740235792

`A286352(eq[11, A099375(n)])%A147996(n+1)`
-/

namespace A022600.P3612423474740235792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A147996 (n + 1))

end

end A022600.P3612423474740235792

/-! ## A022600.P127487792510352947

`A339720(2^n)`
-/

namespace A022600.P127487792510352947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339720 (2 ^ n)

end

end A022600.P127487792510352947

/-!
# A022601: Expansion of Product_{m>=1} (1+q^m)^(-6).

The programs for A022601, there is no canonical definition to state claims against.
-/

/-! ## A022601.P14419421800546247166

`(-1)^n*A112150(n)`
-/

namespace A022601.P14419421800546247166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A112150 n

end

end A022601.P14419421800546247166

/-! ## A022601.P13415701274314826912

`A058088(2*n)`
-/

namespace A022601.P13415701274314826912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058088 (2 * n)

end

end A022601.P13415701274314826912

/-! ## A022601.P5812230409827276826

`A112145(2*n)`
-/

namespace A022601.P5812230409827276826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112145 (2 * n)

end

end A022601.P5812230409827276826

/-! ## A022601.P14260719254036432373

`A112150(n)/A033999(n)`
-/

namespace A022601.P14260719254036432373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112150 n : ℚ) / (A033999 n : ℚ)

end

end A022601.P14260719254036432373

/-! ## A022601.P9885458486060993613

`∑{#}[n, A022598(#)*A022598(n-#)]`
-/

namespace A022601.P9885458486060993613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022598 k * A022598 (n - k)

end

end A022601.P9885458486060993613

/-! ## A022601.P271071526134094209

`A007249(n)*A112150(n)/A112142(n)`
-/

namespace A022601.P271071526134094209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007249 n * A112150 n : ℚ) / (A112142 n : ℚ)

end

end A022601.P271071526134094209

/-! ## A022601.P6375907835951583922

`2*A143895(n)-A052241(n)`
-/

namespace A022601.P6375907835951583922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143895 n - A052241 n

end

end A022601.P6375907835951583922

/-!
# A022602: Expansion of Product_{m>=1} (1+q^m)^(-7).

The programs for A022602, there is no canonical definition to state claims against.
-/

/-! ## A022602.P8920971544804393768

`A286352(A155212(n+4))`
-/

namespace A022602.P8920971544804393768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A155212 (n + 4)).toNat

end

end A022602.P8920971544804393768

/-! ## A022602.P11109528603518602736

`A339722(2^n)`
-/

namespace A022602.P11109528603518602736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339722 (2 ^ n)

end

end A022602.P11109528603518602736

/-!
# A022603: Indices of primes of form 3^p - 2.

The programs for A022603, there is no canonical definition to state claims against.
-/

/-! ## A022603.P10183516435314516043

`A055729(A014224(n+1))`
-/

namespace A022603.P10183516435314516043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A014224 (n + 1)).toNat

end

end A022603.P10183516435314516043

/-!
# A022604: Expansion of Product_{m>=1} (1+q^m)^(-9).

The programs for A022604, there is no canonical definition to state claims against.
-/

/-! ## A022604.P14420793351841887049

`A286352(A056000(n+6))`
-/

namespace A022604.P14420793351841887049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A056000 (n + 6)).toNat

end

end A022604.P14420793351841887049

/-! ## A022604.P3742591691477183475

`A339735(2^n)`
-/

namespace A022604.P3742591691477183475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339735 (2 ^ n)

end

end A022604.P3742591691477183475

/-!
# A022605: Expansion of Product_{m>=1} (1+q^m)^(-10).

The programs for A022605, there is no canonical definition to state claims against.
-/

/-! ## A022605.P17936226409695645794

`∑{#}[n, A022600(#)*A022600(n-#)]`
-/

namespace A022605.P17936226409695645794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022600 k * A022600 (n - k)

end

end A022605.P17936226409695645794

/-! ## A022605.P4726704190135524362

`A286352(eq[10, A025581(n)])`
-/

namespace A022605.P4726704190135524362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022605.P4726704190135524362

/-!
# A022606: Expansion of Product_{m>=1} (1+q^m)^(-11).

The programs for A022606, there is no canonical definition to state claims against.
-/

/-! ## A022606.P10099701962010602954

`A286352(eq[11, A025581(n)])`
-/

namespace A022606.P10099701962010602954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022606.P10099701962010602954

/-!
# A022608: Expansion of Product_{m>=1} (1+q^m)^(-13).

The programs for A022608, there is no canonical definition to state claims against.
-/

/-! ## A022608.P9085763331901114822

`A286352(eq[13, A025581(n)])`
-/

namespace A022608.P9085763331901114822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022608.P9085763331901114822

/-!
# A022609: Expansion of Product_{m>=1} (1+q^m)^(-14).

The programs for A022609, there is no canonical definition to state claims against.
-/

/-! ## A022609.P15956265928424950523

`∑{#}[n, A022602(#)*A022602(n-#)]`
-/

namespace A022609.P15956265928424950523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022602 k * A022602 (n - k)

end

end A022609.P15956265928424950523

/-! ## A022609.P296772840888160761

`A286352(eq[14, A025581(n)])`
-/

namespace A022609.P296772840888160761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022609.P296772840888160761

/-!
# A022610: Expansion of Product_{m>=1} (1+q^m)^(-15).

The programs for A022610, there is no canonical definition to state claims against.
-/

/-! ## A022610.P15897528798097337998

`A286352(eq[15, A025581(n)])`
-/

namespace A022610.P15897528798097337998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022610.P15897528798097337998

/-!
# A022611: Expansion of Product_{m>=1} (1+q^m)^(-16).

The programs for A022611, there is no canonical definition to state claims against.
-/

/-! ## A022611.P17129369212654608494

`∑{#}[n, A007259(#)*A007259(n-#)]`
-/

namespace A022611.P17129369212654608494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007259 k * A007259 (n - k)

end

end A022611.P17129369212654608494

/-! ## A022611.P4367497098020110905

`A286352(eq[16, A025581(n)])`
-/

namespace A022611.P4367497098020110905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022611.P4367497098020110905

/-!
# A022612: Expansion of Product_{m>=1} (1+q^m)^(-17).

The programs for A022612, there is no canonical definition to state claims against.
-/

/-! ## A022612.P1050137012196682850

`A286352(eq[17, A025581(n)])`
-/

namespace A022612.P1050137012196682850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022612.P1050137012196682850

/-!
# A022613: Expansion of Product_{m>=1} (1+q^m)^(-18).

The programs for A022613, there is no canonical definition to state claims against.
-/

/-! ## A022613.P11214632567147876491

`∑{#}[n, A022604(#)*A022604(n-#)]`
-/

namespace A022613.P11214632567147876491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022604 k * A022604 (n - k)

end

end A022613.P11214632567147876491

/-! ## A022613.P5762518505274942143

`A286352(eq[19, A004736(n+1)])`
-/

namespace A022613.P5762518505274942143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022613.P5762518505274942143

/-!
# A022614: Expansion of Product_{m>=1} (1+q^m)^(-19).

The programs for A022614, there is no canonical definition to state claims against.
-/

/-! ## A022614.P6967179350956138958

`A286352(eq[19, A025581(n)])`
-/

namespace A022614.P6967179350956138958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022614.P6967179350956138958

/-!
# A022615: Expansion of Product_{m>=1} (1+q^m)^(-20).

The programs for A022615, there is no canonical definition to state claims against.
-/

/-! ## A022615.P17768552451343138735

`∑{#}[n, A022605(#)*A022605(n-#)]`
-/

namespace A022615.P17768552451343138735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022605 k * A022605 (n - k)

end

end A022615.P17768552451343138735

/-! ## A022615.P10694102557342112777

`A286352(A056119(n+15))`
-/

namespace A022615.P10694102557342112777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A056119 (n + 15)).toNat

end

end A022615.P10694102557342112777

/-!
# A022617: Expansion of Product_{m>=1} (1+q^m)^(-22).

The programs for A022617, there is no canonical definition to state claims against.
-/

/-! ## A022617.P17433761751901793402

`∑{#}[n, A022606(#)*A022606(n-#)]`
-/

namespace A022617.P17433761751901793402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022606 k * A022606 (n - k)

end

end A022617.P17433761751901793402

/-!
# A022619: Triangle T(n,k)of numbers of asymmetric Boolean functions of n variables with exactly k = 0..2^n nonzero values (atoms) under action of complementing group C(n,2).

The programs for A022619, there is no canonical definition to state claims against.
-/

/-! ## A022619.P2599568716675881433

`A070878(A009998(A316740(n+1))*A070878(n))`
-/

namespace A022619.P2599568716675881433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (A009998 (A316740 (n + 1)).toNat * A070878 n).toNat

end

end A022619.P2599568716675881433

/-! ## A022619.P12353876055471023766

`A166352(and(A070866(n+1), A216971(n+1)))`
-/

namespace A022619.P12353876055471023766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166352 (Int.land (A070866 (n + 1)) (A216971 (n + 1))).toNat

end

end A022619.P12353876055471023766

/-! ## A022619.P327329923716282086

`A249349(A340611(lcm(n, 1-a(n-1))+1))` with `a(0)=0`
-/

namespace A022619.P327329923716282086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A249349 (A340611 (Int.lcm (n : ℤ) (1 - a (n - 1)) + 1)).toNat

end

end A022619.P327329923716282086

/-! ## A022619.P8356191423822117518

`A020656(A296270(n))%A071517(n+1)`
-/

namespace A022619.P8356191423822117518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020656 (A296270 n).toNat) (A071517 (n + 1))

end

end A022619.P8356191423822117518

/-! ## A022619.P12407069014003062894

`A323879(A041029(n))`
-/

namespace A022619.P12407069014003062894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323879 (A041029 n).toNat

end

end A022619.P12407069014003062894

/-!
# A022621: Expansion of Product_{m>=1} (1+q^m)^(-26).

The programs for A022621, there is no canonical definition to state claims against.
-/

/-! ## A022621.P4017632550006817407

`∑{#}[n, A022608(#)*A022608(n-#)]`
-/

namespace A022621.P4017632550006817407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022608 k * A022608 (n - k)

end

end A022621.P4017632550006817407

/-! ## A022621.P11893290668647329660

`A286352(eq[27, A004736(n+1)])`
-/

namespace A022621.P11893290668647329660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022621.P11893290668647329660

/-!
# A022623: Expansion of Product_{m>=1} (1+q^m)^(-28).

The programs for A022623, there is no canonical definition to state claims against.
-/

/-! ## A022623.P3489629073184800200

`∑{#}[n, A022609(#)*A022609(n-#)]`
-/

namespace A022623.P3489629073184800200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022609 k * A022609 (n - k)

end

end A022623.P3489629073184800200

/-! ## A022623.P55681416822712812

`A286352(eq[28, A025581(n)])`
-/

namespace A022623.P55681416822712812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022623.P55681416822712812

/-!
# A022625: Expansion of Product_{m>=1} (1+q^m)^(-30).

The programs for A022625, there is no canonical definition to state claims against.
-/

/-! ## A022625.P17032086170310292746

`∑{#}[n, A022610(#)*A022610(n-#)]`
-/

namespace A022625.P17032086170310292746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022610 k * A022610 (n - k)

end

end A022625.P17032086170310292746

/-! ## A022625.P11285744202599954626

`A286352(eq[31, A004736(n+1)])`
-/

namespace A022625.P11285744202599954626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022625.P11285744202599954626

/-!
# A022627: Expansion of Product_{m>=1} (1+q^m)^(-32).

The programs for A022627, there is no canonical definition to state claims against.
-/

/-! ## A022627.P2363402726154761744

`∑{#}[n, A022611(#)*A022611(n-#)]`
-/

namespace A022627.P2363402726154761744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022611 k * A022611 (n - k)

end

end A022627.P2363402726154761744

/-!
# A022628: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-11*x)).

The programs for A022628, the canonical program `A022628.P9167516542228717267` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022628 has offset 0).

The definition of A022628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-25x+207x^2-623x^3+440x^4))` (program `A022628.P9167516542228717267`, by `A022628.P9167516542228717267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022628.P9167516542228717267

`ogf(1/(1-25x+207x^2-623x^3+440x^4))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A022628

/-- `ogf(1/(1-25x+207x^2-623x^3+440x^4))` -/
def P9167516542228717267.Spec : Prop :=
  ∀ n, P9167516542228717267.a n = A022628 n

theorem P9167516542228717267.correct : P9167516542228717267.Spec := by
  intro n
  simp only [A022628]

end A022628

/-! ## A022628.P14350647272755212315

`∑[A020447(n)]`
-/

namespace A022628.P14350647272755212315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P14350647272755212315

namespace A022628

/-- `∑[A020447(n)]` -/
def P14350647272755212315.Spec : Prop :=
  ∀ n, P14350647272755212315.a n = A022628 n

end A022628

/-! ## A022628.P5322542990315141241

`A016259(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A022628.P5322542990315141241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016259 n + 5 * a (n - 1)

end

end A022628.P5322542990315141241

namespace A022628

/-- `A016259(n)+5*a(n-1)` -/
def P5322542990315141241.Spec : Prop :=
  ∀ n, P5322542990315141241.a n = A022628 n

end A022628

/-! ## A022628.P5643582105124657674

`A020447(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A022628.P5643582105124657674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020447 (2 * n - n) + a (n - 1)

end

end A022628.P5643582105124657674

namespace A022628

/-- `A020447(2*n-n)+a(n-1)` -/
def P5643582105124657674.Spec : Prop :=
  ∀ n, P5643582105124657674.a n = A022628 n

end A022628

/-! ## A022628.P8611262187875598915

`2*A021274(n)-A021154(n)`
-/

namespace A022628.P8611262187875598915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021274 n - A021154 n

end

end A022628.P8611262187875598915

namespace A022628

/-- `2*A021274(n)-A021154(n)` -/
def P8611262187875598915.Spec : Prop :=
  ∀ n, P8611262187875598915.a n = A022628 n

end A022628

/-! ## A022628.P4129522282461043436

`∑[2*A016318(n)-A016301(n)]`
-/

namespace A022628.P4129522282461043436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016318 n - A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P4129522282461043436

namespace A022628

/-- `∑[2*A016318(n)-A016301(n)]` -/
def P4129522282461043436.Spec : Prop :=
  ∀ n, P4129522282461043436.a n = A022628 n

end A022628

/-! ## A022628.P16670850006051632985

`∑[2*A016318(n)]-A021154(n)`
-/

namespace A022628.P16670850006051632985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A021154 n

end

end A022628.P16670850006051632985

namespace A022628

/-- `∑[2*A016318(n)]-A021154(n)` -/
def P16670850006051632985.Spec : Prop :=
  ∀ n, P16670850006051632985.a n = A022628 n

end A022628

/-! ## A022628.P10230938091359881514

`2*A021274(n)-∑[A016301(n)]`
-/

namespace A022628.P10230938091359881514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021274 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P10230938091359881514

namespace A022628

/-- `2*A021274(n)-∑[A016301(n)]` -/
def P10230938091359881514.Spec : Prop :=
  ∀ n, P10230938091359881514.a n = A022628 n

end A022628

/-! ## A022628.P10603815097475979738

`A021154(n)+A021274(n)-A021129(n)`
-/

namespace A022628.P10603815097475979738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021154 n + (A021274 n - A021129 n)

end

end A022628.P10603815097475979738

namespace A022628

/-- `A021154(n)+A021274(n)-A021129(n)` -/
def P10603815097475979738.Spec : Prop :=
  ∀ n, P10603815097475979738.a n = A022628 n

end A022628

/-! ## A022628.P5506163042424532526

`A025963(n)+∑[A025963(n)-A025960(n)]`
-/

namespace A022628.P5506163042424532526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025963 n - A025960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025963 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022628.P5506163042424532526

namespace A022628

/-- `A025963(n)+∑[A025963(n)-A025960(n)]` -/
def P5506163042424532526.Spec : Prop :=
  ∀ n, P5506163042424532526.a n = A022628 n

end A022628

/-!
# A022629: Expansion of Product_{m>=1} (1 + m*q^m).

The programs for A022629, there is no canonical definition to state claims against.
-/

/-! ## A022629.P3100578670522017509

`∑{d}[A028310(n), A300278(#)]`
-/

namespace A022629.P3100578670522017509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d

end

end A022629.P3100578670522017509

/-! ## A022629.P15086681771734516143

`∑{d}[A274922(n), A300278(#)]`
-/

namespace A022629.P15086681771734516143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d

end

end A022629.P15086681771734516143

/-! ## A022629.P11082049761415336625

`A317913(abs(1-n))+A317913(n)`
-/

namespace A022629.P11082049761415336625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317913 |1 - (n : ℤ)|.toNat + A317913 n

end

end A022629.P11082049761415336625

/-! ## A022629.P11721492945196238130

`∑{d}[A008619(A004273(n)), A300278(#)]`
-/

namespace A022629.P11721492945196238130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300278 d

end

end A022629.P11721492945196238130

/-! ## A022629.P5736066184894657801

`abs(Δ[A302831(abs(1-n))])`
-/

namespace A022629.P5736066184894657801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302831 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022629.P5736066184894657801

/-! ## A022629.P906321404657561926

`∑{#}[n, C(n, #)*A307260(#)]`
-/

namespace A022629.P906321404657561926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A307260 k

end

end A022629.P906321404657561926

/-! ## A022629.P9667022332006983117

`∑{#}[n, (-1)^(n-#)*C(n, #)*A307259(#)]`
-/

namespace A022629.P9667022332006983117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A307259 k : ℚ)

end

end A022629.P9667022332006983117

/-! ## A022629.P503902653250391956

`A297321(∑[n+2]-1)`
-/

namespace A022629.P503902653250391956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022629.P503902653250391956

/-! ## A022629.P15325224483843167751

`A292189(∑[n+1]+n)`
-/

namespace A022629.P15325224483843167751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A022629.P15325224483843167751

/-! ## A022629.P7190101910892203666

`A129177(A126972(n+1))`
-/

namespace A022629.P7190101910892203666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129177 (A126972 (n + 1)).toNat

end

end A022629.P7190101910892203666

/-!
# A022630: Expansion of Product_{m>=1} (1 + m*q^m)^2.

The programs for A022630, there is no canonical definition to state claims against.
-/

/-! ## A022630.P448737546069974503

`∑{#}[n, A022629(#)*A022629(n-#)]`
-/

namespace A022630.P448737546069974503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022629 k * A022629 (n - k)

end

end A022630.P448737546069974503

/-! ## A022630.P15383934066932110616

`A297321(∑[n+3])`
-/

namespace A022630.P15383934066932110616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022630.P15383934066932110616

/-! ## A022630.P10105246755125362000

`record[A297321(A055998(A008612(n)))]`
-/

namespace A022630.P10105246755125362000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P10105246755125362000

/-! ## A022630.P16402097955413126170

`record[A297321(A055998(A008615(n)))]`
-/

namespace A022630.P16402097955413126170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P16402097955413126170

/-! ## A022630.P635692577859574851

`record[A297321(A055998(A025480(n)))]`
-/

namespace A022630.P635692577859574851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P635692577859574851

/-! ## A022630.P13360922073703456306

`record[A297321(A027379(A274820(n)))]`
-/

namespace A022630.P13360922073703456306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (A274820 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P13360922073703456306

/-! ## A022630.P3111968075301588678

`record[A297321(A027379(A259434(n+1)))]`
-/

namespace A022630.P3111968075301588678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (A259434 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022630.P3111968075301588678

/-!
# A022631: Expansion of Product_{m>=1} (1 + m*q^m)^3.

The programs for A022631, there is no canonical definition to state claims against.
-/

/-! ## A022631.P9488575127793595365

`A297321(∑[n+4]+2)`
-/

namespace A022631.P9488575127793595365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022631.P9488575127793595365

/-! ## A022631.P14404592234739456417

`record[A297321(abs(A046691(n)))]`
-/

namespace A022631.P14404592234739456417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022631.P14404592234739456417

/-! ## A022631.P15275252617183322839

`record[A297321(A027379(n)-1)]`
-/

namespace A022631.P15275252617183322839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022631.P15275252617183322839

/-! ## A022631.P9842480716906271908

`record[A297321(A038722(A167499(n)))]`
-/

namespace A022631.P9842480716906271908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022631.P9842480716906271908

/-!
# A022632: Expansion of Product_{m>=1} (1 + m*q^m)^4.

The programs for A022632, there is no canonical definition to state claims against.
-/

/-! ## A022632.P7876013433551349342

`∑{#}[n, A022630(#)*A022630(n-#)]`
-/

namespace A022632.P7876013433551349342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022630 k * A022630 (n - k)

end

end A022632.P7876013433551349342

/-! ## A022632.P15407342885006504122

`A297321(∑[n+5]+5)`
-/

namespace A022632.P15407342885006504122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A022632.P15407342885006504122

/-! ## A022632.P3702776849041084069

`record[A297321(A052905(n))]`
-/

namespace A022632.P3702776849041084069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P3702776849041084069

/-! ## A022632.P1525988633311846045

`record[A297321(A055999(n)+1)]`
-/

namespace A022632.P1525988633311846045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P1525988633311846045

/-! ## A022632.P11474427441568891281

`record[A297321(abs(A046691(n))-1)]`
-/

namespace A022632.P11474427441568891281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P11474427441568891281

/-! ## A022632.P4500452642889285388

`record[A297321(A046691(n+1)-1)]`
-/

namespace A022632.P4500452642889285388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P4500452642889285388

/-! ## A022632.P15507478471516804627

`record[A297321(A027379(n+1)-2)]`
-/

namespace A022632.P15507478471516804627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P15507478471516804627

/-! ## A022632.P17840681208129165418

`record[A297321(A055998(n+1)-2)]`
-/

namespace A022632.P17840681208129165418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P17840681208129165418

/-! ## A022632.P16686291164897482671

`record[A297321(A034856(n+2)-3)]`
-/

namespace A022632.P16686291164897482671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A034856 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P16686291164897482671

/-! ## A022632.P16120398730791527252

`record[A297321(A016777(n)+A000217(n))]`
-/

namespace A022632.P16120398730791527252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A016777 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022632.P16120398730791527252

/-!
# A022633: Expansion of Product_{m>=1} (1 + m*q^m)^5.

The programs for A022633, there is no canonical definition to state claims against.
-/

/-! ## A022633.P3145030234060084962

`A297321(∑[n+6]+9)`
-/

namespace A022633.P3145030234060084962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A022633.P3145030234060084962

/-! ## A022633.P6858059185882669070

`record[A297321(A055999(n))]`
-/

namespace A022633.P6858059185882669070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P6858059185882669070

/-! ## A022633.P3867330934729462564

`record[A297321(A052905(n)-1)]`
-/

namespace A022633.P3867330934729462564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P3867330934729462564

/-! ## A022633.P965186713730678950

`record[A297321(A056000(n)+4)]`
-/

namespace A022633.P965186713730678950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056000 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P965186713730678950

/-! ## A022633.P14964050728335994185

`record[A297321(A027379(n)+n)]`
-/

namespace A022633.P14964050728335994185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P14964050728335994185

/-! ## A022633.P11240105314202493757

`record[A297321(A055998(n)+n)]`
-/

namespace A022633.P11240105314202493757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P11240105314202493757

/-! ## A022633.P11097699672756209218

`record[A297321(abs(2-A046691(n)))]`
-/

namespace A022633.P11097699672756209218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P11097699672756209218

/-! ## A022633.P5998287618391419523

`record[A297321(A046691(n+1)-2)]`
-/

namespace A022633.P5998287618391419523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A046691 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P5998287618391419523

/-! ## A022633.P18395996759043032807

`record[A297321(A034856(n+3)-4)]`
-/

namespace A022633.P18395996759043032807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A034856 (n + 3) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022633.P18395996759043032807

/-!
# A022634: Expansion of Product_{m>=1} (1 + m*q^m)^6.

The programs for A022634, there is no canonical definition to state claims against.
-/

/-! ## A022634.P15214271901510548862

`∑{#}[n, A022631(#)*A022631(n-#)]`
-/

namespace A022634.P15214271901510548862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022631 k * A022631 (n - k)

end

end A022634.P15214271901510548862

/-! ## A022634.P2887058952067720398

`A297321(eq[6, A025581(n)])`
-/

namespace A022634.P2887058952067720398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022634.P2887058952067720398

/-!
# A022635: Expansion of Product_{m>=1} (1 + m*q^m)^7.

The programs for A022635, there is no canonical definition to state claims against.
-/

/-! ## A022635.P6913658292040437423

`A297321(A056126(n)+28)`
-/

namespace A022635.P6913658292040437423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056126 n + 28).toNat

end

end A022635.P6913658292040437423

/-!
# A022636: Expansion of Product_{m>=1} (1 + m*q^m)^8.

The programs for A022636, there is no canonical definition to state claims against.
-/

/-! ## A022636.P17486479002304114564

`∑{#}[n, A022632(#)*A022632(n-#)]`
-/

namespace A022636.P17486479002304114564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022632 k * A022632 (n - k)

end

end A022636.P17486479002304114564

/-! ## A022636.P13798623346153157344

`A297321(A134227(n+7)-3)`
-/

namespace A022636.P13798623346153157344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A134227 (n + 7) - 3).toNat

end

end A022636.P13798623346153157344

/-!
# A022637: Expansion of Product_{m>=1} (1 + m*q^m)^9.

The programs for A022637, there is no canonical definition to state claims against.
-/

/-! ## A022637.P10653929101493095317

`A297321(A056000(n+6))`
-/

namespace A022637.P10653929101493095317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056000 (n + 6)).toNat

end

end A022637.P10653929101493095317

/-!
# A022638: Expansion of Product_{m>=1} (1 + m*q^m)^10.

The programs for A022638, there is no canonical definition to state claims against.
-/

/-! ## A022638.P7910247422514511004

`∑{#}[n, A022633(#)*A022633(n-#)]`
-/

namespace A022638.P7910247422514511004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022633 k * A022633 (n - k)

end

end A022638.P7910247422514511004

/-! ## A022638.P2763394649888131405

`A297321(A056000(n+7)-1)`
-/

namespace A022638.P2763394649888131405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056000 (n + 7) - 1).toNat

end

end A022638.P2763394649888131405

/-! ## A022638.P14643164308932446582

`record[A297321(∑[A057717(n)])]`
-/

namespace A022638.P14643164308932446582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022638.P14643164308932446582

/-!
# A022639: Expansion of Product_{m>=1} (1 + m*q^m)^11.

The programs for A022639, there is no canonical definition to state claims against.
-/

/-! ## A022639.P4621739355518341904

`A297321(eq[11, A025581(n)])`
-/

namespace A022639.P4621739355518341904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022639.P4621739355518341904

/-!
# A022640: Expansion of Product_{m>=1} (1 + m*q^m)^12.

The programs for A022640, there is no canonical definition to state claims against.
-/

/-! ## A022640.P15845659632662173218

`∑{#}[n, A022634(#)*A022634(n-#)]`
-/

namespace A022640.P15845659632662173218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022634 k * A022634 (n - k)

end

end A022640.P15845659632662173218

/-! ## A022640.P9282557748386253582

`A297321(eq[12, A025581(n)])`
-/

namespace A022640.P9282557748386253582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022640.P9282557748386253582

/-!
# A022641: Expansion of Product_{m>=1} (1 + m*q^m)^13.

The programs for A022641, there is no canonical definition to state claims against.
-/

/-! ## A022641.P4241423495321463936

`A297321(eq[13, A025581(n)])`
-/

namespace A022641.P4241423495321463936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022641.P4241423495321463936

/-!
# A022642: Expansion of Product_{m>=1} (1 + m*q^m)^14.

The programs for A022642, there is no canonical definition to state claims against.
-/

/-! ## A022642.P5443394927028626959

`∑{#}[n, A022635(#)*A022635(n-#)]`
-/

namespace A022642.P5443394927028626959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022635 k * A022635 (n - k)

end

end A022642.P5443394927028626959

/-! ## A022642.P5416647868658831400

`A297321(A056115(n+10))`
-/

namespace A022642.P5416647868658831400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (A056115 (n + 10)).toNat

end

end A022642.P5416647868658831400

/-!
# A022643: Expansion of Product_{m>=1} (1 + m*q^m)^15.

The programs for A022643, there is no canonical definition to state claims against.
-/

/-! ## A022643.P13668241937492366925

`A297321(eq[15, A025581(n)])`
-/

namespace A022643.P13668241937492366925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022643.P13668241937492366925

/-!
# A022644: Expansion of Product_{m>=1} (1 + m*q^m)^16.

The programs for A022644, there is no canonical definition to state claims against.
-/

/-! ## A022644.P13156075232538147531

`∑{#}[n, A022636(#)*A022636(n-#)]`
-/

namespace A022644.P13156075232538147531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022636 k * A022636 (n - k)

end

end A022644.P13156075232538147531

/-! ## A022644.P9884094650881324940

`A297321(eq[16, A025581(n)])`
-/

namespace A022644.P9884094650881324940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022644.P9884094650881324940

/-!
# A022645: Expansion of Product_{m>=1} (1 + m*q^m)^17.

The programs for A022645, there is no canonical definition to state claims against.
-/

/-! ## A022645.P1125006577122975734

`A297321(eq[17, A025581(n)])`
-/

namespace A022645.P1125006577122975734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022645.P1125006577122975734

/-!
# A022646: Expansion of Product_{m>=1} (1 + m*q^m)^18.

The programs for A022646, there is no canonical definition to state claims against.
-/

/-! ## A022646.P18161531685106376081

`∑{#}[n, A022637(#)*A022637(n-#)]`
-/

namespace A022646.P18161531685106376081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022637 k * A022637 (n - k)

end

end A022646.P18161531685106376081

/-! ## A022646.P14916201372078886019

`A297321(eq[19, A004736(n+1)])`
-/

namespace A022646.P14916201372078886019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022646.P14916201372078886019

/-!
# A022647: Expansion of Product_{m>=1} (1 + m*q^m)^19.

The programs for A022647, there is no canonical definition to state claims against.
-/

/-! ## A022647.P3862392630888824548

`A297321(eq[20, A004736(n+1)])`
-/

namespace A022647.P3862392630888824548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022647.P3862392630888824548

/-!
# A022648: Expansion of Product_{m>=1} (1 + m*q^m)^20.

The programs for A022648, there is no canonical definition to state claims against.
-/

/-! ## A022648.P7125677830553049393

`∑{#}[n, A022638(#)*A022638(n-#)]`
-/

namespace A022648.P7125677830553049393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022638 k * A022638 (n - k)

end

end A022648.P7125677830553049393

/-! ## A022648.P8131804644177927325

`A297321(eq[20, A025581(n)])`
-/

namespace A022648.P8131804644177927325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022648.P8131804644177927325

/-!
# A022649: Expansion of Product_{m >=1} (1+m*q^m)^21.

The programs for A022649, there is no canonical definition to state claims against.
-/

/-! ## A022649.P416100836184142930

`A297321(eq[21, A025581(n)])`
-/

namespace A022649.P416100836184142930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022649.P416100836184142930

/-!
# A022650: Expansion of Product_{m>=1} (1+m*q^m)^22.

The programs for A022650, there is no canonical definition to state claims against.
-/

/-! ## A022650.P2518373445088249691

`∑{#}[n, A022639(#)*A022639(n-#)]`
-/

namespace A022650.P2518373445088249691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022639 k * A022639 (n - k)

end

end A022650.P2518373445088249691

/-!
# A022652: Expansion of Product_{m>=1} (1+m*q^m)^24.

The programs for A022652, there is no canonical definition to state claims against.
-/

/-! ## A022652.P14180538050453763963

`∑{#}[n, A022640(#)*A022640(n-#)]`
-/

namespace A022652.P14180538050453763963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022640 k * A022640 (n - k)

end

end A022652.P14180538050453763963

/-! ## A022652.P8115494941465382949

`A297321(eq[25, A004736(n+1)])`
-/

namespace A022652.P8115494941465382949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022652.P8115494941465382949

/-!
# A022653: Expansion of Product_{m>=1} (1+m*q^m)^25.

The programs for A022653, there is no canonical definition to state claims against.
-/

/-! ## A022653.P10411942164097134252

`A297321(eq[25, A025581(n)])`
-/

namespace A022653.P10411942164097134252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022653.P10411942164097134252

/-!
# A022654: Expansion of Product_{m>=1} (1+m*q^m)^26.

The programs for A022654, there is no canonical definition to state claims against.
-/

/-! ## A022654.P6957506325218827070

`∑{#}[n, A022641(#)*A022641(n-#)]`
-/

namespace A022654.P6957506325218827070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022641 k * A022641 (n - k)

end

end A022654.P6957506325218827070

/-!
# A022656: Expansion of Product_{m>=1} (1+m*q^m)^28.

The programs for A022656, there is no canonical definition to state claims against.
-/

/-! ## A022656.P16448141992136334349

`∑{#}[n, A022642(#)*A022642(n-#)]`
-/

namespace A022656.P16448141992136334349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022642 k * A022642 (n - k)

end

end A022656.P16448141992136334349

/-! ## A022656.P5539981771776027157

`A297321(eq[57, A099375(n)])`
-/

namespace A022656.P5539981771776027157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022656.P5539981771776027157

/-!
# A022657: Expansion of Product_{m>=1} (1+m*q^m)^29.

The programs for A022657, there is no canonical definition to state claims against.
-/

/-! ## A022657.P4488586434029768214

`A297321(eq[29, A025581(n)])`
-/

namespace A022657.P4488586434029768214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022657.P4488586434029768214

/-!
# A022658: Expansion of Product_{m>=1} (1+m*q^m)^30.

The programs for A022658, there is no canonical definition to state claims against.
-/

/-! ## A022658.P14067720438557096692

`∑{#}[n, A022643(#)*A022643(n-#)]`
-/

namespace A022658.P14067720438557096692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022643 k * A022643 (n - k)

end

end A022658.P14067720438557096692

/-!
# A022659: Expansion of Product_{m>=1} (1+m*q^m)^31.

The programs for A022659, there is no canonical definition to state claims against.
-/

/-! ## A022659.P4317824278124449007

`A297321(eq[32, A004736(n+1)])`
-/

namespace A022659.P4317824278124449007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022659.P4317824278124449007

/-!
# A022660: Expansion of Product_{m>=1} (1+m*q^m)^32.

The programs for A022660, there is no canonical definition to state claims against.
-/

/-! ## A022660.P6683615486701707200

`∑{#}[n, A022644(#)*A022644(n-#)]`
-/

namespace A022660.P6683615486701707200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022644 k * A022644 (n - k)

end

end A022660.P6683615486701707200

/-!
# A022661: Expansion of Product_{m>=1} (1-m*q^m).

The programs for A022661, there is no canonical definition to state claims against.
-/

/-! ## A022661.P96840479758716734

`A292166(∑[n+2]-1)`
-/

namespace A022661.P96840479758716734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022661.P96840479758716734

/-! ## A022661.P4826504804389063615

`A294587(∑[n]+n)`
-/

namespace A022661.P4826504804389063615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A022661.P4826504804389063615

/-!
# A022662: Expansion of Product_{m>=1} (1 - m*q^m)^2.

The programs for A022662, there is no canonical definition to state claims against.
-/

/-! ## A022662.P810149811639870107

`∑{#}[n, A022661(#)*A022661(n-#)]`
-/

namespace A022662.P810149811639870107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022661 k * A022661 (n - k)

end

end A022662.P810149811639870107

/-! ## A022662.P8436572105573472099

`A297323(∑[3+n])`
-/

namespace A022662.P8436572105573472099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022662.P8436572105573472099

/-!
# A022663: Expansion of Product_{m>=1} (1 - m*q^m)^3.

The programs for A022663, there is no canonical definition to state claims against.
-/

/-! ## A022663.P14777801056671873898

`A297323(∑[n+4]+2)`
-/

namespace A022663.P14777801056671873898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022663.P14777801056671873898

/-!
# A022664: Expansion of Product_{m>=1} (1 - m*q^m)^4.

The programs for A022664, there is no canonical definition to state claims against.
-/

/-! ## A022664.P15648148442008073692

`∑{#}[n, A022662(#)*A022662(n-#)]`
-/

namespace A022664.P15648148442008073692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022662 k * A022662 (n - k)

end

end A022664.P15648148442008073692

/-!
# A022665: Expansion of Product_{m>=1} (1 - m*q^m)^5.

The programs for A022665, there is no canonical definition to state claims against.
-/

/-! ## A022665.P9719915689866782871

`A297323(A055999(n+3))`
-/

namespace A022665.P9719915689866782871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297323 (A055999 (n + 3)).toNat

end

end A022665.P9719915689866782871

/-!
# A022666: Expansion of Product_{m>=1} (1 - m*q^m)^6.

The programs for A022666, there is no canonical definition to state claims against.
-/

/-! ## A022666.P6089333859327824205

`∑{#}[n, A022663(#)*A022663(n-#)]`
-/

namespace A022666.P6089333859327824205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022663 k * A022663 (n - k)

end

end A022666.P6089333859327824205

/-!
# A022668: Expansion of Product_{m>=1} (1 - m*q^m)^8.

The programs for A022668, there is no canonical definition to state claims against.
-/

/-! ## A022668.P15298584837107379768

`∑{#}[n, A022664(#)*A022664(n-#)]`
-/

namespace A022668.P15298584837107379768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022664 k * A022664 (n - k)

end

end A022668.P15298584837107379768

/-!
# A022670: Expansion of Product_{m >= 1} (1-m*q^m)^10.

The programs for A022670, there is no canonical definition to state claims against.
-/

/-! ## A022670.P8533000552176688058

`∑{#}[n, A022665(#)*A022665(n-#)]`
-/

namespace A022670.P8533000552176688058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022665 k * A022665 (n - k)

end

end A022670.P8533000552176688058

/-!
# A022672: Expansion of Product_{m >= 1} (1-m*q^m)^12.

The programs for A022672, there is no canonical definition to state claims against.
-/

/-! ## A022672.P14360193127986135695

`∑{#}[n, A022666(#)*A022666(n-#)]`
-/

namespace A022672.P14360193127986135695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022666 k * A022666 (n - k)

end

end A022672.P14360193127986135695

/-!
# A022674: Expansion of Product_{m >= 1} (1-m*q^m)^14.

The programs for A022674, there is no canonical definition to state claims against.
-/

/-! ## A022674.P15127004688155303561

`∑{#}[n, A022667(#)*A022667(n-#)]`
-/

namespace A022674.P15127004688155303561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022667 k * A022667 (n - k)

end

end A022674.P15127004688155303561

/-!
# A022676: Expansion of Product_{m >= 1} (1-m*q^m)^16.

The programs for A022676, there is no canonical definition to state claims against.
-/

/-! ## A022676.P4266979270087114848

`∑{#}[n, A022668(#)*A022668(n-#)]`
-/

namespace A022676.P4266979270087114848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022668 k * A022668 (n - k)

end

end A022676.P4266979270087114848

/-!
# A022678: Expansion of Product_{m>=1} (1-m*q^m)^18.

The programs for A022678, there is no canonical definition to state claims against.
-/

/-! ## A022678.P16625627760818352692

`∑{#}[n, A022669(#)*A022669(n-#)]`
-/

namespace A022678.P16625627760818352692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022669 k * A022669 (n - k)

end

end A022678.P16625627760818352692

/-!
# A022680: Expansion of Product_{m>=1} (1-m*q^m)^20.

The programs for A022680, there is no canonical definition to state claims against.
-/

/-! ## A022680.P747584639783467136

`∑{#}[n, A022670(#)*A022670(n-#)]`
-/

namespace A022680.P747584639783467136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022670 k * A022670 (n - k)

end

end A022680.P747584639783467136

/-!
# A022682: Expansion of Product_{m>=1} (1-m*q^m)^22.

The programs for A022682, there is no canonical definition to state claims against.
-/

/-! ## A022682.P17516764804619420409

`∑{#}[n, A022671(#)*A022671(n-#)]`
-/

namespace A022682.P17516764804619420409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022671 k * A022671 (n - k)

end

end A022682.P17516764804619420409

/-!
# A022684: Expansion of Product_{m>=1} (1-m*q^m)^24.

The programs for A022684, there is no canonical definition to state claims against.
-/

/-! ## A022684.P10253821518380157804

`∑{#}[n, A022672(#)*A022672(n-#)]`
-/

namespace A022684.P10253821518380157804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022672 k * A022672 (n - k)

end

end A022684.P10253821518380157804

/-!
# A022686: Expansion of Product_{m>=1} (1-m*q^m)^26.

The programs for A022686, there is no canonical definition to state claims against.
-/

/-! ## A022686.P15063253733816183106

`∑{#}[n, A022673(#)*A022673(n-#)]`
-/

namespace A022686.P15063253733816183106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022673 k * A022673 (n - k)

end

end A022686.P15063253733816183106

/-!
# A022688: Expansion of Product_{m>=1} (1-m*q^m)^28.

The programs for A022688, there is no canonical definition to state claims against.
-/

/-! ## A022688.P17685971204971192014

`∑{#}[n, A022674(#)*A022674(n-#)]`
-/

namespace A022688.P17685971204971192014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022674 k * A022674 (n - k)

end

end A022688.P17685971204971192014

/-!
# A022690: Expansion of Product_{m>=1} (1-m*q^m)^30.

The programs for A022690, there is no canonical definition to state claims against.
-/

/-! ## A022690.P14760420878166456154

`∑{#}[n, A022675(#)*A022675(n-#)]`
-/

namespace A022690.P14760420878166456154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022675 k * A022675 (n - k)

end

end A022690.P14760420878166456154

/-!
# A022692: Expansion of Product_{m>=1} (1-m*q^m)^32.

The programs for A022692, there is no canonical definition to state claims against.
-/

/-! ## A022692.P8054978149702091872

`∑{#}[n, A022676(#)*A022676(n-#)]`
-/

namespace A022692.P8054978149702091872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022676 k * A022676 (n - k)

end

end A022692.P8054978149702091872

/-!
# A022693: Expansion of Product_{m>=1} 1/(1 + m*q^m).

The programs for A022693, there is no canonical definition to state claims against.
-/

/-! ## A022693.P91745151008269188

`∑{#}[n, (-1)^#*A368091(C(n+1, 2)+#)]`
-/

namespace A022693.P91745151008269188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A368091 (Nat.choose (n + 1) 2 + k)

end

end A022693.P91745151008269188

/-! ## A022693.P2605974367957315791

`A297325(∑[n+2]-1)`
-/

namespace A022693.P2605974367957315791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A022693.P2605974367957315791

/-!
# A022694: Expansion of Product_{m>=1} (1 + m*q^m)^-2.

The programs for A022694, there is no canonical definition to state claims against.
-/

/-! ## A022694.P9216428221412680773

`∑{#}[n, A022693(#)*A022693(n-#)]`
-/

namespace A022694.P9216428221412680773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022693 k * A022693 (n - k)

end

end A022694.P9216428221412680773

/-! ## A022694.P15155669866576753109

`A297325(∑[n+3])`
-/

namespace A022694.P15155669866576753109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022694.P15155669866576753109

/-!
# A022695: Expansion of Product_{m>=1} (1 + m*q^m)^-3.

The programs for A022695, there is no canonical definition to state claims against.
-/

/-! ## A022695.P15259749822213683576

`A297325(∑[n+3]+n+3)`
-/

namespace A022695.P15259749822213683576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A022695.P15259749822213683576

/-!
# A022696: Expansion of Product_{m>=1} (1 + m*q^m)^-4.

The programs for A022696, there is no canonical definition to state claims against.
-/

/-! ## A022696.P16826010499230418073

`∑{#}[n, A022694(#)*A022694(n-#)]`
-/

namespace A022696.P16826010499230418073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022694 k * A022694 (n - k)

end

end A022696.P16826010499230418073

/-! ## A022696.P17794500873241213165

`A297325(∑[n+5]+5)`
-/

namespace A022696.P17794500873241213165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A022696.P17794500873241213165

/-!
# A022697: Expansion of Product_{m>=1} 1/(1 + m*q^m)^5.

The programs for A022697, there is no canonical definition to state claims against.
-/

/-! ## A022697.P7188530577226618725

`A297325(A055999(n+3))`
-/

namespace A022697.P7188530577226618725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A055999 (n + 3)).toNat

end

end A022697.P7188530577226618725

/-!
# A022698: Expansion of Product_{m>=1} 1/(1 + m*q^m)^6.

The programs for A022698, there is no canonical definition to state claims against.
-/

/-! ## A022698.P17356619270339886839

`∑{#}[n, A022695(#)*A022695(n-#)]`
-/

namespace A022698.P17356619270339886839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A022695 k * A022695 (n - k)

end

end A022698.P17356619270339886839

/-! ## A022698.P14245188426861536916

`A297325(A052905(n+4)-2)`
-/

namespace A022698.P14245188426861536916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A052905 (n + 4) - 2).toNat

end

end A022698.P14245188426861536916

/-! ## A022698.P13360916098750874496

`A297325(eq[6, A025581(n)])`
-/

namespace A022698.P13360916098750874496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022698.P13360916098750874496

/-!
# A022699: Expansion of Product_{m>=1} 1/(1 + m*q^m)^7.

The programs for A022699, there is no canonical definition to state claims against.
-/

/-! ## A022699.P16633868061831779442

`A297325(A155212(n+4))`
-/

namespace A022699.P16633868061831779442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A155212 (n + 4)).toNat

end

end A022699.P16633868061831779442

