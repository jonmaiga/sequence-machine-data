import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A167001: Least possible nonnegative coefficients of x^n in G(x)^(2^n), n>=0, for an integer series G(x) such that G'(0)=G(0)=1; the G(x) that satisfies this condition equals the g.f. of A167000.

The programs for A167001, there is no canonical definition to state claims against.
-/

/-! ## A167001.P3661914342246265906

`A000016(n)*A007877(A001316(n))`
-/

namespace A167001.P3661914342246265906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A007877 (A001316 n).toNat

end

end A167001.P3661914342246265906

/-! ## A167001.P1294784902748789034

`A000048(n)*A007877(A001316(n))`
-/

namespace A167001.P1294784902748789034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A007877 (A001316 n).toNat

end

end A167001.P1294784902748789034

/-! ## A167001.P6560150967368750690

`A000016(n)*A033729(A038573(n))`
-/

namespace A167001.P6560150967368750690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A033729 (A038573 n).toNat

end

end A167001.P6560150967368750690

/-! ## A167001.P423592538661461369

`A000048(n)*A033729(A038573(n))`
-/

namespace A167001.P423592538661461369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A033729 (A038573 n).toNat

end

end A167001.P423592538661461369

/-! ## A167001.P17399898587367281563

`A000016(n)*A130713(A030101(n))`
-/

namespace A167001.P17399898587367281563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A130713 (A030101 n).toNat

end

end A167001.P17399898587367281563

/-! ## A167001.P11846616787430551059

`A000048(n)*A130713(A030101(n))`
-/

namespace A167001.P11846616787430551059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A130713 (A030101 n).toNat

end

end A167001.P11846616787430551059

/-! ## A167001.P13970785085446448977

`A000016(n)*A130713(A325401(n))`
-/

namespace A167001.P13970785085446448977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A130713 (A325401 n).toNat

end

end A167001.P13970785085446448977

/-! ## A167001.P10408299181085076939

`A000048(n)*A130713(A325401(n))`
-/

namespace A167001.P10408299181085076939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n * A130713 (A325401 n).toNat

end

end A167001.P10408299181085076939

/-! ## A167001.P2815625268735935350

`A007877(A001316(n))^A268289(n)`
-/

namespace A167001.P2815625268735935350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007877 (A001316 n).toNat : ℚ) ^ (A268289 n : ℤ)

end

end A167001.P2815625268735935350

/-! ## A167001.P7299713037073811394

`A130713(A325401(n))^A268289(n)`
-/

namespace A167001.P7299713037073811394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130713 (A325401 n).toNat : ℚ) ^ (A268289 n : ℤ)

end

end A167001.P7299713037073811394

/-!
# A167003: G.f. A(x) satisfies: Sum_{n>=0} log(A(3^n*x))^n/n! = 1 + Sum_{n>=0} 3^(3^n-n)*x^(3^n).

The programs for A167003, there is no canonical definition to state claims against.
-/

/-! ## A167003.P17890482017440969578

`2-∏{p}[A281501(n), #]`
-/

namespace A167003.P17890482017440969578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A167003.P17890482017440969578

/-!
# A167004: Least possible nonnegative coefficients of x^n in G(x)^(3^n), n>=0, such that G(x) is an integer series with G'(0)=G(0)=1; the G(x) that satisfies this condition equals the g.f. of A167003.

The programs for A167004, there is no canonical definition to state claims against.
-/

/-! ## A167004.P1389193980738602235

`char[A111843(n)]*A273893(n)`
-/

namespace A167004.P1389193980738602235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A273893 n

end

end A167004.P1389193980738602235

/-! ## A167004.P7162918512056228768

`char[A117980(n)]*A273893(n)`
-/

namespace A167004.P7162918512056228768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A273893 n

end

end A167004.P7162918512056228768

/-! ## A167004.P400085426882246462

`lcm(A008683(A055932(n+1)), A273893(n))`
-/

namespace A167004.P400085426882246462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A055932 (n + 1)).toNat) (A273893 n)

end

end A167004.P400085426882246462

/-! ## A167004.P17245774357412112187

`∏{d}[A105343(n), A111843(#)]`
-/

namespace A167004.P17245774357412112187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A111843 d

end

end A167004.P17245774357412112187

/-! ## A167004.P8457481666395322648

`A117980(A117977(n)-(n+1))`
-/

namespace A167004.P8457481666395322648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (A117977 n - (n + 1 : ℤ)).toNat

end

end A167004.P8457481666395322648

/-!
# A167006: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n^2, n*k) ).

The programs for A167006, there is no canonical definition to state claims against.
-/

/-! ## A167006.P13420886878347051727

`A206914(A015475(n))+1`
-/

namespace A167006.P13420886878347051727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (A015475 n).toNat + 1

end

end A167006.P13420886878347051727

/-!
# A167007: G.f.: A(x) = exp( Sum_{n>=1} A167010(n)*x^n/n ) where A167010(n) = Sum_{k=0..n} binomial(n,k)^n.

The programs for A167007, there is no canonical definition to state claims against.
-/

/-! ## A167007.P14957717327869311150

`A225386(a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A167007.P14957717327869311150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A225386 (a (n - 1)).toNat

end

end A167007.P14957717327869311150

/-!
# A167008: a(n) = Sum_{k=0..n} C(n,k)^k.

The programs for A167008, there is no canonical definition to state claims against.
-/

/-! ## A167008.P13306360553479024962

`A045864(∑[A028361(n)])`
-/

namespace A167008.P13306360553479024962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167008.P13306360553479024962

/-! ## A167008.P2711284371066404389

`A204823(A098636(n))+A027193(n)`
-/

namespace A167008.P2711284371066404389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (A098636 n).toNat + A027193 n

end

end A167008.P2711284371066404389

/-!
# A167009: a(n) = Sum_{k=0..n} C(n^2, n*k).

The programs for A167009, there is no canonical definition to state claims against.
-/

/-! ## A167009.P230694297557569123

`A308500(∑[4*n])`
-/

namespace A167009.P230694297557569123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167009.P230694297557569123

/-! ## A167009.P84723264184501594

`record[A003982(n)*A308500(n)]`
-/

namespace A167009.P84723264184501594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A308500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167009.P84723264184501594

/-! ## A167009.P15081182114702803647

`record[gcd(A037012(n), A308500(n))]`
-/

namespace A167009.P15081182114702803647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A308500 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167009.P15081182114702803647

/-! ## A167009.P16059205978331002737

`A308500(A046092(n))+A185255(n)`
-/

namespace A167009.P16059205978331002737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (A046092 n).toNat + A185255 n

end

end A167009.P16059205978331002737

/-! ## A167009.P328862292232366252

`gcd(A000038(n), A308500(A046092(n)))`
-/

namespace A167009.P328862292232366252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A308500 (A046092 n).toNat)

end

end A167009.P328862292232366252

/-!
# A167010: a(n) = Sum_{k=0..n} C(n,k)^n.

The programs for A167010, there is no canonical definition to state claims against.
-/

/-! ## A167010.P12340827747906922639

`A309010(∑[4*n])`
-/

namespace A167010.P12340827747906922639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167010.P12340827747906922639

/-! ## A167010.P11613145154725819561

`record[A309010(A240134(n+1))]`
-/

namespace A167010.P11613145154725819561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A240134 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167010.P11613145154725819561

/-! ## A167010.P12318413563370922458

`record[gcd(A008482(n), A309010(n))]`
-/

namespace A167010.P12318413563370922458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A309010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167010.P12318413563370922458

/-! ## A167010.P16486313602018119862

`record[A309010(gcd(n, A061579(n)))]`
-/

namespace A167010.P16486313602018119862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (Int.gcd (n : ℤ) (A061579 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167010.P16486313602018119862

/-! ## A167010.P3390723915319096809

`lcm(A001316(n), A309010(A046092(n)))`
-/

namespace A167010.P3390723915319096809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A309010 (A046092 n).toNat)

end

end A167010.P3390723915319096809

/-!
# A167011: Number of Level 1 hexagonal polyominoes with cheesy blocks and n cells.

The programs for A167011, there is no canonical definition to state claims against.
-/

/-! ## A167011.P15372641030153387850

`A319322(n+1)-A307825(A020118(n))`
-/

namespace A167011.P15372641030153387850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319322 (n + 1) - A307825 (A020118 n).toNat

end

end A167011.P15372641030153387850

/-! ## A167011.P9316525789250459193

`A319322(C(A267305(n+1), n))`
-/

namespace A167011.P9316525789250459193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319322 (Nat.choose (A267305 (n + 1)).toNat n)

end

end A167011.P9316525789250459193

/-!
# A167012: Number of Level 2 hexagonal polyominoes with cheesy blocks and n cells.

The programs for A167012, there is no canonical definition to state claims against.
-/

/-! ## A167012.P2157391213927128799

`A276212(A152124(n))`
-/

namespace A167012.P2157391213927128799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276212 (A152124 n).toNat

end

end A167012.P2157391213927128799

/-! ## A167012.P2026170081951859733

`A380683(n)+A352515(A369416(n))`
-/

namespace A167012.P2026170081951859733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380683 n + A352515 (A369416 n).toNat

end

end A167012.P2026170081951859733

/-!
# A167013: Number of Level 3 hexagonal polyominoes with cheesy blocks and n cells.

The programs for A167013, there is no canonical definition to state claims against.
-/

/-! ## A167013.P13007880962732337178

`∑[A260734(A151145(n))]`
-/

namespace A167013.P13007880962732337178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A151145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167013.P13007880962732337178

/-! ## A167013.P6304258286311892124

`A247833(A307490(n+1))`
-/

namespace A167013.P6304258286311892124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A307490 (n + 1)).toNat

end

end A167013.P6304258286311892124

/-!
# A167014: Coefficients of x^n in the (n-1)-th iteration of x/(1-x)^2 for n>=1.

The programs for A167014, there is no canonical definition to state claims against.
-/

/-! ## A167014.P471194154158868565

`∏{p}[A139251(A286877(n)), #]`
-/

namespace A167014.P471194154158868565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A286877 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A167014.P471194154158868565

/-!
# A167015: Triangle T, read by rows, where T(n,k) = [T^n](n-k-1,0); i.e., where row n of T equals the initial n terms of column 0 in matrix power T^n, reversed and with an appended '1', for n>0, with T(0,0)=1.

The programs for A167015, there is no canonical definition to state claims against.
-/

/-! ## A167015.P5061309495127430391

`A034367(A114123(n+1))`
-/

namespace A167015.P5061309495127430391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034367 (A114123 (n + 1)).toNat

end

end A167015.P5061309495127430391

/-! ## A167015.P2216833992229693131

`A093475(A157109(n+1))`
-/

namespace A167015.P2216833992229693131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093475 (A157109 (n + 1)).toNat

end

end A167015.P2216833992229693131

/-! ## A167015.P2130508862343868972

`A010360(A103997(n+1)+1)`
-/

namespace A167015.P2130508862343868972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010360 (A103997 (n + 1) + 1).toNat

end

end A167015.P2130508862343868972

/-! ## A167015.P5729656481302789392

`A202272(A157109(n+1)+1)`
-/

namespace A167015.P5729656481302789392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202272 (A157109 (n + 1) + 1).toNat

end

end A167015.P5729656481302789392

/-! ## A167015.P9024681057103214862

`A101479(comp[∑[n]]%A101414(n+1))`
-/

namespace A167015.P9024681057103214862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A101414 (n + 1))).toNat

end

end A167015.P9024681057103214862

/-!
# A167016: Column 0 of triangle T=A167015: a(n) = T(n,0) = [T^n](n-1,0) for n>0 with a(0)=1.

The programs for A167016, there is no canonical definition to state claims against.
-/

/-! ## A167016.P8451210539577372661

`A167015(∑[n])`
-/

namespace A167016.P8451210539577372661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167016.P8451210539577372661

/-! ## A167016.P12040938002732000982

`A167015((n²+n)/2)%(2*(n+1)^(n-1))`
-/

namespace A167016.P12040938002732000982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167015 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (SequenceMachineLib.roundAway (2 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A167016.P12040938002732000982

/-! ## A167016.P13363177376315699257

`and(-1, A167015(A000217(n)))`
-/

namespace A167016.P13363177376315699257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A167015 (A000217 n).toNat)

end

end A167016.P13363177376315699257

/-! ## A167016.P6338625791797495625

`A167015(record[C(n, 2)-n]-n)+A080300(2*n+3)`
-/

namespace A167016.P6338625791797495625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat + A080300 (2 * n + 3)

end

end A167016.P6338625791797495625

/-! ## A167016.P3417091827486785024

`A167015(A000217(n))+A025469(n)`
-/

namespace A167016.P3417091827486785024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A000217 n).toNat + A025469 n

end

end A167016.P3417091827486785024

/-!
# A167017: Column 1 of triangle T=A167015: a(n) = T(n+1,1) = [T^(n+1)](n-1,0) for n>0 with a(0)=1.

The programs for A167017, there is no canonical definition to state claims against.
-/

/-! ## A167017.P3463657168740692515

`A167015(∑[n+1]+1)`
-/

namespace A167017.P3463657168740692515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A167017.P3463657168740692515

/-! ## A167017.P6935785427949912976

`and(-1, A167015(A134869(n+1)))`
-/

namespace A167017.P6935785427949912976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A167015 (A134869 (n + 1)).toNat)

end

end A167017.P6935785427949912976

/-! ## A167017.P5037119768022826846

`A167015(A000124(n+1))+A054899(n)`
-/

namespace A167017.P5037119768022826846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A000124 (n + 1)).toNat + A054899 n

end

end A167017.P5037119768022826846

/-! ## A167017.P2143621801568034272

`A167015(A134869(n+1))+A045887(n)`
-/

namespace A167017.P2143621801568034272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A134869 (n + 1)).toNat + A045887 n

end

end A167017.P2143621801568034272

/-! ## A167017.P7799431838055929231

`A167015(A134869(n+1))+A054899(n)`
-/

namespace A167017.P7799431838055929231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A134869 (n + 1)).toNat + A054899 n

end

end A167017.P7799431838055929231

/-!
# A167018: Column 2 of triangle T=A167015: a(n) = T(n+2,2) = [T^(n+2)](n-1,0) for n>0 with a(0)=1.

The programs for A167018, there is no canonical definition to state claims against.
-/

/-! ## A167018.P16852543653139224840

`A167015(∑[n+2]+3)`
-/

namespace A167018.P16852543653139224840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A167018.P16852543653139224840

/-! ## A167018.P2306883316605141910

`A004709(A327231(n)+A120732(n))`
-/

namespace A167018.P2306883316605141910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A327231 n + A120732 n).toNat

end

end A167018.P2306883316605141910

/-!
# A167019: Column 3 of triangle T=A167015: a(n) = T(n+3,3) = [T^(n+3)](n-1,0) for n>0 with a(0)=1.

The programs for A167019, there is no canonical definition to state claims against.
-/

/-! ## A167019.P14802054510004815973

`A167015(A167614(n+2))`
-/

namespace A167019.P14802054510004815973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A167614 (n + 2)).toNat

end

end A167019.P14802054510004815973

/-! ## A167019.P6532650653377590380

`A167015(A152950(n+4))`
-/

namespace A167019.P6532650653377590380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A152950 (n + 4)).toNat

end

end A167019.P6532650653377590380

/-! ## A167019.P1405955123602271881

`A167015(A141214(n)+6)`
-/

namespace A167019.P1405955123602271881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167015 (A141214 n + 6).toNat

end

end A167019.P1405955123602271881

/-!
# A167020: a(n) = 1 iff 6n-1 is prime.

The programs for A167020, the canonical program `A167020.P3168307801406057643` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167020 has offset 1).

The definition of A167020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167020.P12677368110601305197

`A075743(Δ[n²])`
-/

namespace A167020.P12677368110601305197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A167020.P12677368110601305197

namespace A167020

/-- `A075743(Δ[n²])` -/
def P12677368110601305197.Spec : Prop :=
  ∀ n, P12677368110601305197.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P11007782547350312175

`char[A059325(n+1)]`
-/

namespace A167020.P11007782547350312175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167020.P11007782547350312175

namespace A167020

/-- `char[A059325(n+1)]` -/
def P11007782547350312175.Spec : Prop :=
  ∀ n, (P11007782547350312175.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P17030217294354844688

`abs(A156706(Δ[n²]))`
-/

namespace A167020.P17030217294354844688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156706 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A167020.P17030217294354844688

namespace A167020

/-- `abs(A156706(Δ[n²]))` -/
def P17030217294354844688.Spec : Prop :=
  ∀ n, P17030217294354844688.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P3168307801406057643

`A101264(3*n+2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A167020

/-- `A101264(3*n+2)` -/
def P3168307801406057643.Spec : Prop :=
  ∀ n, P3168307801406057643.a n = A167020 (n + 1)

theorem P3168307801406057643.correct : P3168307801406057643.Spec := by
  intro n
  simp only [A167020, Nat.add_sub_cancel]

end A167020

/-! ## A167020.P18446441546305740195

`A010051(6*n+5)`
-/

namespace A167020.P18446441546305740195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (6 * n + 5)

end

end A167020.P18446441546305740195

namespace A167020

/-- `A010051(6*n+5)` -/
def P18446441546305740195.Spec : Prop :=
  ∀ n, P18446441546305740195.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P493501854710908785

`A340371(6*n+5)`
-/

namespace A167020.P493501854710908785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (6 * n + 5)

end

end A167020.P493501854710908785

namespace A167020

/-- `A340371(6*n+5)` -/
def P493501854710908785.Spec : Prop :=
  ∀ n, P493501854710908785.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P14231787989556122782

`C(n+1, A098098(n))`
-/

namespace A167020.P14231787989556122782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A098098 n).toNat

end

end A167020.P14231787989556122782

namespace A167020

/-- `C(n+1, A098098(n))` -/
def P14231787989556122782.Spec : Prop :=
  ∀ n, (P14231787989556122782.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P1023292365029846642

`char[comp[A059324(n+1)]]`
-/

namespace A167020.P1023292365029846642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A167020.P1023292365029846642

namespace A167020

/-- `char[comp[A059324(n+1)]]` -/
def P1023292365029846642.Spec : Prop :=
  ∀ n, (P1023292365029846642.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P13335466741443062501

`A156706(2*n+1)²`
-/

namespace A167020.P13335466741443062501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1) ^ 2

end

end A167020.P13335466741443062501

namespace A167020

/-- `A156706(2*n+1)²` -/
def P13335466741443062501.Spec : Prop :=
  ∀ n, P13335466741443062501.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P6903130072246523107

`A156707(3*n+2)²`
-/

namespace A167020.P6903130072246523107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (3 * n + 2) ^ 2

end

end A167020.P6903130072246523107

namespace A167020

/-- `A156707(3*n+2)²` -/
def P6903130072246523107.Spec : Prop :=
  ∀ n, P6903130072246523107.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P17832820580749066859

`C(2, A359305(n+1)+1)`
-/

namespace A167020.P17832820580749066859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A359305 (n + 1) + 1).toNat

end

end A167020.P17832820580749066859

namespace A167020

/-- `C(2, A359305(n+1)+1)` -/
def P17832820580749066859.Spec : Prop :=
  ∀ n, (P17832820580749066859.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P6792950924269165322

`and(1, A075743(2*n+1))`
-/

namespace A167020.P6792950924269165322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A075743 (2 * n + 1))

end

end A167020.P6792950924269165322

namespace A167020

/-- `and(1, A075743(2*n+1))` -/
def P6792950924269165322.Spec : Prop :=
  ∀ n, P6792950924269165322.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P17090946031749528077

`C(2, A000005(6*n+5))`
-/

namespace A167020.P17090946031749528077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (6 * n + 5)).toNat

end

end A167020.P17090946031749528077

namespace A167020

/-- `C(2, A000005(6*n+5))` -/
def P17090946031749528077.Spec : Prop :=
  ∀ n, (P17090946031749528077.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P14400664363606285065

`A156706(n+1+n)²²`
-/

namespace A167020.P14400664363606285065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A156706 (n + 1 + n) ^ 2) ^ 2

end

end A167020.P14400664363606285065

namespace A167020

/-- `A156706(n+1+n)²²` -/
def P14400664363606285065.Spec : Prop :=
  ∀ n, P14400664363606285065.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P7488387510812190950

`C(2, A001222(3*(6*n+5)))`
-/

namespace A167020.P7488387510812190950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A001222 (3 * (6 * n + 5))).toNat

end

end A167020.P7488387510812190950

namespace A167020

/-- `C(2, A001222(3*(6*n+5)))` -/
def P7488387510812190950.Spec : Prop :=
  ∀ n, (P7488387510812190950.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P5861715205902550832

`A064911(A017641(n))`
-/

namespace A167020.P5861715205902550832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A017641 n).toNat

end

end A167020.P5861715205902550832

namespace A167020

/-- `A064911(A017641(n))` -/
def P5861715205902550832.Spec : Prop :=
  ∀ n, P5861715205902550832.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P6769670214506835539

`A064911(A017509(n)+n)`
-/

namespace A167020.P6769670214506835539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A017509 n + (n : ℤ)).toNat

end

end A167020.P6769670214506835539

namespace A167020

/-- `A064911(A017509(n)+n)` -/
def P6769670214506835539.Spec : Prop :=
  ∀ n, P6769670214506835539.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P8001691139555457596

`C(n+1, A232343(2*n))`
-/

namespace A167020.P8001691139555457596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A232343 (2 * n)).toNat

end

end A167020.P8001691139555457596

namespace A167020

/-- `C(n+1, A232343(2*n))` -/
def P8001691139555457596.Spec : Prop :=
  ∀ n, (P8001691139555457596.a n : ℤ) = A167020 (n + 1)

end A167020

/-! ## A167020.P7064478492044410332

`floor(1/A359306(2*(n+1)))`
-/

namespace A167020.P7064478492044410332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A359306 (2 * (n + 1)) : ℚ)⌋

end

end A167020.P7064478492044410332

namespace A167020

/-- `floor(1/A359306(2*(n+1)))` -/
def P7064478492044410332.Spec : Prop :=
  ∀ n, P7064478492044410332.a n = A167020 (n + 1)

end A167020

/-! ## A167020.P9285589318258710159

`gcd(2, A060324(2*(n+1)))-1`
-/

namespace A167020.P9285589318258710159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A060324 (2 * (n + 1))) : ℤ) - 1

end

end A167020.P9285589318258710159

namespace A167020

/-- `gcd(2, A060324(2*(n+1)))-1` -/
def P9285589318258710159.Spec : Prop :=
  ∀ n, P9285589318258710159.a n = A167020 (n + 1)

end A167020

/-!
# A167021: a(n) = 1 iff 6n+1 is prime.

The programs for A167021, the canonical program `A167021.P4024625189068959732` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167021 has offset 1).

The definition of A167021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167021.P4024625189068959732

`C(2, ∏{e}[5*n+n+7, #+1])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167021

/-- `C(2, ∏{e}[5*n+n+7, #+1])` -/
def P4024625189068959732.Spec : Prop :=
  ∀ n, (P4024625189068959732.a n : ℤ) = A167021 (n + 1)

theorem P4024625189068959732.correct : P4024625189068959732.Spec := by
  intro n
  simp only [A167021, Nat.add_sub_cancel]

end A167021

/-! ## A167021.P7122515833553631078

`char[A153218(n+1)]`
-/

namespace A167021.P7122515833553631078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A167021.P7122515833553631078

namespace A167021

/-- `char[A153218(n+1)]` -/
def P7122515833553631078.Spec : Prop :=
  ∀ n, (P7122515833553631078.a n : ℤ) = A167021 (n + 1)

end A167021

/-! ## A167021.P14523935816568801434

`A075743(2*(n+1))`
-/

namespace A167021.P14523935816568801434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (n + 1))

end

end A167021.P14523935816568801434

namespace A167021

/-- `A075743(2*(n+1))` -/
def P14523935816568801434.Spec : Prop :=
  ∀ n, P14523935816568801434.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P12962420199347919481

`A156706(2*(n+1))`
-/

namespace A167021.P12962420199347919481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * (n + 1))

end

end A167021.P12962420199347919481

namespace A167021

/-- `A156706(2*(n+1))` -/
def P12962420199347919481.Spec : Prop :=
  ∀ n, P12962420199347919481.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P5367952406805343453

`A101264(3*(n+1))`
-/

namespace A167021.P5367952406805343453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * (n + 1))

end

end A167021.P5367952406805343453

namespace A167021

/-- `A101264(3*(n+1))` -/
def P5367952406805343453.Spec : Prop :=
  ∀ n, P5367952406805343453.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P14970122275620283225

`A156707(3*(n+1))²`
-/

namespace A167021.P14970122275620283225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (3 * (n + 1)) ^ 2

end

end A167021.P14970122275620283225

namespace A167021

/-- `A156707(3*(n+1))²` -/
def P14970122275620283225.Spec : Prop :=
  ∀ n, P14970122275620283225.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P18234226498918031785

`A156709(2*(n+1))-A156709(2*n+1)`
-/

namespace A167021.P18234226498918031785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156709 (2 * (n + 1)) - A156709 (2 * n + 1)

end

end A167021.P18234226498918031785

namespace A167021

/-- `A156709(2*(n+1))-A156709(2*n+1)` -/
def P18234226498918031785.Spec : Prop :=
  ∀ n, P18234226498918031785.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P13319151836887301212

`A010051(A016921(n+1))`
-/

namespace A167021.P13319151836887301212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A016921 (n + 1)).toNat

end

end A167021.P13319151836887301212

namespace A167021

/-- `A010051(A016921(n+1))` -/
def P13319151836887301212.Spec : Prop :=
  ∀ n, P13319151836887301212.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P12404311869896024977

`A010051(A008588(n+1)+1)`
-/

namespace A167021.P12404311869896024977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008588 (n + 1) + 1).toNat

end

end A167021.P12404311869896024977

namespace A167021

/-- `A010051(A008588(n+1)+1)` -/
def P12404311869896024977.Spec : Prop :=
  ∀ n, P12404311869896024977.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P8652506140229605252

`A010051(A004767(n+1)+2*n)`
-/

namespace A167021.P8652506140229605252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A004767 (n + 1) + (2 * n : ℤ)).toNat

end

end A167021.P8652506140229605252

namespace A167021

/-- `A010051(A004767(n+1)+2*n)` -/
def P8652506140229605252.Spec : Prop :=
  ∀ n, P8652506140229605252.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P17544604237724902739

`char[eq[1, ∑{e}[6*n+7, #]]]`
-/

namespace A167021.P17544604237724902739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A167021.P17544604237724902739

namespace A167021

/-- `char[eq[1, ∑{e}[6*n+7, #]]]` -/
def P17544604237724902739.Spec : Prop :=
  ∀ n, (P17544604237724902739.a n : ℤ) = A167021 (n + 1)

end A167021

/-! ## A167021.P8786574429713568131

`A064911(A017545(n+1))`
-/

namespace A167021.P8786574429713568131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A017545 (n + 1)).toNat

end

end A167021.P8786574429713568131

namespace A167021

/-- `A064911(A017545(n+1))` -/
def P8786574429713568131.Spec : Prop :=
  ∀ n, P8786574429713568131.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P8159760670188012154

`C(2, A116933(2*n+1))`
-/

namespace A167021.P8159760670188012154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A116933 (2 * n + 1)).toNat

end

end A167021.P8159760670188012154

namespace A167021

/-- `C(2, A116933(2*n+1))` -/
def P8159760670188012154.Spec : Prop :=
  ∀ n, (P8159760670188012154.a n : ℤ) = A167021 (n + 1)

end A167021

/-! ## A167021.P1819285657830461327

`A010051(A116933(2*n+1))`
-/

namespace A167021.P1819285657830461327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A116933 (2 * n + 1)).toNat

end

end A167021.P1819285657830461327

namespace A167021

/-- `A010051(A116933(2*n+1))` -/
def P1819285657830461327.Spec : Prop :=
  ∀ n, P1819285657830461327.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P1947122388512470641

`A230595(A116933(2*n+1)²)`
-/

namespace A167021.P1947122388512470641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (A116933 (2 * n + 1) ^ 2).toNat

end

end A167021.P1947122388512470641

namespace A167021

/-- `A230595(A116933(2*n+1)²)` -/
def P1947122388512470641.Spec : Prop :=
  ∀ n, P1947122388512470641.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P246749062845625816

`A010051(A016789(2*n+1)+2)`
-/

namespace A167021.P246749062845625816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A016789 (2 * n + 1) + 2).toNat

end

end A167021.P246749062845625816

namespace A167021

/-- `A010051(A016789(2*n+1)+2)` -/
def P246749062845625816.Spec : Prop :=
  ∀ n, P246749062845625816.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P12016282403085865094

`A230595(2*A116933(2*n+1))`
-/

namespace A167021.P12016282403085865094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230595 (2 * A116933 (2 * n + 1)).toNat

end

end A167021.P12016282403085865094

namespace A167021

/-- `A230595(2*A116933(2*n+1))` -/
def P12016282403085865094.Spec : Prop :=
  ∀ n, P12016282403085865094.a n = A167021 (n + 1)

end A167021

/-! ## A167021.P17162045042941044962

`A010051(A038179(2*(n+2)))`
-/

namespace A167021.P17162045042941044962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A038179 (2 * (n + 2))).toNat

end

end A167021.P17162045042941044962

namespace A167021

/-- `A010051(A038179(2*(n+2)))` -/
def P17162045042941044962.Spec : Prop :=
  ∀ n, P17162045042941044962.a n = A167021 (n + 1)

end A167021

/-!
# A167022: Expansion of sqrt(1 - 2*x - 3*x^2) in powers of x.

The programs for A167022, the canonical program `A167022.P9505370295991698775` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167022 has offset 0).

The definition of A167022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167022.P14019409811142771683

`A168058(n)-char[1]`
-/

namespace A167022.P14019409811142771683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167022.P14019409811142771683

namespace A167022

/-- `A168058(n)-char[1]` -/
def P14019409811142771683.Spec : Prop :=
  ∀ n, P14019409811142771683.a n = A167022 n

end A167022

/-! ## A167022.P15561946679150718401

`floor(acot(n)-A007971(n))`
-/

namespace A167022.P15561946679150718401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A007971 n : ℝ)⌋

end

end A167022.P15561946679150718401

namespace A167022

/-- `floor(acot(n)-A007971(n))` -/
def P15561946679150718401.Spec : Prop :=
  ∀ n, P15561946679150718401.a n = A167022 n

end A167022

/-! ## A167022.P13797072154035866568

`xor(1, 1-A168055(n)-3*char[1])`
-/

namespace A167022.P13797072154035866568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A168055 n - ((3 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ))

end

end A167022.P13797072154035866568

namespace A167022

/-- `xor(1, 1-A168055(n)-3*char[1])` -/
def P13797072154035866568.Spec : Prop :=
  ∀ n, P13797072154035866568.a n = A167022 n

end A167022

/-! ## A167022.P9505370295991698775

`A000007(n)-A007971(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A167022

/-- `A000007(n)-A007971(n)` -/
def P9505370295991698775.Spec : Prop :=
  ∀ n, P9505370295991698775.a n = A167022 n

theorem P9505370295991698775.correct : P9505370295991698775.Spec := by
  intro n
  simp only [A167022]

end A167022

/-! ## A167022.P7718663046977647045

`A168051(n)-A086246(n)`
-/

namespace A167022.P7718663046977647045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n - A086246 n

end

end A167022.P7718663046977647045

namespace A167022

/-- `A168051(n)-A086246(n)` -/
def P7718663046977647045.Spec : Prop :=
  ∀ n, P7718663046977647045.a n = A167022 n

end A167022

/-! ## A167022.P2921213225976388146

`xor(A159075(n), A168058(n))`
-/

namespace A167022.P2921213225976388146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A159075 n) (A168058 n)

end

end A167022.P2921213225976388146

namespace A167022

/-- `xor(A159075(n), A168058(n))` -/
def P2921213225976388146.Spec : Prop :=
  ∀ n, P2921213225976388146.a n = A167022 n

end A167022

/-! ## A167022.P8288117339701991404

`or(-A007971(n), A168058(n))`
-/

namespace A167022.P8288117339701991404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A007971 n) (A168058 n)

end

end A167022.P8288117339701991404

namespace A167022

/-- `or(-A007971(n), A168058(n))` -/
def P8288117339701991404.Spec : Prop :=
  ∀ n, P8288117339701991404.a n = A167022 n

end A167022

/-! ## A167022.P10285043960459917861

`A063524(n+1)-A007971(n)`
-/

namespace A167022.P10285043960459917861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) - A007971 n

end

end A167022.P10285043960459917861

namespace A167022

/-- `A063524(n+1)-A007971(n)` -/
def P10285043960459917861.Spec : Prop :=
  ∀ n, P10285043960459917861.a n = A167022 n

end A167022

/-! ## A167022.P15303681068278745316

`A154955(n+1)-A126068(n)`
-/

namespace A167022.P15303681068278745316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) - A126068 n

end

end A167022.P15303681068278745316

namespace A167022

/-- `A154955(n+1)-A126068(n)` -/
def P15303681068278745316.Spec : Prop :=
  ∀ n, P15303681068278745316.a n = A167022 n

end A167022

/-! ## A167022.P11312041708472562551

`A019590(n+2)-A007971(n)`
-/

namespace A167022.P11312041708472562551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) - A007971 n

end

end A167022.P11312041708472562551

namespace A167022

/-- `A019590(n+2)-A007971(n)` -/
def P11312041708472562551.Spec : Prop :=
  ∀ n, P11312041708472562551.a n = A167022 n

end A167022

/-! ## A167022.P9519930857429075462

`and(1, A113679(n))-A007971(n)`
-/

namespace A167022.P9519930857429075462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A113679 n) - A007971 n

end

end A167022.P9519930857429075462

namespace A167022

/-- `and(1, A113679(n))-A007971(n)` -/
def P9519930857429075462.Spec : Prop :=
  ∀ n, P9519930857429075462.a n = A167022 n

end A167022

/-! ## A167022.P4831577188641550926

`and(1, A168055(n))-A007971(n)`
-/

namespace A167022.P4831577188641550926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A168055 n) - A007971 n

end

end A167022.P4831577188641550926

namespace A167022

/-- `and(1, A168055(n))-A007971(n)` -/
def P4831577188641550926.Spec : Prop :=
  ∀ n, P4831577188641550926.a n = A167022 n

end A167022

/-! ## A167022.P9703700263748747543

`A159075(n+1)²-A007971(n)`
-/

namespace A167022.P9703700263748747543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) ^ 2 - A007971 n

end

end A167022.P9703700263748747543

namespace A167022

/-- `A159075(n+1)²-A007971(n)` -/
def P9703700263748747543.Spec : Prop :=
  ∀ n, P9703700263748747543.a n = A167022 n

end A167022

/-! ## A167022.P8172604812043241216

`A154955(n+2)²-A007971(n)`
-/

namespace A167022.P8172604812043241216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 2) ^ 2 - A007971 n

end

end A167022.P8172604812043241216

namespace A167022

/-- `A154955(n+2)²-A007971(n)` -/
def P8172604812043241216.Spec : Prop :=
  ∀ n, P8172604812043241216.a n = A167022 n

end A167022

/-! ## A167022.P12461526525357432890

`A019590(n+1)-2*A086246(n)`
-/

namespace A167022.P12461526525357432890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) - 2 * A086246 n

end

end A167022.P12461526525357432890

namespace A167022

/-- `A019590(n+1)-2*A086246(n)` -/
def P12461526525357432890.Spec : Prop :=
  ∀ n, P12461526525357432890.a n = A167022 n

end A167022

/-! ## A167022.P3324253606424632721

`A154955(2*n+1)-A007971(n)`
-/

namespace A167022.P3324253606424632721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (2 * n + 1) - A007971 n

end

end A167022.P3324253606424632721

namespace A167022

/-- `A154955(2*n+1)-A007971(n)` -/
def P3324253606424632721.Spec : Prop :=
  ∀ n, P3324253606424632721.a n = A167022 n

end A167022

/-! ## A167022.P12922858040053297325

`2*A168051(n)-A019590(n+1)`
-/

namespace A167022.P12922858040053297325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168051 n - A019590 (n + 1)

end

end A167022.P12922858040053297325

namespace A167022

/-- `2*A168051(n)-A019590(n+1)` -/
def P12922858040053297325.Spec : Prop :=
  ∀ n, P12922858040053297325.a n = A167022 n

end A167022

/-! ## A167022.P1754430972275673255

`A008683(A000118(n))-A007971(n)`
-/

namespace A167022.P1754430972275673255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000118 n).toNat - A007971 n

end

end A167022.P1754430972275673255

namespace A167022

/-- `A008683(A000118(n))-A007971(n)` -/
def P1754430972275673255.Spec : Prop :=
  ∀ n, P1754430972275673255.a n = A167022 n

end A167022

/-! ## A167022.P5766604538719808478

`A008683(A008574(n))-A007971(n)`
-/

namespace A167022.P5766604538719808478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat - A007971 n

end

end A167022.P5766604538719808478

namespace A167022

/-- `A008683(A008574(n))-A007971(n)` -/
def P5766604538719808478.Spec : Prop :=
  ∀ n, P5766604538719808478.a n = A167022 n

end A167022

/-!
# A167024: Triangle read by rows: T(n, m) = binomial(n, m)* Sum_{k=0..m} binomial(n, k) for 0 <= m <= n.

The programs for A167024, the canonical program `A167024.P6195221100249756200` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167024 has offset 0).

The definition of A167024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167024.P6195221100249756200

`A007318(n)*A008949(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A167024

/-- `A007318(n)*A008949(n)` -/
def P6195221100249756200.Spec : Prop :=
  ∀ n, P6195221100249756200.a n = A167024 n

theorem P6195221100249756200.correct : P6195221100249756200.Spec := by
  intro n
  simp only [A167024]

end A167024

/-! ## A167024.P8073659122185283134

`sqrt(A008459(n))*A008949(n)`
-/

namespace A167024.P8073659122185283134
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A008949 n : ℝ)

end

end A167024.P8073659122185283134

namespace A167024

/-- `sqrt(A008459(n))*A008949(n)` -/
def P8073659122185283134.Spec : Prop :=
  ∀ n, P8073659122185283134.a n = (A167024 n : ℝ)

end A167024

/-! ## A167024.P11598640885402904421

`(A014473(n)+1)*A008949(n)`
-/

namespace A167024.P11598640885402904421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A008949 n

end

end A167024.P11598640885402904421

namespace A167024

/-- `(A014473(n)+1)*A008949(n)` -/
def P11598640885402904421.Spec : Prop :=
  ∀ n, P11598640885402904421.a n = A167024 n

end A167024

/-! ## A167024.P2399180509913086845

`A008949(n)/2*A028326(n)`
-/

namespace A167024.P2399180509913086845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008949 n : ℚ) / 2 * (A028326 n : ℚ)

end

end A167024.P2399180509913086845

namespace A167024

/-- `A008949(n)/2*A028326(n)` -/
def P2399180509913086845.Spec : Prop :=
  ∀ n, P2399180509913086845.a n = (A167024 n : ℚ)

end A167024

/-! ## A167024.P17613853048649495448

`A007318(n)*A055248(A061579(n))`
-/

namespace A167024.P17613853048649495448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055248 (A061579 n).toNat

end

end A167024.P17613853048649495448

namespace A167024

/-- `A007318(n)*A055248(A061579(n))` -/
def P17613853048649495448.Spec : Prop :=
  ∀ n, P17613853048649495448.a n = A167024 n

end A167024

/-! ## A167024.P15639365435752620257

`(A051597(n)-A051601(n))*A008949(n)`
-/

namespace A167024.P15639365435752620257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051597 n - A051601 n) * A008949 n

end

end A167024.P15639365435752620257

namespace A167024

/-- `(A051597(n)-A051601(n))*A008949(n)` -/
def P15639365435752620257.Spec : Prop :=
  ∀ n, P15639365435752620257.a n = A167024 n

end A167024

/-! ## A167024.P10289038972875119342

`A008619(A132731(n))*A008949(n)`
-/

namespace A167024.P10289038972875119342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A132731 n).toNat * A008949 n

end

end A167024.P10289038972875119342

namespace A167024

/-- `A008619(A132731(n))*A008949(n)` -/
def P10289038972875119342.Spec : Prop :=
  ∀ n, P10289038972875119342.a n = A167024 n

end A167024

/-! ## A167024.P12228914781271852551

`(A005843(A008949(n))-A054143(n))*A008949(n)`
-/

namespace A167024.P12228914781271852551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (A008949 n).toNat - A054143 n) * A008949 n

end

end A167024.P12228914781271852551

namespace A167024

/-- `(A005843(A008949(n))-A054143(n))*A008949(n)` -/
def P12228914781271852551.Spec : Prop :=
  ∀ n, P12228914781271852551.a n = A167024 n

end A167024

/-! ## A167024.P17345754219088588727

`A008949(n)*A054576(A132200(n))`
-/

namespace A167024.P17345754219088588727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n * A054576 (A132200 n).toNat

end

end A167024.P17345754219088588727

namespace A167024

/-- `A008949(n)*A054576(A132200(n))` -/
def P17345754219088588727.Spec : Prop :=
  ∀ n, P17345754219088588727.a n = A167024 n

end A167024

/-! ## A167024.P13466514484580128206

`A007318(n)*A062050(∑[A007318(n)])`
-/

namespace A167024.P13466514484580128206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A062050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167024.P13466514484580128206

namespace A167024

/-- `A007318(n)*A062050(∑[A007318(n)])` -/
def P13466514484580128206.Spec : Prop :=
  ∀ n, P13466514484580128206.a n = A167024 n

end A167024

/-!
# A167028: Number of terms in the expansion of the determinant of a skew-symmetric matrix of order n.

The programs for A167028, there is no canonical definition to state claims against.
-/

/-! ## A167028.P10431116069232093834

`A000035(n)*A002370(A065033(n))`
-/

namespace A167028.P10431116069232093834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A002370 (A065033 n).toNat

end

end A167028.P10431116069232093834

/-! ## A167028.P3522557570115958185

`A000035(n)*A002370(∑[A000035(n)])`
-/

namespace A167028.P3522557570115958185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A002370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167028.P3522557570115958185

/-! ## A167028.P1621890631350890988

`A000035(n)*A002370(A032742(n+1))`
-/

namespace A167028.P1621890631350890988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A002370 (A032742 (n + 1)).toNat

end

end A167028.P1621890631350890988

/-! ## A167028.P11738658168082252693

`Δ[A008619(n)]*A002370(A032742(n+1))`
-/

namespace A167028.P11738658168082252693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002370 (A032742 (n + 1)).toNat

end

end A167028.P11738658168082252693

/-! ## A167028.P12056361045692878628

`char[A005408(n)]*A002370(A032742(n+1))`
-/

namespace A167028.P12056361045692878628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002370 (A032742 (n + 1)).toNat

end

end A167028.P12056361045692878628

/-! ## A167028.P2883949685786172218

`A000035(n)*A002370(A008619(n*A000035(n)))`
-/

namespace A167028.P2883949685786172218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A002370 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A167028.P2883949685786172218

/-! ## A167028.P1161344429714306920

`A000035(n)*A002370(A008619(n))`
-/

namespace A167028.P1161344429714306920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A002370 (A008619 n).toNat

end

end A167028.P1161344429714306920

/-! ## A167028.P1493215038304939382

`char[A005408(n)]*A002370(A008619(n))`
-/

namespace A167028.P1493215038304939382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002370 (A008619 n).toNat

end

end A167028.P1493215038304939382

/-!
# A167030: a(n) = (2^n - (-1)^n - 3)/3.

The programs for A167030, the canonical program `A167030.P11582105971661307295` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167030 has offset 0).

The definition of A167030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-(-1)^n-3)/3` (program `A167030.P823018184381873061`, by `A167030.P823018184381873061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167030.P11582105971661307295

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=-1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167030

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P11582105971661307295.Spec : Prop :=
  ∀ n, P11582105971661307295.a n = A167030 n

theorem P11582105971661307295.correct : P11582105971661307295.Spec := by
  intro n
  simp only [A167030]

end A167030

/-! ## A167030.P5631325567224494374

`A001045(n)-1`
-/

namespace A167030.P5631325567224494374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - 1

end

end A167030.P5631325567224494374

namespace A167030

/-- `A001045(n)-1` -/
def P5631325567224494374.Spec : Prop :=
  ∀ n, P5631325567224494374.a n = A167030 n

end A167030

/-! ## A167030.P15879948962329492612

`(2^n-(-1)^n)/3-1`
-/

namespace A167030.P15879948962329492612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (-1) ^ n : ℚ) / 3 - 1

end

end A167030.P15879948962329492612

namespace A167030

/-- `(2^n-(-1)^n)/3-1` -/
def P15879948962329492612.Spec : Prop :=
  ∀ n, P15879948962329492612.a n = (A167030 n : ℚ)

theorem P15879948962329492612.correct : P15879948962329492612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A167030, Nat.add_sub_cancel, A167030.P15879948962329492612.a, A167030.P11582105971661307295.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A167030, Nat.add_sub_cancel, A167030.P15879948962329492612.a, A167030.P11582105971661307295.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167030

/-! ## A167030.P823018184381873061

`(2^n-(-1)^n-3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167030.P823018184381873061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (-1) ^ n - 3 : ℚ) / 3

end

end A167030.P823018184381873061

namespace A167030

/-- `(2^n-(-1)^n-3)/3` -/
def P823018184381873061.Spec : Prop :=
  ∀ n, P823018184381873061.a n = (A167030 n : ℚ)

theorem P823018184381873061.correct : P823018184381873061.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A167030, Nat.add_sub_cancel, A167030.P823018184381873061.a, A167030.P11582105971661307295.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A167030, Nat.add_sub_cancel, A167030.P823018184381873061.a, A167030.P11582105971661307295.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167030

/-! ## A167030.P3341121637883950458

`ogf((-1+2x+x^2)/(1-2x-x^2+2x^3))`
-/

namespace A167030.P3341121637883950458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 1] [1, -2, -1, 2] n

end

end A167030.P3341121637883950458

namespace A167030

/-- `ogf((-1+2x+x^2)/(1-2x-x^2+2x^3))` -/
def P3341121637883950458.Spec : Prop :=
  ∀ n, P3341121637883950458.a n = A167030 n

end A167030

/-! ## A167030.P5680807891599084659

`floor(∑[A167167(n)/2])`
-/

namespace A167030.P5680807891599084659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167167 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A167030.P5680807891599084659

namespace A167030

/-- `floor(∑[A167167(n)/2])` -/
def P5680807891599084659.Spec : Prop :=
  ∀ n, P5680807891599084659.a n = A167030 n

end A167030

/-! ## A167030.P1011716532724359170

`xor(A001045(n), A158388(n))`
-/

namespace A167030.P1011716532724359170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001045 n) (A158388 n)

end

end A167030.P1011716532724359170

namespace A167030

/-- `xor(A001045(n), A158388(n))` -/
def P1011716532724359170.Spec : Prop :=
  ∀ n, P1011716532724359170.a n = A167030 n

end A167030

/-! ## A167030.P7462478553353679949

`xor(A057427(n), A167167(n))`
-/

namespace A167030.P7462478553353679949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A167167 n)

end

end A167030.P7462478553353679949

namespace A167030

/-- `xor(A057427(n), A167167(n))` -/
def P7462478553353679949.Spec : Prop :=
  ∀ n, P7462478553353679949.a n = A167030 n

end A167030

/-! ## A167030.P12206442720728358747

`A171449(n)%A052953(n)`
-/

namespace A167030.P12206442720728358747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A052953 n)

end

end A167030.P12206442720728358747

namespace A167030

/-- `A171449(n)%A052953(n)` -/
def P12206442720728358747.Spec : Prop :=
  ∀ n, P12206442720728358747.a n = A167030 n

end A167030

/-! ## A167030.P13743517644665328917

`and(A000918(n), A167167(n))`
-/

namespace A167030.P13743517644665328917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000918 n) (A167167 n)

end

end A167030.P13743517644665328917

namespace A167030

/-- `and(A000918(n), A167167(n))` -/
def P13743517644665328917.Spec : Prop :=
  ∀ n, P13743517644665328917.a n = A167030 n

end A167030

/-! ## A167030.P5098210517135859485

`xor(A000975(n), A140253(n))`
-/

namespace A167030.P5098210517135859485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A140253 n)

end

end A167030.P5098210517135859485

namespace A167030

/-- `xor(A000975(n), A140253(n))` -/
def P5098210517135859485.Spec : Prop :=
  ∀ n, P5098210517135859485.a n = A167030 n

end A167030

/-! ## A167030.P5175327344612704518

`(A084241(n)-A084240(n))*A167193(n)`
-/

namespace A167030.P5175327344612704518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084241 n - A084240 n) * A167193 n

end

end A167030.P5175327344612704518

namespace A167030

/-- `(A084241(n)-A084240(n))*A167193(n)` -/
def P5175327344612704518.Spec : Prop :=
  ∀ n, P5175327344612704518.a n = A167030 n

end A167030

/-!
# A167031: a(n) = 20*a(n-1) - 64*a(n-2) + 1 for n > 1; a(0) = 1, a(1) = 20.

The programs for A167031, the canonical program `A167031.P18107237163638386805` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167031 has offset 0).

The definition of A167031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)+1` (program `A167031.P18107237163638386805`, by `A167031.P18107237163638386805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167031.P18107237163638386805

`20*a(n-1)-64*a(n-2)+1` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167031

/-- `20*a(n-1)-64*a(n-2)+1` -/
def P18107237163638386805.Spec : Prop :=
  ∀ n, P18107237163638386805.a n = A167031 n

theorem P18107237163638386805.correct : P18107237163638386805.Spec := by
  intro n
  simp only [A167031]

end A167031

/-! ## A167031.P15255524648804512318

`(241*16^n-65*4^n+4)/180`
-/

namespace A167031.P15255524648804512318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((241 * 16 ^ n : ℤ) - (65 * 4 ^ n : ℤ) + 4 : ℚ) / 180

end

end A167031.P15255524648804512318

namespace A167031

/-- `(241*16^n-65*4^n+4)/180` -/
def P15255524648804512318.Spec : Prop :=
  ∀ n, P15255524648804512318.a n = (A167031 n : ℚ)

theorem P15255524648804512318.correct : P15255524648804512318.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A167031, Nat.add_sub_cancel, A167031.P15255524648804512318.a, A167031.P18107237163638386805.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A167031, Nat.add_sub_cancel, A167031.P15255524648804512318.a, A167031.P18107237163638386805.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167031

/-! ## A167031.P16341447094082777665

`2*A167032(n)-A167033(n)`
-/

namespace A167031.P16341447094082777665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167032 n - A167033 n

end

end A167031.P16341447094082777665

namespace A167031

/-- `2*A167032(n)-A167033(n)` -/
def P16341447094082777665.Spec : Prop :=
  ∀ n, P16341447094082777665.a n = A167031 n

end A167031

/-! ## A167031.P1142202381222721418

`A166965(n)+A167033(n)-A167032(n)`
-/

namespace A167031.P1142202381222721418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166965 n + (A167033 n - A167032 n)

end

end A167031.P1142202381222721418

namespace A167031

/-- `A166965(n)+A167033(n)-A167032(n)` -/
def P1142202381222721418.Spec : Prop :=
  ∀ n, P1142202381222721418.a n = A167031 n

end A167031

/-! ## A167031.P8978057052283672004

`A006105(n+2)+A166927(n)-A166965(n)`
-/

namespace A167031.P8978057052283672004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 2) + (A166927 n - A166965 n)

end

end A167031.P8978057052283672004

namespace A167031

/-- `A006105(n+2)+A166927(n)-A166965(n)` -/
def P8978057052283672004.Spec : Prop :=
  ∀ n, P8978057052283672004.a n = A167031 n

end A167031

/-! ## A167031.P12393039837336211873

`A006105(n+2)+A166965(n)-A166984(n)`
-/

namespace A167031.P12393039837336211873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 2) + (A166965 n - A166984 n)

end

end A167031.P12393039837336211873

namespace A167031

/-- `A006105(n+2)+A166965(n)-A166984(n)` -/
def P12393039837336211873.Spec : Prop :=
  ∀ n, P12393039837336211873.a n = A167031 n

end A167031

/-! ## A167031.P13325907890394464480

`A166984(n)+A167032(n)-A006105(n+2)`
-/

namespace A167031.P13325907890394464480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166984 n + (A167032 n - A006105 (n + 2))

end

end A167031.P13325907890394464480

namespace A167031

/-- `A166984(n)+A167032(n)-A006105(n+2)` -/
def P13325907890394464480.Spec : Prop :=
  ∀ n, P13325907890394464480.a n = A167031 n

end A167031

/-! ## A167031.P17876848014367581184

`A006105(n+3)-Δ[A167032(n)]`
-/

namespace A167031.P17876848014367581184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 3) - (f1 (n + 1) - f1 n)

end

end A167031.P17876848014367581184

namespace A167031

/-- `A006105(n+3)-Δ[A167032(n)]` -/
def P17876848014367581184.Spec : Prop :=
  ∀ n, P17876848014367581184.a n = A167031 n

end A167031

/-! ## A167031.P16903385528801285324

`A167122(n+1)-A167032(n+1)`
-/

namespace A167031.P16903385528801285324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167122 (n + 1) - A167032 (n + 1)

end

end A167031.P16903385528801285324

namespace A167031

/-- `A167122(n+1)-A167032(n+1)` -/
def P16903385528801285324.Spec : Prop :=
  ∀ n, P16903385528801285324.a n = A167031 n

end A167031

/-!
# A167032: a(n) = 20*a(n-1) - 64*a(n-2) + 2 for n > 1; a(0) = 1, a(1) = 21.

The programs for A167032, the canonical program `A167032.P14570795973049066727` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167032 has offset 0).

The definition of A167032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)+2` (program `A167032.P14570795973049066727`, by `A167032.P14570795973049066727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167032.P14570795973049066727

`20*a(n-1)-64*a(n-2)+2` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167032

/-- `20*a(n-1)-64*a(n-2)+2` -/
def P14570795973049066727.Spec : Prop :=
  ∀ n, P14570795973049066727.a n = A167032 n

theorem P14570795973049066727.correct : P14570795973049066727.Spec := by
  intro n
  simp only [A167032]

end A167032

/-! ## A167032.P9757870501088000106

`(257*16^n-85*4^n+8)/180`
-/

namespace A167032.P9757870501088000106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((257 * 16 ^ n : ℤ) - (85 * 4 ^ n : ℤ) + 8 : ℚ) / 180

end

end A167032.P9757870501088000106

namespace A167032

/-- `(257*16^n-85*4^n+8)/180` -/
def P9757870501088000106.Spec : Prop :=
  ∀ n, P9757870501088000106.a n = (A167032 n : ℚ)

theorem P9757870501088000106.correct : P9757870501088000106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A167032, Nat.add_sub_cancel, A167032.P9757870501088000106.a, A167032.P14570795973049066727.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A167032, Nat.add_sub_cancel, A167032.P9757870501088000106.a, A167032.P14570795973049066727.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167032

/-! ## A167032.P17914470824049579982

`2*A167031(n)-A166965(n)`
-/

namespace A167032.P17914470824049579982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167031 n - A166965 n

end

end A167032.P17914470824049579982

namespace A167032

/-- `2*A167031(n)-A166965(n)` -/
def P17914470824049579982.Spec : Prop :=
  ∀ n, P17914470824049579982.a n = A167032 n

end A167032

/-! ## A167032.P12183886904841955637

`A166965(n)+A167033(n)-A167031(n)`
-/

namespace A167032.P12183886904841955637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166965 n + (A167033 n - A167031 n)

end

end A167032.P12183886904841955637

namespace A167032

/-- `A166965(n)+A167033(n)-A167031(n)` -/
def P12183886904841955637.Spec : Prop :=
  ∀ n, P12183886904841955637.a n = A167032 n

end A167032

/-! ## A167032.P10345634590116059918

`A006105(n+2)+A167031(n)-A166984(n)`
-/

namespace A167032.P10345634590116059918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 2) + (A167031 n - A166984 n)

end

end A167032.P10345634590116059918

namespace A167032

/-- `A006105(n+2)+A167031(n)-A166984(n)` -/
def P10345634590116059918.Spec : Prop :=
  ∀ n, P10345634590116059918.a n = A167032 n

end A167032

/-! ## A167032.P5812753711695361794

`A167122(n+1)-A006105(n+3)`
-/

namespace A167032.P5812753711695361794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167122 (n + 1) - A006105 (n + 3)

end

end A167032.P5812753711695361794

namespace A167032

/-- `A167122(n+1)-A006105(n+3)` -/
def P5812753711695361794.Spec : Prop :=
  ∀ n, P5812753711695361794.a n = A167032 n

end A167032

/-!
# A167033: a(n) = 20*a(n-1) - 64*a(n-2) + 3 for n > 1; a(0) = 1, a(1) = 22.

The programs for A167033, the canonical program `A167033.P1737495719900714889` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167033 has offset 0).

The definition of A167033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-64*a(n-2)+3` (program `A167033.P1737495719900714889`, by `A167033.P1737495719900714889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167033.P1737495719900714889

`20*a(n-1)-64*a(n-2)+3` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167033

/-- `20*a(n-1)-64*a(n-2)+3` -/
def P1737495719900714889.Spec : Prop :=
  ∀ n, P1737495719900714889.a n = A167033 n

theorem P1737495719900714889.correct : P1737495719900714889.Spec := by
  intro n
  simp only [A167033]

end A167033

/-! ## A167033.P1222800788970542752

`(91*16^n-35*4^n+4)/60`
-/

namespace A167033.P1222800788970542752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((91 * 16 ^ n : ℤ) - (35 * 4 ^ n : ℤ) + 4 : ℚ) / 60

end

end A167033.P1222800788970542752

namespace A167033

/-- `(91*16^n-35*4^n+4)/60` -/
def P1222800788970542752.Spec : Prop :=
  ∀ n, P1222800788970542752.a n = (A167033 n : ℚ)

theorem P1222800788970542752.correct : P1222800788970542752.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A167033, Nat.add_sub_cancel, A167033.P1222800788970542752.a, A167033.P1737495719900714889.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A167033, Nat.add_sub_cancel, A167033.P1222800788970542752.a, A167033.P1737495719900714889.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167033

/-! ## A167033.P3366962696402195351

`2*A167032(n)-A167031(n)`
-/

namespace A167033.P3366962696402195351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167032 n - A167031 n

end

end A167033.P3366962696402195351

namespace A167033

/-- `2*A167032(n)-A167031(n)` -/
def P3366962696402195351.Spec : Prop :=
  ∀ n, P3366962696402195351.a n = A167033 n

end A167033

/-! ## A167033.P7526687045084659381

`A167031(n)+A167032(n)-A166965(n)`
-/

namespace A167033.P7526687045084659381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167031 n + (A167032 n - A166965 n)

end

end A167033.P7526687045084659381

namespace A167033

/-- `A167031(n)+A167032(n)-A166965(n)` -/
def P7526687045084659381.Spec : Prop :=
  ∀ n, P7526687045084659381.a n = A167033 n

end A167033

/-! ## A167033.P8662758480805061665

`A006105(n+2)+A167032(n)-A166984(n)`
-/

namespace A167033.P8662758480805061665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (n + 2) + (A167032 n - A166984 n)

end

end A167033.P8662758480805061665

namespace A167033

/-- `A006105(n+2)+A167032(n)-A166984(n)` -/
def P8662758480805061665.Spec : Prop :=
  ∀ n, P8662758480805061665.a n = A167033 n

end A167033

/-! ## A167033.P4370057074736447111

`A167032(n+1)+A167032(n)-A006105(n+3)`
-/

namespace A167033.P4370057074736447111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167032 (n + 1) + (A167032 n - A006105 (n + 3))

end

end A167033.P4370057074736447111

namespace A167033

/-- `A167032(n+1)+A167032(n)-A006105(n+3)` -/
def P4370057074736447111.Spec : Prop :=
  ∀ n, P4370057074736447111.a n = A167033 n

end A167033

/-!
# A167034: Triangle t(n,m)= (m+1)^n*binomial(n,m) if m <= n/2, otherwise t(n,m) = t(n,n-m).

The programs for A167034, there is no canonical definition to state claims against.
-/

/-! ## A167034.P3201803153485693702

`A003983(n+1)^A003056(n)*A007318(n)`
-/

namespace A167034.P3201803153485693702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003983 (n + 1) : ℚ) ^ (A003056 n : ℤ) * (A007318 n : ℚ)

end

end A167034.P3201803153485693702

/-! ## A167034.P1999441755936916698

`A073806(A022176(n))`
-/

namespace A167034.P1999441755936916698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073806 (A022176 n).toNat

end

end A167034.P1999441755936916698

/-! ## A167034.P6311046824978458271

`A018744(A081580(n))`
-/

namespace A167034.P6311046824978458271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A081580 n).toNat

end

end A167034.P6311046824978458271

/-! ## A167034.P5111755246118950289

`A018744(A131065(n))`
-/

namespace A167034.P5111755246118950289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A131065 n).toNat

end

end A167034.P5111755246118950289

/-! ## A167034.P1614197253595093555

`A003004(A176491(n))`
-/

namespace A167034.P1614197253595093555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A176491 n).toNat

end

end A167034.P1614197253595093555

/-!
# A167035: Squares that remain squares if prefixed with a 1.

The programs for A167035, there is no canonical definition to state claims against.
-/

/-! ## A167035.P11827090918879142078

`∩[A272671(n+1), n²]`
-/

namespace A167035.P11827090918879142078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167035.P11827090918879142078

/-! ## A167035.P13046934967872268022

`∩[A000290(n), A272671(n+1)]`
-/

namespace A167035.P13046934967872268022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167035.P13046934967872268022

/-!
# A167036: Squares that remain squares prefixed with a 2.

The programs for A167036, there is no canonical definition to state claims against.
-/

/-! ## A167036.P10816122714921475255

`∩[round(1/acot(5*n))², A273357(n+2)]`
-/

namespace A167036.P10816122714921475255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167036.P10816122714921475255

/-! ## A167036.P6961156602006044685

`∩[A273357(n+1), A016850(n)]`
-/

namespace A167036.P6961156602006044685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016850 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167036.P6961156602006044685

/-! ## A167036.P14517265198425769645

`∩[A273357(n+1), A008587(n)²]`
-/

namespace A167036.P14517265198425769645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167036.P14517265198425769645

/-! ## A167036.P17266691876512620734

`∩[A273357(n+1), A340585(n+1)]`
-/

namespace A167036.P17266691876512620734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167036.P17266691876512620734

/-!
# A167037: Squares that remain squares when prefixed with a 3.

The programs for A167037, there is no canonical definition to state claims against.
-/

/-! ## A167037.P9628159318452873423

`∩[(n+1)², A273358(n+1)]`
-/

namespace A167037.P9628159318452873423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167037.P9628159318452873423

/-! ## A167037.P13015166993953382119

`∩[A273358(n+1), A340585(A340610(n+1))]`
-/

namespace A167037.P13015166993953382119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (A340610 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167037.P13015166993953382119

/-!
# A167038: Squares that remain squares when prefixed with a 4.

The programs for A167038, there is no canonical definition to state claims against.
-/

/-! ## A167038.P9980006960662454803

`∩[A075783(n+1), A273359(n+1)]`
-/

namespace A167038.P9980006960662454803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167038.P9980006960662454803

/-! ## A167038.P194649076967886719

`∩[A273359(n+1), A016766(n)]`
-/

namespace A167038.P194649076967886719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167038.P194649076967886719

/-! ## A167038.P9551282576002694336

`∩[A204503(n+1), A273359(n+1)]`
-/

namespace A167038.P9551282576002694336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167038.P9551282576002694336

/-! ## A167038.P17734187076915375242

`∩[A273359(n+1), A353238(n+1)]`
-/

namespace A167038.P17734187076915375242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167038.P17734187076915375242

/-! ## A167038.P11284359649442851858

`∩[A273359(n+1), A000290(n)]`
-/

namespace A167038.P11284359649442851858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167038.P11284359649442851858

/-!
# A167040: Triangle T(n, k) = (n-k)^n * binomial(n, n-k) for n < 2*k, k^n * binomial(n, k) for n >= 2*k with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A167040, there is no canonical definition to state claims against.
-/

/-! ## A167040.P6360746389160327987

`(A285118(n)+A285116(n))*A001316(A282230(n+1))`
-/

namespace A167040.P6360746389160327987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A001316 (A282230 (n + 1)).toNat

end

end A167040.P6360746389160327987

/-! ## A167040.P5065237494002034589

`(A028276(n)-A028263(n))*A001316(A282230(n+1))`
-/

namespace A167040.P5065237494002034589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A001316 (A282230 (n + 1)).toNat

end

end A167040.P5065237494002034589

/-! ## A167040.P17089379762681017533

`A129394(A174125(n))`
-/

namespace A167040.P17089379762681017533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129394 (A174125 n).toNat

end

end A167040.P17089379762681017533

/-! ## A167040.P5691206198338719826

`A289081(A059922(n))`
-/

namespace A167040.P5691206198338719826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289081 (A059922 n).toNat

end

end A167040.P5691206198338719826

/-! ## A167040.P7564762146742816433

`A289081(A309876(n))`
-/

namespace A167040.P7564762146742816433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289081 (A309876 n).toNat

end

end A167040.P7564762146742816433

/-!
# A167041: Squares that remain squares when prefixed with a 6.

The programs for A167041, there is no canonical definition to state claims against.
-/

/-! ## A167041.P17851652822218105400

`∩[A273361(n+1), n²]`
-/

namespace A167041.P17851652822218105400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167041.P17851652822218105400

/-! ## A167041.P15381043304853097803

`∩[A000290(n), A273361(n+1)]`
-/

namespace A167041.P15381043304853097803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167041.P15381043304853097803

/-! ## A167041.P13339867418736777119

`∩[A001597(n+1), A273361(n+1)]`
-/

namespace A167041.P13339867418736777119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167041.P13339867418736777119

/-! ## A167041.P10108996079875450723

`∩[A340585(n+1), A273361(n+1)]`
-/

namespace A167041.P10108996079875450723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167041.P10108996079875450723

/-!
# A167042: Squares that remain squares when prefixed with a 7.

The programs for A167042, there is no canonical definition to state claims against.
-/

/-! ## A167042.P14818658053360561150

`∩[A273362(n+1), n²]`
-/

namespace A167042.P14818658053360561150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167042.P14818658053360561150

/-! ## A167042.P1736084955124257912

`∩[A000290(n), A273362(n+1)]`
-/

namespace A167042.P1736084955124257912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167042.P1736084955124257912

/-!
# A167043: Squares that remain squares when prefixed with an 8.

The programs for A167043, there is no canonical definition to state claims against.
-/

/-! ## A167043.P13356991591915920146

`∩[A034377(n+1), A273363(n+1)]`
-/

namespace A167043.P13356991591915920146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167043.P13356991591915920146

/-! ## A167043.P6360519504325607801

`∩[A061099(n+1), A273363(n+1)]`
-/

namespace A167043.P6360519504325607801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167043.P6360519504325607801

/-! ## A167043.P10197516351784229934

`∩[A225885(n+1), A273363(n+1)]`
-/

namespace A167043.P10197516351784229934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167043.P10197516351784229934

/-! ## A167043.P14429668236708039731

`∩[A273363(n+1), A117676(n)]`
-/

namespace A167043.P14429668236708039731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117676 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167043.P14429668236708039731

/-! ## A167043.P12958915923707169488

`∩[A135556(n+1), A273363(n+1)]`
-/

namespace A167043.P12958915923707169488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167043.P12958915923707169488

/-!
# A167044: Squares that remain squares when prefixed with a 9.

The programs for A167044, there is no canonical definition to state claims against.
-/

/-! ## A167044.P11081107970260212931

`∩[A273364(n+2), n²]`
-/

namespace A167044.P11081107970260212931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273364 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167044.P11081107970260212931

/-!
# A167045: Squares that remains a square when some single digit is inserted in front of its decimal expansion.

The programs for A167045, there is no canonical definition to state claims against.
-/

/-! ## A167045.P160372369479676303

`eq[A181563(2*n+1), A347470(2*n)]²`
-/

namespace A167045.P160372369479676303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A167045.P160372369479676303

/-! ## A167045.P246812508098647307

`eq[A181563(2*n+1), A257297(2*n)]²`
-/

namespace A167045.P246812508098647307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181563 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A167045.P246812508098647307

/-! ## A167045.P581222312100169681

`∑[A006530(∏[A321966(n)])]²`
-/

namespace A167045.P581222312100169681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A167045.P581222312100169681

/-! ## A167045.P411125255126634514

`∑[A295935(A365161(n+1))]²`
-/

namespace A167045.P411125255126634514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295935 (A365161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A167045.P411125255126634514

/-! ## A167045.P5317865823573811255

`A098359(eq[A101479(n+2), A181651(n+3)])`
-/

namespace A167045.P5317865823573811255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181651 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167045.P5317865823573811255

/-!
# A167050: Squarefree numbers with as many decimal digits as distinct prime factors.

The programs for A167050, the canonical program `A167050.P11328404290735128714` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167050 has offset 1).

The definition of A167050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167050.P11328404290735128714

`record[A007913(A165256(n+1))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A167050

/-- `record[A007913(A165256(n+1))]` -/
def P11328404290735128714.Spec : Prop :=
  ∀ n, P11328404290735128714.a n = A167050 (n + 1)

theorem P11328404290735128714.correct : P11328404290735128714.Spec := by
  intro n
  simp only [A167050, Nat.add_sub_cancel]

end A167050

/-! ## A167050.P9788714137228628587

`filter[A165256(n+1), A008966(#)]`
-/

namespace A167050.P9788714137228628587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A167050.P9788714137228628587

namespace A167050

/-- `filter[A165256(n+1), A008966(#)]` -/
def P9788714137228628587.Spec : Prop :=
  ∀ n, P9788714137228628587.a n = A167050 (n + 1)

end A167050

/-! ## A167050.P9992491493644673062

`record[A007947(A115024(n+1))]`
-/

namespace A167050.P9992491493644673062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A115024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167050.P9992491493644673062

namespace A167050

/-- `record[A007947(A115024(n+1))]` -/
def P9992491493644673062.Spec : Prop :=
  ∀ n, P9992491493644673062.a n = A167050 (n + 1)

end A167050

/-! ## A167050.P7958943708263110190

`filter[A115024(n+1), A008966(#)]`
-/

namespace A167050.P7958943708263110190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A167050.P7958943708263110190

namespace A167050

/-- `filter[A115024(n+1), A008966(#)]` -/
def P7958943708263110190.Spec : Prop :=
  ∀ n, P7958943708263110190.a n = A167050 (n + 1)

end A167050

/-! ## A167050.P10838206175885257519

`∩[A115024(n+1), A165256(n+1)]`
-/

namespace A167050.P10838206175885257519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P10838206175885257519

namespace A167050

/-- `∩[A115024(n+1), A165256(n+1)]` -/
def P10838206175885257519.Spec : Prop :=
  ∀ n, (P10838206175885257519.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P18293730106119874133

`∩[A005117(n+1), A115024(n+1)]`
-/

namespace A167050.P18293730106119874133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P18293730106119874133

namespace A167050

/-- `∩[A005117(n+1), A115024(n+1)]` -/
def P18293730106119874133.Spec : Prop :=
  ∀ n, (P18293730106119874133.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P5330637840286670678

`∩[A005117(n+1), A165256(n+1)]`
-/

namespace A167050.P5330637840286670678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P5330637840286670678

namespace A167050

/-- `∩[A005117(n+1), A165256(n+1)]` -/
def P5330637840286670678.Spec : Prop :=
  ∀ n, (P5330637840286670678.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P6346816347960872924

`filter[A115024(n+1), A323154(#)]`
-/

namespace A167050.P6346816347960872924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A167050.P6346816347960872924

namespace A167050

/-- `filter[A115024(n+1), A323154(#)]` -/
def P6346816347960872924.Spec : Prop :=
  ∀ n, P6346816347960872924.a n = A167050 (n + 1)

end A167050

/-! ## A167050.P8041167695133787567

`∩[A115024(n+1), A348506(n+1)]`
-/

namespace A167050.P8041167695133787567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P8041167695133787567

namespace A167050

/-- `∩[A115024(n+1), A348506(n+1)]` -/
def P8041167695133787567.Spec : Prop :=
  ∀ n, (P8041167695133787567.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P7526881611774948334

`∩[A064594(n+1), A115024(n+1)]`
-/

namespace A167050.P7526881611774948334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P7526881611774948334

namespace A167050

/-- `∩[A064594(n+1), A115024(n+1)]` -/
def P7526881611774948334.Spec : Prop :=
  ∀ n, (P7526881611774948334.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P17817740884727957845

`∩[A115024(n+1), A144338(n+1)]`
-/

namespace A167050.P17817740884727957845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P17817740884727957845

namespace A167050

/-- `∩[A115024(n+1), A144338(n+1)]` -/
def P17817740884727957845.Spec : Prop :=
  ∀ n, (P17817740884727957845.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P17295077485191180734

`∩[A144338(n+1), A165256(n+1)]`
-/

namespace A167050.P17295077485191180734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167050.P17295077485191180734

namespace A167050

/-- `∩[A144338(n+1), A165256(n+1)]` -/
def P17295077485191180734.Spec : Prop :=
  ∀ n, (P17295077485191180734.a n : ℤ) = A167050 (n + 1)

end A167050

/-! ## A167050.P14280074800078562152

`eq[A055642(n), A349620(A028310(n))]`
-/

namespace A167050.P14280074800078562152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167050.P14280074800078562152

namespace A167050

/-- `eq[A055642(n), A349620(A028310(n))]` -/
def P14280074800078562152.Spec : Prop :=
  ∀ n, (P14280074800078562152.a n : ℤ) = A167050 (n + 1)

end A167050

/-!
# A167051: Start at 1, then add the first term (which is one here) plus 1 for the second term; then add the second term plus 2 for the third term; then add the third term to the sum of the first and second term; this gives the fourth term. Restart the sequence by adding 1 to the fourth term, etc. (From a sixth grade math extra credit assignment).

The programs for A167051, the canonical program `A167051.P17758643191494405202` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167051 has offset 1).

The definition of A167051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167051.P17758643191494405202

`∏[gcd(3, n)]-(3-2^(n%3))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167051

/-- `∏[gcd(3, n)]-(3-2^(n%3))` -/
def P17758643191494405202.Spec : Prop :=
  ∀ n, P17758643191494405202.a n = A167051 (n + 1)

theorem P17758643191494405202.correct : P17758643191494405202.Spec := by
  intro n
  simp only [A167051, Nat.add_sub_cancel]

end A167051

/-! ## A167051.P13947097037907042460

`record[A133310(abs(A134028(n)))]`
-/

namespace A167051.P13947097037907042460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 |A134028 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167051.P13947097037907042460

namespace A167051

/-- `record[A133310(abs(A134028(n)))]` -/
def P13947097037907042460.Spec : Prop :=
  ∀ n, P13947097037907042460.a n = A167051 (n + 1)

end A167051

/-! ## A167051.P8442724221047181318

`eq[A059841(n), A081134(A065190(n+1))]`
-/

namespace A167051.P8442724221047181318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167051.P8442724221047181318

namespace A167051

/-- `eq[A059841(n), A081134(A065190(n+1))]` -/
def P8442724221047181318.Spec : Prop :=
  ∀ n, (P8442724221047181318.a n : ℤ) = A167051 (n + 1)

end A167051

/-! ## A167051.P18100817175190711038

`eq[A053735(n+2), A287418(A141310(n))]`
-/

namespace A167051.P18100817175190711038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287418 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167051.P18100817175190711038

namespace A167051

/-- `eq[A053735(n+2), A287418(A141310(n))]` -/
def P18100817175190711038.Spec : Prop :=
  ∀ n, (P18100817175190711038.a n : ℤ) = A167051 (n + 1)

end A167051

/-! ## A167051.P13865487284628515384

`eq[A081134(n+1), A134024(A284797(n))]`
-/

namespace A167051.P13865487284628515384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A284797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167051.P13865487284628515384

namespace A167051

/-- `eq[A081134(n+1), A134024(A284797(n))]` -/
def P13865487284628515384.Spec : Prop :=
  ∀ n, (P13865487284628515384.a n : ℤ) = A167051 (n + 1)

end A167051

/-!
# A167053: a(1)=3; for n > 1, a(n) = 1 + a(n-1) + gcd( a(n-1)*(a(n-1)+2), A073829(a(n-1)) ).

The programs for A167053, there is no canonical definition to state claims against.
-/

/-! ## A167053.P17589514604450178673

`A073829(a(n-1))` with `a(0)=3, a(1)=19, a(2)=39, a(3)=81, a(4)=165`
-/

namespace A167053.P17589514604450178673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 19, 39, 81, 165] fun n a =>
  A073829 (a (n - 1)).toNat

end

end A167053.P17589514604450178673

/-!
# A167054: Values of A167053(k)-A167053(k-1)-1 not equal to 1.

The programs for A167054, there is no canonical definition to state claims against.
-/

/-! ## A167054.P8755924970740739109

`record[Δ[A167053(n+1)]-1]`
-/

namespace A167054.P8755924970740739109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167054.P8755924970740739109

/-! ## A167054.P13507014292467280239

`A033999(2*n+1)+record[Δ[A167053(n+1)]]`
-/

namespace A167054.P13507014292467280239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167054.P13507014292467280239

/-! ## A167054.P17885317292992418487

`A014681(record[Δ[A167053(n+1)]])`
-/

namespace A167054.P17885317292992418487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167054.P17885317292992418487

/-! ## A167054.P2274324475748517847

`A023443(record[Δ[A167053(n+1)]])`
-/

namespace A167054.P2274324475748517847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167054.P2274324475748517847

/-! ## A167054.P1793775463645728730

`A160597(record[Δ[A167053(n+1)]])`
-/

namespace A167054.P1793775463645728730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167054.P1793775463645728730

/-!
# A167055: Numbers k such that 12*k + 5 is prime.

The programs for A167055, the canonical program `A167055.P8738677862289622729` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167055 has offset 1).

The definition of A167055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167055.P8738677862289622729

`floor(A040117(n+1)/12)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167055

/-- `floor(A040117(n+1)/12)` -/
def P8738677862289622729.Spec : Prop :=
  ∀ n, P8738677862289622729.a n = A167055 (n + 1)

theorem P8738677862289622729.correct : P8738677862289622729.Spec := by
  intro n
  simp only [A167055, Nat.add_sub_cancel]

end A167055

/-! ## A167055.P361825760539272113

`eq[1, A245839(4*n+1)]`
-/

namespace A167055.P361825760539272113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167055.P361825760539272113

namespace A167055

/-- `eq[1, A245839(4*n+1)]` -/
def P361825760539272113.Spec : Prop :=
  ∀ n, (P361825760539272113.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P9385323479209228853

`lt[7*n-2, ∑{p}[12*n+5, #]]`
-/

namespace A167055.P9385323479209228853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167055.P9385323479209228853

namespace A167055

/-- `lt[7*n-2, ∑{p}[12*n+5, #]]` -/
def P9385323479209228853.Spec : Prop :=
  ∀ n, (P9385323479209228853.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P9552071205410876429

`eq[A016777(n), A260165(n)]`
-/

namespace A167055.P9552071205410876429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260165 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167055.P9552071205410876429

namespace A167055

/-- `eq[A016777(n), A260165(n)]` -/
def P9552071205410876429.Spec : Prop :=
  ∀ n, (P9552071205410876429.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P15732652203053859878

`A116563(A160591(n+1))`
-/

namespace A167055.P15732652203053859878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116563 (A160591 (n + 1)).toNat

end

end A167055.P15732652203053859878

namespace A167055

/-- `A116563(A160591(n+1))` -/
def P15732652203053859878.Spec : Prop :=
  ∀ n, P15732652203053859878.a n = A167055 (n + 1)

end A167055

/-! ## A167055.P4347694539030372395

`eq[1, A075743(4*n+1)]`
-/

namespace A167055.P4347694539030372395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167055.P4347694539030372395

namespace A167055

/-- `eq[1, A075743(4*n+1)]` -/
def P4347694539030372395.Spec : Prop :=
  ∀ n, (P4347694539030372395.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P13586185734120581402

`eq[1, A001222(12*n+5)]`
-/

namespace A167055.P13586185734120581402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167055.P13586185734120581402

namespace A167055

/-- `eq[1, A001222(12*n+5)]` -/
def P13586185734120581402.Spec : Prop :=
  ∀ n, (P13586185734120581402.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P9223349024927519660

`eq[2, A000005(12*n+5)]`
-/

namespace A167055.P9223349024927519660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167055.P9223349024927519660

namespace A167055

/-- `eq[2, A000005(12*n+5)]` -/
def P9223349024927519660.Spec : Prop :=
  ∀ n, (P9223349024927519660.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P11819782608663649425

`eq[1, A156706(4*n+1)²]`
-/

namespace A167055.P11819782608663649425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (4 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167055.P11819782608663649425

namespace A167055

/-- `eq[1, A156706(4*n+1)²]` -/
def P11819782608663649425.Spec : Prop :=
  ∀ n, (P11819782608663649425.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P17264928485713324898

`lt[3*n, A006530(12*n+5)]`
-/

namespace A167055.P17264928485713324898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167055.P17264928485713324898

namespace A167055

/-- `lt[3*n, A006530(12*n+5)]` -/
def P17264928485713324898.Spec : Prop :=
  ∀ n, (P17264928485713324898.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P7001851642178916659

`lt[A001222(10*n+5+2*n), 2]`
-/

namespace A167055.P7001851642178916659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 5 + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167055.P7001851642178916659

namespace A167055

/-- `lt[A001222(10*n+5+2*n), 2]` -/
def P7001851642178916659.Spec : Prop :=
  ∀ n, (P7001851642178916659.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P11712180192744836844

`lt[A000005(10*n+5+2*n), 3]`
-/

namespace A167055.P11712180192744836844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * n + 5 + 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167055.P11712180192744836844

namespace A167055

/-- `lt[A000005(10*n+5+2*n), 3]` -/
def P11712180192744836844.Spec : Prop :=
  ∀ n, (P11712180192744836844.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P15812642206007497402

`lt[n+1, A020639(2*n+10*n+5)]`
-/

namespace A167055.P15812642206007497402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + (10 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167055.P15812642206007497402

namespace A167055

/-- `lt[n+1, A020639(2*n+10*n+5)]` -/
def P15812642206007497402.Spec : Prop :=
  ∀ n, (P15812642206007497402.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P17127447841105422838

`eq[1, A101264(A016921(n)+1)]`
-/

namespace A167055.P17127447841105422838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016921 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167055.P17127447841105422838

namespace A167055

/-- `eq[1, A101264(A016921(n)+1)]` -/
def P17127447841105422838.Spec : Prop :=
  ∀ n, (P17127447841105422838.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P4596054301996763615

`lt[A000040(A000005(12*n+5)+1), 8]`
-/

namespace A167055.P4596054301996763615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (12 * n + 5) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167055.P4596054301996763615

namespace A167055

/-- `lt[A000040(A000005(12*n+5)+1), 8]` -/
def P4596054301996763615.Spec : Prop :=
  ∀ n, (P4596054301996763615.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P17432531393606573008

`lt[A008594(n), A000010(A017581(n))]`
-/

namespace A167055.P17432531393606573008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167055.P17432531393606573008

namespace A167055

/-- `lt[A008594(n), A000010(A017581(n))]` -/
def P17432531393606573008.Spec : Prop :=
  ∀ n, (P17432531393606573008.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P6208963741864696215

`lt[A017545(n), A000010(A017581(n))]`
-/

namespace A167055.P6208963741864696215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167055.P6208963741864696215

namespace A167055

/-- `lt[A017545(n), A000010(A017581(n))]` -/
def P6208963741864696215.Spec : Prop :=
  ∀ n, (P6208963741864696215.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P16689924839725542542

`lt[A000203(A017581(n)), A017605(n)]`
-/

namespace A167055.P16689924839725542542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167055.P16689924839725542542

namespace A167055

/-- `lt[A000203(A017581(n)), A017605(n)]` -/
def P16689924839725542542.Spec : Prop :=
  ∀ n, (P16689924839725542542.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P17523552846900514555

`lt[A000203(A017581(n)), A017617(n)]`
-/

namespace A167055.P17523552846900514555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167055.P17523552846900514555

namespace A167055

/-- `lt[A000203(A017581(n)), A017617(n)]` -/
def P17523552846900514555.Spec : Prop :=
  ∀ n, (P17523552846900514555.a n : ℤ) = A167055 (n + 1)

end A167055

/-! ## A167055.P16487932875555408325

`lt[A000203(A017581(n)), A017641(n)]`
-/

namespace A167055.P16487932875555408325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167055.P16487932875555408325

namespace A167055

/-- `lt[A000203(A017581(n)), A017641(n)]` -/
def P16487932875555408325.Spec : Prop :=
  ∀ n, (P16487932875555408325.a n : ℤ) = A167055 (n + 1)

end A167055

/-!
# A167056: Numbers k such that 12*k + 7 is prime.

The programs for A167056, the canonical program `A167056.P14638089962256373532` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167056 has offset 1).

The definition of A167056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167056.P14549384409806938984

`eq[2*n+1, A260518(n)]`
-/

namespace A167056.P14549384409806938984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P14549384409806938984

namespace A167056

/-- `eq[2*n+1, A260518(n)]` -/
def P14549384409806938984.Spec : Prop :=
  ∀ n, (P14549384409806938984.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P14638089962256373532

`lt[A000079(∏{e}[12*n+7, #+1]), 7]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167056

/-- `lt[A000079(∏{e}[12*n+7, #+1]), 7]` -/
def P14638089962256373532.Spec : Prop :=
  ∀ n, (P14638089962256373532.a n : ℤ) = A167056 (n + 1)

theorem P14638089962256373532.correct : P14638089962256373532.Spec := by
  intro n
  simp only [A167056, Nat.add_sub_cancel]

end A167056

/-! ## A167056.P16821409819034876918

`eq[1, A245838(A004767(n)-1)]`
-/

namespace A167056.P16821409819034876918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A004767 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P16821409819034876918

namespace A167056

/-- `eq[1, A245838(A004767(n)-1)]` -/
def P16821409819034876918.Spec : Prop :=
  ∀ n, (P16821409819034876918.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P17016376218490364401

`lt[A245838(2*A005408(n)), 2]`
-/

namespace A167056.P17016376218490364401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (2 * A005408 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167056.P17016376218490364401

namespace A167056

/-- `lt[A245838(2*A005408(n)), 2]` -/
def P17016376218490364401.Spec : Prop :=
  ∀ n, (P17016376218490364401.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P6412752321696618297

`A116563(A160592(n+1))`
-/

namespace A167056.P6412752321696618297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116563 (A160592 (n + 1)).toNat

end

end A167056.P6412752321696618297

namespace A167056

/-- `A116563(A160592(n+1))` -/
def P6412752321696618297.Spec : Prop :=
  ∀ n, P6412752321696618297.a n = A167056 (n + 1)

end A167056

/-! ## A167056.P341390108207705026

`eq[1, A001222(12*n+7)]`
-/

namespace A167056.P341390108207705026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P341390108207705026

namespace A167056

/-- `eq[1, A001222(12*n+7)]` -/
def P341390108207705026.Spec : Prop :=
  ∀ n, (P341390108207705026.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P12425246384358088076

`eq[2, A000005(12*n+7)]`
-/

namespace A167056.P12425246384358088076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P12425246384358088076

namespace A167056

/-- `eq[2, A000005(12*n+7)]` -/
def P12425246384358088076.Spec : Prop :=
  ∀ n, (P12425246384358088076.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P7531145301828250043

`lt[n+1, A020639(12*n+7)]`
-/

namespace A167056.P7531145301828250043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167056.P7531145301828250043

namespace A167056

/-- `lt[n+1, A020639(12*n+7)]` -/
def P7531145301828250043.Spec : Prop :=
  ∀ n, (P7531145301828250043.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P1226708885044190995

`eq[12*n+7, A006530(12*n+7)]`
-/

namespace A167056.P1226708885044190995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P1226708885044190995

namespace A167056

/-- `eq[12*n+7, A006530(12*n+7)]` -/
def P1226708885044190995.Spec : Prop :=
  ∀ n, (P1226708885044190995.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P2084852414154430826

`eq[1, A101264(A016921(n)+2)]`
-/

namespace A167056.P2084852414154430826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A016921 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P2084852414154430826

namespace A167056

/-- `eq[1, A101264(A016921(n)+2)]` -/
def P2084852414154430826.Spec : Prop :=
  ∀ n, (P2084852414154430826.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P15573414414094292713

`eq[1, A156706(A004767(n)-1)]`
-/

namespace A167056.P15573414414094292713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A004767 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P15573414414094292713

namespace A167056

/-- `eq[1, A156706(A004767(n)-1)]` -/
def P15573414414094292713.Spec : Prop :=
  ∀ n, (P15573414414094292713.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P6336102193802929604

`lt[A000005(A017605(n))-1, 2]`
-/

namespace A167056.P6336102193802929604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017605 n).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167056.P6336102193802929604

namespace A167056

/-- `lt[A000005(A017605(n))-1, 2]` -/
def P6336102193802929604.Spec : Prop :=
  ∀ n, (P6336102193802929604.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P48836597041110319

`eq[1, A156706(A017113(n)/2)]`
-/

namespace A167056.P48836597041110319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (SequenceMachineLib.roundAway ((A017113 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167056.P48836597041110319

namespace A167056

/-- `eq[1, A156706(A017113(n)/2)]` -/
def P48836597041110319.Spec : Prop :=
  ∀ n, (P48836597041110319.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P9843013740158913931

`lt[A000005(A016885(n)+7*n+4), 3]`
-/

namespace A167056.P9843013740158913931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016885 n + (7 * n + 4 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167056.P9843013740158913931

namespace A167056

/-- `lt[A000005(A016885(n)+7*n+4), 3]` -/
def P9843013740158913931.Spec : Prop :=
  ∀ n, (P9843013740158913931.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P11432856646191738265

`lt[A000203(A017605(n)), A017653(n)]`
-/

namespace A167056.P11432856646191738265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167056.P11432856646191738265

namespace A167056

/-- `lt[A000203(A017605(n)), A017653(n)]` -/
def P11432856646191738265.Spec : Prop :=
  ∀ n, (P11432856646191738265.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P7554280665183540807

`lt[A000203(A017605(n)), A017581(n+1)]`
-/

namespace A167056.P7554280665183540807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167056.P7554280665183540807

namespace A167056

/-- `lt[A000203(A017605(n)), A017581(n+1)]` -/
def P7554280665183540807.Spec : Prop :=
  ∀ n, (P7554280665183540807.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P6537022416115517223

`lt[A000203(A017605(n)), A017605(n+1)]`
-/

namespace A167056.P6537022416115517223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017605 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167056.P6537022416115517223

namespace A167056

/-- `lt[A000203(A017605(n)), A017605(n+1)]` -/
def P6537022416115517223.Spec : Prop :=
  ∀ n, (P6537022416115517223.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P12803472509689373852

`lt[A008594(n), A000010(A017581(n)+2)]`
-/

namespace A167056.P12803472509689373852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167056.P12803472509689373852

namespace A167056

/-- `lt[A008594(n), A000010(A017581(n)+2)]` -/
def P12803472509689373852.Spec : Prop :=
  ∀ n, (P12803472509689373852.a n : ℤ) = A167056 (n + 1)

end A167056

/-! ## A167056.P17651152146259047330

`lt[A017545(n), A000010(A017581(n)+2)]`
-/

namespace A167056.P17651152146259047330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017581 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167056.P17651152146259047330

namespace A167056

/-- `lt[A017545(n), A000010(A017581(n)+2)]` -/
def P17651152146259047330.Spec : Prop :=
  ∀ n, (P17651152146259047330.a n : ℤ) = A167056 (n + 1)

end A167056

/-!
# A167057: Numbers k such that 12*k + 11 is prime.

The programs for A167057, the canonical program `A167057.P16324188252696382236` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167057 has offset 1).

The definition of A167057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138620, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167057.P16324188252696382236

`A138620(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167057

/-- `A138620(n+1)-1` -/
def P16324188252696382236.Spec : Prop :=
  ∀ n, P16324188252696382236.a n = A167057 (n + 1)

theorem P16324188252696382236.correct : P16324188252696382236.Spec := by
  intro n
  simp only [A167057, Nat.add_sub_cancel]

end A167057

/-! ## A167057.P12452767824896818812

`floor(A068231(n+1)/12)`
-/

namespace A167057.P12452767824896818812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068231 (n + 1) : ℚ) / 12⌋

end

end A167057.P12452767824896818812

namespace A167057

/-- `floor(A068231(n+1)/12)` -/
def P12452767824896818812.Spec : Prop :=
  ∀ n, P12452767824896818812.a n = A167057 (n + 1)

end A167057

/-! ## A167057.P8948764273762175166

`eq[n+1, A295012(n+1)]`
-/

namespace A167057.P8948764273762175166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P8948764273762175166

namespace A167057

/-- `eq[n+1, A295012(n+1)]` -/
def P8948764273762175166.Spec : Prop :=
  ∀ n, (P8948764273762175166.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P12032991714123850264

`A068231(n+1)%A138620(n+1)`
-/

namespace A167057.P12032991714123850264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068231 (n + 1)) (A138620 (n + 1))

end

end A167057.P12032991714123850264

namespace A167057

/-- `A068231(n+1)%A138620(n+1)` -/
def P12032991714123850264.Spec : Prop :=
  ∀ n, P12032991714123850264.a n = A167057 (n + 1)

end A167057

/-! ## A167057.P4438071569152175026

`eq[0, A294614(n+1)]`
-/

namespace A167057.P4438071569152175026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P4438071569152175026

namespace A167057

/-- `eq[0, A294614(n+1)]` -/
def P4438071569152175026.Spec : Prop :=
  ∀ n, (P4438071569152175026.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P633410651236992027

`A023443(A138620(n+1))`
-/

namespace A167057.P633410651236992027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A138620 (n + 1)).toNat

end

end A167057.P633410651236992027

namespace A167057

/-- `A023443(A138620(n+1))` -/
def P633410651236992027.Spec : Prop :=
  ∀ n, P633410651236992027.a n = A167057 (n + 1)

end A167057

/-! ## A167057.P13689317333777557034

`eq[1, A245839(A016885(n)-n)]`
-/

namespace A167057.P13689317333777557034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245839 (A016885 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P13689317333777557034

namespace A167057

/-- `eq[1, A245839(A016885(n)-n)]` -/
def P13689317333777557034.Spec : Prop :=
  ∀ n, (P13689317333777557034.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P15203013327615227385

`eq[2, A000005(12*n+11)]`
-/

namespace A167057.P15203013327615227385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P15203013327615227385

namespace A167057

/-- `eq[2, A000005(12*n+11)]` -/
def P15203013327615227385.Spec : Prop :=
  ∀ n, (P15203013327615227385.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P13264827585072803621

`lt[A001222(12*n+11), 2]`
-/

namespace A167057.P13264827585072803621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167057.P13264827585072803621

namespace A167057

/-- `lt[A001222(12*n+11), 2]` -/
def P13264827585072803621.Spec : Prop :=
  ∀ n, (P13264827585072803621.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P14911289124140496645

`record[n*A101264(6*n+5)]`
-/

namespace A167057.P14911289124140496645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101264 (6 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167057.P14911289124140496645

namespace A167057

/-- `record[n*A101264(6*n+5)]` -/
def P14911289124140496645.Spec : Prop :=
  ∀ n, P14911289124140496645.a n = A167057 (n + 1)

end A167057

/-! ## A167057.P11721027318237687496

`record[n*A010051(12*n+11)]`
-/

namespace A167057.P11721027318237687496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (12 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167057.P11721027318237687496

namespace A167057

/-- `record[n*A010051(12*n+11)]` -/
def P11721027318237687496.Spec : Prop :=
  ∀ n, P11721027318237687496.a n = A167057 (n + 1)

end A167057

/-! ## A167057.P6615534723534397858

`lt[A000005(12*(n+1)-1), 3]`
-/

namespace A167057.P6615534723534397858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (n + 1) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167057.P6615534723534397858

namespace A167057

/-- `lt[A000005(12*(n+1)-1), 3]` -/
def P6615534723534397858.Spec : Prop :=
  ∀ n, (P6615534723534397858.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P15339871261398709528

`lt[n+3, A020639(12*n+11)]`
-/

namespace A167057.P15339871261398709528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167057.P15339871261398709528

namespace A167057

/-- `lt[n+3, A020639(12*n+11)]` -/
def P15339871261398709528.Spec : Prop :=
  ∀ n, (P15339871261398709528.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P8154846363800344149

`lt[5*n, A006530(12*n+11)]`
-/

namespace A167057.P8154846363800344149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (12 * n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167057.P8154846363800344149

namespace A167057

/-- `lt[5*n, A006530(12*n+11)]` -/
def P8154846363800344149.Spec : Prop :=
  ∀ n, (P8154846363800344149.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P1094880730136731394

`eq[1, A001222(Δ[(2*n+1)*(3*n+1)])]`
-/

namespace A167057.P1094880730136731394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P1094880730136731394

namespace A167057

/-- `eq[1, A001222(Δ[(2*n+1)*(3*n+1)])]` -/
def P1094880730136731394.Spec : Prop :=
  ∀ n, (P1094880730136731394.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P10767661227089693150

`eq[1, A156706(A004767(n))²]`
-/

namespace A167057.P10767661227089693150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A004767 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P10767661227089693150

namespace A167057

/-- `eq[1, A156706(A004767(n))²]` -/
def P10767661227089693150.Spec : Prop :=
  ∀ n, (P10767661227089693150.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P7460322888822409774

`eq[1, A075743(A017137(n)/2)]`
-/

namespace A167057.P7460322888822409774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (SequenceMachineLib.roundAway ((A017137 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167057.P7460322888822409774

namespace A167057

/-- `eq[1, A075743(A017137(n)/2)]` -/
def P7460322888822409774.Spec : Prop :=
  ∀ n, (P7460322888822409774.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P17453295499841281114

`lt[A017605(n), A000010(A017653(n))]`
-/

namespace A167057.P17453295499841281114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167057.P17453295499841281114

namespace A167057

/-- `lt[A017605(n), A000010(A017653(n))]` -/
def P17453295499841281114.Spec : Prop :=
  ∀ n, (P17453295499841281114.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P13088855734126103743

`lt[A017641(n), A000010(A017653(n))+1]`
-/

namespace A167057.P13088855734126103743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017653 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167057.P13088855734126103743

namespace A167057

/-- `lt[A017641(n), A000010(A017653(n))+1]` -/
def P13088855734126103743.Spec : Prop :=
  ∀ n, (P13088855734126103743.a n : ℤ) = A167057 (n + 1)

end A167057

/-! ## A167057.P2616896824719603011

`lt[A000203(A017653(n)), A017605(n+1)]`
-/

namespace A167057.P2616896824719603011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167057.P2616896824719603011

namespace A167057

/-- `lt[A000203(A017653(n)), A017605(n+1)]` -/
def P2616896824719603011.Spec : Prop :=
  ∀ n, (P2616896824719603011.a n : ℤ) = A167057 (n + 1)

end A167057

