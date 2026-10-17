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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A326900: Number of set-systems on n vertices that are closed under union and intersection.

The programs for A326900, there is no canonical definition to state claims against.
-/

/-! ## A326900.P8262008982447303389

`A306445(n)-A326878(n)`
-/

namespace A326900.P8262008982447303389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306445 n - A326878 n

end

end A326900.P8262008982447303389

/-! ## A326900.P4302391513056353962

`A306445(n)-A326909(n)^A002262(A000124(n))`
-/

namespace A326900.P4302391513056353962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306445 n : ℚ) - (A326909 n : ℚ) ^ (A002262 (A000124 n).toNat : ℤ)

end

end A326900.P4302391513056353962

/-! ## A326900.P14545190738530875794

`A306445(n)-A326909(n)/A124927(A291793(n+1))`
-/

namespace A326900.P14545190738530875794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306445 n : ℚ) - (A326909 n : ℚ) / (A124927 (A291793 (n + 1)).toNat : ℚ)

end

end A326900.P14545190738530875794

/-! ## A326900.P4385949021228729673

`A306445(n)-A326909(n)^A001221(A079879(n+1))`
-/

namespace A326900.P4385949021228729673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306445 n : ℚ) - (A326909 n : ℚ) ^ (A001221 (A079879 (n + 1)).toNat : ℤ)

end

end A326900.P4385949021228729673

/-!
# A326901: Number of set-systems (without {}) on n vertices that are closed under intersection.

The programs for A326901, there is no canonical definition to state claims against.
-/

/-! ## A326901.P14093827267469875495

`A000007(n)+2*A326903(n)`
-/

namespace A326901.P14093827267469875495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A326903 n

end

end A326901.P14093827267469875495

/-! ## A326901.P10139162437812589055

`∑[A279485(n)]+2*A326903(n)`
-/

namespace A326901.P10139162437812589055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A326903 n

end

end A326901.P10139162437812589055

/-! ## A326901.P4988505965149399382

`A326903(round(sqrt(n²+1)))+A326903(n)`
-/

namespace A326901.P4988505965149399382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326903 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A326903 n

end

end A326901.P4988505965149399382

/-! ## A326901.P10954440404838976527

`A006530(A001316(n))*A326903(A051801(n))`
-/

namespace A326901.P10954440404838976527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A326903 (A051801 n).toNat

end

end A326901.P10954440404838976527

/-!
# A326902: Number of set-systems (without {}) covering n vertices that are closed under intersection.

The programs for A326902, there is no canonical definition to state claims against.
-/

/-! ## A326902.P17316047332941790832

`A326906(n)-A326881(n)`
-/

namespace A326902.P17316047332941790832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326906 n - A326881 n

end

end A326902.P17316047332941790832

/-! ## A326902.P4879002114468746533

`2*A102894(n)-A326881(n)`
-/

namespace A326902.P4879002114468746533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102894 n - A326881 n

end

end A326902.P4879002114468746533

/-! ## A326902.P12302813159649581272

`lcm(2, A102895(n))-A326881(n)`
-/

namespace A326902.P12302813159649581272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A102895 n) : ℤ) - A326881 n

end

end A326902.P12302813159649581272

/-! ## A326902.P1311915592864265791

`A102895(gcd(n, n!²))-A326881(n)`
-/

namespace A326902.P1311915592864265791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102895 (Nat.gcd n (Nat.factorial n ^ 2)) - A326881 n

end

end A326902.P1311915592864265791

/-!
# A326903: Number of set-systems (without {}) on n vertices that are closed under intersection and have an edge containing all of the vertices, or Moore families without {}.

The programs for A326903, there is no canonical definition to state claims against.
-/

/-! ## A326903.P18186513440488864892

`floor(A326901(n)/2)`
-/

namespace A326903.P18186513440488864892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326901 n : ℚ) / 2⌋

end

end A326903.P18186513440488864892

/-! ## A326903.P18093238277504463302

`n/A004277(n)*A326901(n)`
-/

namespace A326903.P18093238277504463302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A004277 n : ℚ) * (A326901 n : ℚ)

end

end A326903.P18093238277504463302

/-! ## A326903.P12401215480820427111

`Δ[A261914(n)/2]*A326901(n)`
-/

namespace A326903.P12401215480820427111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261914 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A326901 n : ℚ)

end

end A326903.P12401215480820427111

/-! ## A326903.P3259598635805848519

`A004218(n+1)/2*A326901(n)`
-/

namespace A326903.P3259598635805848519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004218 (n + 1) : ℚ) / 2 * (A326901 n : ℚ)

end

end A326903.P3259598635805848519

/-! ## A326903.P1620795823483877953

`A326901(n)/2*and(1, A000040(n+1))`
-/

namespace A326903.P1620795823483877953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326901 n : ℚ) / 2 * (Int.land 1 (A000040 (n + 1)) : ℚ)

end

end A326903.P1620795823483877953

/-!
# A326904: Number of unlabeled set-systems (without {}) on n vertices that are closed under intersection.

The programs for A326904, there is no canonical definition to state claims against.
-/

/-! ## A326904.P3882879650646411287

`∑[A108800(log2(ceil(2^(n-1))))]`
-/

namespace A326904.P3882879650646411287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108800 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326904.P3882879650646411287

/-! ## A326904.P12225278758892300337

`A108800(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A326904.P12225278758892300337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108800 (n - 1) + a (n - 1)

end

end A326904.P12225278758892300337

/-! ## A326904.P9342733412837805095

`∏{e}[A025192(n), A193674(#)]`
-/

namespace A326904.P9342733412837805095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A193674 (Nat.factorization (f1 n).natAbs p)

end

end A326904.P9342733412837805095

/-! ## A326904.P6791197540148907851

`A193675(n-a(A000038(n)))` with `a(0)=1`
-/

namespace A326904.P6791197540148907851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193675 ((n : ℤ) - a (A000038 n).toNat).toNat

end

end A326904.P6791197540148907851

/-! ## A326904.P16842624044844350506

`∏{e}[A239885(n+1), A193674(#)]`
-/

namespace A326904.P16842624044844350506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A193674 (Nat.factorization (f1 n).natAbs p)

end

end A326904.P16842624044844350506

/-!
# A326905: BII-numbers of set-systems (without {}) closed under intersection.

The programs for A326905, there is no canonical definition to state claims against.
-/

/-! ## A326905.P4661304751728018359

`∩[A326880(n+1), A326910(n+1)]`
-/

namespace A326905.P4661304751728018359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326905.P4661304751728018359

/-! ## A326905.P8073274238697237518

`record[A025480(A359528(n+1))]`
-/

namespace A326905.P8073274238697237518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A359528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326905.P8073274238697237518

/-! ## A326905.P2213291454290330736

`A326910(comp[A035514(n)-A001906(n)])`
-/

namespace A326905.P2213291454290330736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035514 n - A001906 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A326905.P2213291454290330736

/-! ## A326905.P18394241496483443975

`A326910(A052382(n+1)%A224322(n+1))`
-/

namespace A326905.P18394241496483443975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (Int.tmod (A052382 (n + 1)) (A224322 (n + 1))).toNat

end

end A326905.P18394241496483443975

/-!
# A326906: Number of sets of subsets of {1..n} that are closed under union and cover all n vertices.

The programs for A326906, there is no canonical definition to state claims against.
-/

/-! ## A326906.P14631178075657188931

`2*A102894(n)`
-/

namespace A326906.P14631178075657188931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102894 n

end

end A326906.P14631178075657188931

/-! ## A326906.P7401205357759384569

`lcm(2, A102895(n))`
-/

namespace A326906.P7401205357759384569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A102895 n)

end

end A326906.P7401205357759384569

/-! ## A326906.P10455291813364269815

`A102895(gcd(n, n!²))`
-/

namespace A326906.P10455291813364269815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102895 (Nat.gcd n (Nat.factorial n ^ 2))

end

end A326906.P10455291813364269815

/-! ## A326906.P10612975460183433207

`A102895(floor(acot(n)+n))`
-/

namespace A326906.P10612975460183433207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102895 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A326906.P10612975460183433207

/-!
# A326907: Number of non-isomorphic sets of subsets of {1..n} that are closed under union and cover all n vertices. First differences of A193675.

The programs for A326907, there is no canonical definition to state claims against.
-/

/-! ## A326907.P2534191336250917259

`2*A108798(n)`
-/

namespace A326907.P2534191336250917259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108798 n

end

end A326907.P2534191336250917259

/-! ## A326907.P10462897915299257324

`lcm(2, A108800(n))`
-/

namespace A326907.P10462897915299257324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A108800 n)

end

end A326907.P10462897915299257324

/-! ## A326907.P18151990107598024093

`Δ[or(1, A326904(n))]`
-/

namespace A326907.P18151990107598024093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A326904 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326907.P18151990107598024093

/-! ## A326907.P460979045804208919

`A108800(floor(acot(n)+n))`
-/

namespace A326907.P460979045804208919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108800 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A326907.P460979045804208919

/-!
# A326908: Number of non-isomorphic sets of subsets of {1..n} that are closed under union and intersection.

The programs for A326908, there is no canonical definition to state claims against.
-/

/-! ## A326908.P8525001706693310503

`∑[A326898(n)]+1`
-/

namespace A326908.P8525001706693310503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A326908.P8525001706693310503

/-! ## A326908.P129386675246841014

`∑[∑[A001930(n)]]+1`
-/

namespace A326908.P129386675246841014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A326908.P129386675246841014

/-! ## A326908.P6731081878373736212

`∑[A326898(A028310(n))]`
-/

namespace A326908.P6731081878373736212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326898 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326908.P6731081878373736212

/-! ## A326908.P278449356132977037

`∑[A326898(abs(A274922(n)))]`
-/

namespace A326908.P278449356132977037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326898 |A274922 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326908.P278449356132977037

/-! ## A326908.P9904242730969418482

`∑[A326898(A065033(2*n))]`
-/

namespace A326908.P9904242730969418482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326898 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326908.P9904242730969418482

/-!
# A326909: Number of sets of subsets of {1..n} closed under union and intersection and covering all of the vertices.

The programs for A326909, there is no canonical definition to state claims against.
-/

/-! ## A326909.P9932209368142854784

`A000798(n)+A006058(n)`
-/

namespace A326909.P9932209368142854784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n + A006058 n

end

end A326909.P9932209368142854784

/-! ## A326909.P1565510018838801024

`A326878(round(sqrt(n²+1)))`
-/

namespace A326909.P1565510018838801024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326878 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A326909.P1565510018838801024

/-! ## A326909.P135584334135365850

`A326878(n)+char[(8*n)²]`
-/

namespace A326909.P135584334135365850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326878 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326909.P135584334135365850

/-! ## A326909.P5367396821033724488

`A028310(n)+A326878(n)-n`
-/

namespace A326909.P5367396821033724488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A326878 n - (n : ℤ))

end

end A326909.P5367396821033724488

/-! ## A326909.P12632969596989143740

`A245767(A000096(n))+A006058(n)`
-/

namespace A326909.P12632969596989143740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (A000096 n).toNat + A006058 n

end

end A326909.P12632969596989143740

/-!
# A326910: BII-numbers of pairwise intersecting set-systems.

The programs for A326910, there is no canonical definition to state claims against.
-/

/-! ## A326910.P14872065851004552703

`eq[A000120(n), A326787(n)]`
-/

namespace A326910.P14872065851004552703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326910.P14872065851004552703

/-! ## A326910.P9527649276495464047

`eq[A001222(A019565(n)), A326787(n)]`
-/

namespace A326910.P9527649276495464047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326910.P9527649276495464047

/-! ## A326910.P16143736989860289972

`eq[A056239(A001316(n)), A326787(n)]`
-/

namespace A326910.P16143736989860289972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326910.P16143736989860289972

/-! ## A326910.P4344446331746617171

`eq[A001222(A253565(n)), A326787(n)]`
-/

namespace A326910.P4344446331746617171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A253565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326910.P4344446331746617171

/-! ## A326910.P8458164131967860124

`eq[A076649(A255458(n)), A326787(n)]`
-/

namespace A326910.P8458164131967860124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (A255458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326910.P8458164131967860124

/-!
# A326911: BII-numbers of set-systems with empty intersection.

The programs for A326911, there is no canonical definition to state claims against.
-/

/-! ## A326911.P14822270854808412756

`comp[A326910(comp[A241236(n+1)])]`
-/

namespace A326911.P14822270854808412756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241236 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326911.P14822270854808412756

/-! ## A326911.P3079802719960211981

`lt[A327104(n), A000793(A000120(n))]`
-/

namespace A326911.P3079802719960211981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326911.P3079802719960211981

/-! ## A326911.P7305785806273950023

`lt[A011371(n), A028310(n)-A327104(n)]`
-/

namespace A326911.P7305785806273950023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A327104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326911.P7305785806273950023

/-! ## A326911.P16829713448785566326

`eq[1, A151666(A151665(A330195(n)))]`
-/

namespace A326911.P16829713448785566326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A151665 (A330195 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326911.P16829713448785566326

/-! ## A326911.P6119264754690357734

`eq[A151665(n), A151673(A330195(n))]`
-/

namespace A326911.P6119264754690357734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151673 (A330195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326911.P6119264754690357734

/-!
# A326913: BII-numbers of set-systems (without {}) closed under union and intersection.

The programs for A326913, there is no canonical definition to state claims against.
-/

/-! ## A326913.P236759249697618124

`∩[A326876(n+1), A326905(n+1)]`
-/

namespace A326913.P236759249697618124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326913.P236759249697618124

/-! ## A326913.P5764208916399993624

`∩[A326876(n+1), A327061(n+1)]`
-/

namespace A326913.P5764208916399993624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326913.P5764208916399993624

/-! ## A326913.P3536279842340167566

`∩[A326905(n+1), A327061(n+1)]`
-/

namespace A326913.P3536279842340167566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326913.P3536279842340167566

/-! ## A326913.P6892253480603958675

`∩[A326876(n+1), A326910(n+1)]`
-/

namespace A326913.P6892253480603958675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326913.P6892253480603958675

/-! ## A326913.P9343879802223205861

`∩[A326875(n+1), A326905(n+1)]`
-/

namespace A326913.P9343879802223205861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326913.P9343879802223205861

/-!
# A326915: Number of terms of A002386 (primes preceding record prime gaps) in the interval (2^n, 2^(n+1)].

The programs for A326915, there is no canonical definition to state claims against.
-/

/-! ## A326915.P8820498190590975564

`A010054(A080510(2*n+3))*A039996(n+1)`
-/

namespace A326915.P8820498190590975564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A080510 (2 * n + 3)).toNat * A039996 (n + 1)

end

end A326915.P8820498190590975564

/-! ## A326915.P11725874386510727446

`A039996(n+1)*A115361(A215204(2*n+3))`
-/

namespace A326915.P11725874386510727446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) * A115361 (A215204 (2 * n + 3)).toNat

end

end A326915.P11725874386510727446

/-! ## A326915.P9074291924639633954

`A122071(A328768(2*n))`
-/

namespace A326915.P9074291924639633954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (A328768 (2 * n)).toNat

end

end A326915.P9074291924639633954

/-! ## A326915.P15528393695161752511

`A144463(A208637(n+1))%4`
-/

namespace A326915.P15528393695161752511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144463 (A208637 (n + 1)).toNat) 4

end

end A326915.P15528393695161752511

/-! ## A326915.P11052582976771505745

`A024361(xor(4, A002083(n+1)))`
-/

namespace A326915.P11052582976771505745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (Int.xor 4 (A002083 (n + 1))).toNat

end

end A326915.P11052582976771505745

/-!
# A326917: Nonnegative numbers of the form 8*T(x) - T(y) with 0 <= x, 0 <= y, where T() denotes a triangular number.

The programs for A326917, the canonical program `A326917.P6374958588156520790` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326917 has offset 1).

The definition of A326917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175035, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326917.P6374958588156520790

`A175035(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A326917

/-- `A175035(n+1)-1` -/
def P6374958588156520790.Spec : Prop :=
  ∀ n, P6374958588156520790.a n = A326917 (n + 1)

theorem P6374958588156520790.correct : P6374958588156520790.Spec := by
  intro n
  simp only [A326917, Nat.add_sub_cancel]

end A326917

/-! ## A326917.P10074655872152390937

`comp[comp[A076816(n)]-1]`
-/

namespace A326917.P10074655872152390937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076816 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326917.P10074655872152390937

namespace A326917

/-- `comp[comp[A076816(n)]-1]` -/
def P10074655872152390937.Spec : Prop :=
  ∀ n, (P10074655872152390937.a n : ℤ) = A326917 (n + 1)

end A326917

/-! ## A326917.P4880107529239535320

`comp[comp[A175032(n)]-1]`
-/

namespace A326917.P4880107529239535320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175032 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326917.P4880107529239535320

namespace A326917

/-- `comp[comp[A175032(n)]-1]` -/
def P4880107529239535320.Spec : Prop :=
  ∀ n, (P4880107529239535320.a n : ℤ) = A326917 (n + 1)

end A326917

/-! ## A326917.P15630696276411766548

`comp[comp[A214859(n)]-1]`
-/

namespace A326917.P15630696276411766548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214859 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326917.P15630696276411766548

namespace A326917

/-- `comp[comp[A214859(n)]-1]` -/
def P15630696276411766548.Spec : Prop :=
  ∀ n, (P15630696276411766548.a n : ℤ) = A326917 (n + 1)

end A326917

/-! ## A326917.P3359944885114556543

`comp[A175034(n+1)-1]`
-/

namespace A326917.P3359944885114556543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175034 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326917.P3359944885114556543

namespace A326917

/-- `comp[A175034(n+1)-1]` -/
def P3359944885114556543.Spec : Prop :=
  ∀ n, (P3359944885114556543.a n : ℤ) = A326917 (n + 1)

end A326917

/-! ## A326917.P3221688467804330022

`lt[0, abs(A161516(n+1))]`
-/

namespace A326917.P3221688467804330022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161516 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326917.P3221688467804330022

namespace A326917

/-- `lt[0, abs(A161516(n+1))]` -/
def P3221688467804330022.Spec : Prop :=
  ∀ n, (P3221688467804330022.a n : ℤ) = A326917 (n + 1)

end A326917

/-! ## A326917.P3713485387866212180

`lt[1, abs(A161516(n))]-1`
-/

namespace A326917.P3713485387866212180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A161516 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A326917.P3713485387866212180

namespace A326917

/-- `lt[1, abs(A161516(n))]-1` -/
def P3713485387866212180.Spec : Prop :=
  ∀ n, P3713485387866212180.a n = A326917 (n + 1)

end A326917

/-! ## A326917.P5662674412644654958

`comp[abs(comp[A141418(n+1)+n]-n)+n]`
-/

namespace A326917.P5662674412644654958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)| + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A326917.P5662674412644654958

namespace A326917

/-- `comp[abs(comp[A141418(n+1)+n]-n)+n]` -/
def P5662674412644654958.Spec : Prop :=
  ∀ n, (P5662674412644654958.a n : ℤ) = A326917 (n + 1)

end A326917

/-! ## A326917.P12105450771501068917

`A023443(A175035(n+1))`
-/

namespace A326917.P12105450771501068917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175035 (n + 1)).toNat

end

end A326917.P12105450771501068917

namespace A326917

/-- `A023443(A175035(n+1))` -/
def P12105450771501068917.Spec : Prop :=
  ∀ n, P12105450771501068917.a n = A326917 (n + 1)

end A326917

/-! ## A326917.P10586348017396613185

`lt[1, A000045(A161516(n+1)²)]`
-/

namespace A326917.P10586348017396613185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A161516 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326917.P10586348017396613185

namespace A326917

/-- `lt[1, A000045(A161516(n+1)²)]` -/
def P10586348017396613185.Spec : Prop :=
  ∀ n, (P10586348017396613185.a n : ℤ) = A326917 (n + 1)

end A326917

/-!
# A326918: Squares visited by a knight moving on a single-digit square-spiral numbered board where the knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest spiral number ordering is used if the distances are equal.

The programs for A326918, there is no canonical definition to state claims against.
-/

/-! ## A326918.P612374150656495050

`A007376(A326916(n))`
-/

namespace A326918.P612374150656495050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A326916 n).toNat

end

end A326918.P612374150656495050

/-! ## A326918.P13287293178338733690

`A108202(2*A326916(n))`
-/

namespace A326918.P13287293178338733690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * A326916 n).toNat

end

end A326918.P13287293178338733690

/-! ## A326918.P6821743458178355585

`A329171(n)`
-/

namespace A326918.P6821743458178355585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329171 n

end

end A326918.P6821743458178355585

/-! ## A326918.P3694757441860239869

`A178334(A228202(n+1))*A326413(n+1)`
-/

namespace A326918.P3694757441860239869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A228202 (n + 1)).toNat * A326413 (n + 1)

end

end A326918.P3694757441860239869

/-!
# A326920: Constant term in the expansion of (-1 + Product_{k=1..n} (1 + x_k + 1/x_k))^n.

The programs for A326920, there is no canonical definition to state claims against.
-/

/-! ## A326920.P10232521830433936025

`A327751(∑[4*n])`
-/

namespace A326920.P10232521830433936025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326920.P10232521830433936025

/-! ## A326920.P15288421083889511278

`A327751(A046092(n))+A185264(n)`
-/

namespace A326920.P15288421083889511278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327751 (A046092 n).toNat + A185264 n

end

end A326920.P15288421083889511278

/-! ## A326920.P1161448925055492530

`lcm(A000034(n), A327751(A046092(n)))`
-/

namespace A326920.P1161448925055492530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A327751 (A046092 n).toNat)

end

end A326920.P1161448925055492530

/-! ## A326920.P5837626524721701181

`A000041(C(2, n+2))*A327751(A046092(n))`
-/

namespace A326920.P5837626524721701181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A327751 (A046092 n).toNat

end

end A326920.P5837626524721701181

/-! ## A326920.P10640094256454550884

`(A000005(n+1)%2)!*A327751(A046092(n))`
-/

namespace A326920.P10640094256454550884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000005 (n + 1)) 2).toNat : ℤ) * A327751 (A046092 n).toNat

end

end A326920.P10640094256454550884

/-!
# A326921: Triangle (1 <= k <= n) read by rows: row n gives lexicographically earliest evenly spaced arrangement of weights 1...n around the circumference of a circular disk minimizing the resulting imbalance.

The programs for A326921, there is no canonical definition to state claims against.
-/

/-! ## A326921.P9181560284692823880

`A124768(A055248(n)*A228035(n))`
-/

namespace A326921.P9181560284692823880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A055248 n * A228035 n).toNat

end

end A326921.P9181560284692823880

/-! ## A326921.P9581465821832113255

`A124768(lcm(A055248(n), A228035(n)))`
-/

namespace A326921.P9581465821832113255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Int.lcm (A055248 n) (A228035 n))

end

end A326921.P9581465821832113255

/-! ## A326921.P10982568200842793900

`xor(A051237(n+1), A102683(A209476(n+1)))`
-/

namespace A326921.P10982568200842793900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051237 (n + 1)) (A102683 (A209476 (n + 1)).toNat)

end

end A326921.P10982568200842793900

/-! ## A326921.P14558031357100021748

`A051340(n)+A001221(A111820(n))`
-/

namespace A326921.P14558031357100021748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n + A001221 (A111820 n).toNat

end

end A326921.P14558031357100021748

/-! ## A326921.P12692403595138621931

`Δ[A063656(n)]+A001221(A111820(n))`
-/

namespace A326921.P12692403595138621931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A001221 (A111820 n).toNat

end

end A326921.P12692403595138621931

/-!
# A326922: Squares visited by a knight moving on a board with squares labeled with their squared distance from the origin and where the knight moves to the smallest labeled unvisited square; the smallest spiral number ordering is used if the distances are equal.

The programs for A326922, there is no canonical definition to state claims against.
-/

/-! ## A326922.P9331352688997965521

`A336336(A326924(n)+1)`
-/

namespace A326922.P9331352688997965521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (A326924 n + 1).toNat

end

end A326922.P9331352688997965521

/-! ## A326922.P3713011962860416350

`A336336(abs(A260196(n)-A326924(n)))`
-/

namespace A326922.P3713011962860416350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 |A260196 n - A326924 n|.toNat

end

end A326922.P3713011962860416350

/-! ## A326922.P1243518380186684601

`A336336(A328908(n)+A151810(n)!)`
-/

namespace A326922.P1243518380186684601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (A328908 n + (Nat.factorial (A151810 n).toNat : ℤ)).toNat

end

end A326922.P1243518380186684601

/-! ## A326922.P13308120915764913550

`A336336(A316328(n)+1)%A050887(n+1)`
-/

namespace A326922.P13308120915764913550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336336 (A316328 n + 1).toNat) (A050887 (n + 1))

end

end A326922.P13308120915764913550

/-!
# A326924: Squares visited by a knight on a spirally numbered board, moving always to the unvisited square closest to the origin.

The programs for A326924, there is no canonical definition to state claims against.
-/

/-! ## A326924.P2572712279470575172

`A018851(A328908(n)²)`
-/

namespace A326924.P2572712279470575172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A328908 n ^ 2).toNat

end

end A326924.P2572712279470575172

/-! ## A326924.P9486738351390487119

`A018851(A328908(n)^2)`
-/

namespace A326924.P9486738351390487119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A328908 n ^ 2).toNat

end

end A326924.P9486738351390487119

/-! ## A326924.P6427237150356462287

`A328908(n)%∑[A351996(n+5)]`
-/

namespace A326924.P6427237150356462287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351996 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328908 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326924.P6427237150356462287

/-! ## A326924.P17827645978363386350

`A003056(A000124(A328908(n))-1)`
-/

namespace A326924.P17827645978363386350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000124 (A328908 n).toNat - 1).toNat

end

end A326924.P17827645978363386350

/-! ## A326924.P9789892240489035948

`A328908(n)+A000007(A060207(n))`
-/

namespace A326924.P9789892240489035948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 n + A000007 (A060207 n).toNat

end

end A326924.P9789892240489035948

/-! ## A326924.P7873784598645265108

`A328908(n)+A000038(∑[A034042(n+1)])`
-/

namespace A326924.P7873784598645265108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 n + A000038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326924.P7873784598645265108

/-! ## A326924.P5873896107181362897

`A151810(A151810(n))*A328908(n)`
-/

namespace A326924.P5873896107181362897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 (A151810 n).toNat * A328908 n

end

end A326924.P5873896107181362897

/-! ## A326924.P9122257646907309766

`A328908(A174344((2*n+1)²))`
-/

namespace A326924.P9122257646907309766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 (A174344 ((2 * n + 1) ^ 2)).toNat

end

end A326924.P9122257646907309766

/-! ## A326924.P15977104606467937083

`A328908(A268038((2*n+1)²))`
-/

namespace A326924.P15977104606467937083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328908 (A268038 ((2 * n + 1) ^ 2)).toNat

end

end A326924.P15977104606467937083

/-!
# A326925: Irregular triangular array read by rows: row n shows the coefficients of this polynomial of degree n: (1/n!)*(numerator of n-th derivative of (1-x)/(1-x-x^2)).

The programs for A326925, the canonical program `A326925.P262717898238461765` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326925 has offset 1).

The definition of A326925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326925.P262717898238461765

`A094442(n+1)-A132148(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A326925

/-- `A094442(n+1)-A132148(n+1)` -/
def P262717898238461765.Spec : Prop :=
  ∀ n, P262717898238461765.a n = A326925 (n + 1)

theorem P262717898238461765.correct : P262717898238461765.Spec := by
  intro n
  simp only [A326925, Nat.add_sub_cancel]

end A326925

/-! ## A326925.P3781919814282333430

`2*A171731(n+1)-A094441(n+1)`
-/

namespace A326925.P3781919814282333430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171731 (n + 1) - A094441 (n + 1)

end

end A326925.P3781919814282333430

namespace A326925

/-- `2*A171731(n+1)-A094441(n+1)` -/
def P3781919814282333430.Spec : Prop :=
  ∀ n, P3781919814282333430.a n = A326925 (n + 1)

end A326925

/-! ## A326925.P8253354076789168723

`(A328611(n+1)-A328610(n+1))/2`
-/

namespace A326925.P8253354076789168723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328611 (n + 1) - A328610 (n + 1) : ℚ) / 2

end

end A326925.P8253354076789168723

namespace A326925

/-- `(A328611(n+1)-A328610(n+1))/2` -/
def P8253354076789168723.Spec : Prop :=
  ∀ n, P8253354076789168723.a n = (A326925 (n + 1) : ℚ)

end A326925

/-! ## A326925.P8665876248957681102

`A112554(n)-A061358(A114537(3*n+4))`
-/

namespace A326925.P8665876248957681102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112554 n - A061358 (A114537 (3 * n + 4)).toNat

end

end A326925.P8665876248957681102

namespace A326925

/-- `A112554(n)-A061358(A114537(3*n+4))` -/
def P8665876248957681102.Spec : Prop :=
  ∀ n, P8665876248957681102.a n = A326925 (n + 1)

end A326925

/-!
# A326928: The number of n X n symmetric real (0,1) matrices whose eigenvalues are all integers.

The programs for A326928, there is no canonical definition to state claims against.
-/

/-! ## A326928.P6737587187215746645

`Δ[A339279(2^n)]`
-/

namespace A326928.P6737587187215746645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339279 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326928.P6737587187215746645

/-!
# A326929: Numbers whose divisors and arithmetic mean of divisors are palindromic.

The programs for A326929, there is no canonical definition to state claims against.
-/

/-! ## A326929.P12501194874172499610

`∩[A071251(n+1), A080651(n+1)]`
-/

namespace A326929.P12501194874172499610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326929.P12501194874172499610

/-! ## A326929.P6813985337063235715

`∩[A080651(n+1), A118599(n+1)]`
-/

namespace A326929.P6813985337063235715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326929.P6813985337063235715

/-!
# A326933: Number of nonconstant irreducible polynomial divisors of the n-th polynomial given in A326926.

The programs for A326933, the canonical program `A326933.P3000388639644636097` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326933 has offset 0).

The definition of A326933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326933.P14836962080100649496

`∑{d}[n+1, ceil(sqrt(gcd(3, #)))]-1`
-/

namespace A326933.P14836962080100649496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.sqrt (Nat.gcd 3 d : ℝ)⌉ - 1

end

end A326933.P14836962080100649496

namespace A326933

/-- `∑{d}[n+1, ceil(sqrt(gcd(3, #)))]-1` -/
def P14836962080100649496.Spec : Prop :=
  ∀ n, P14836962080100649496.a n = A326933 n

end A326933

/-! ## A326933.P9502097831024773298

`∑{d}[n+1, ceil(atan(#))]-∑{d}[n+1, #²%3]`
-/

namespace A326933.P9502097831024773298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.arctan (d : ℝ)⌉ - ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 % 3 : ℕ) : ℤ)

end

end A326933.P9502097831024773298

namespace A326933

/-- `∑{d}[n+1, ceil(atan(#))]-∑{d}[n+1, #²%3]` -/
def P9502097831024773298.Spec : Prop :=
  ∀ n, P9502097831024773298.a n = A326933 n

end A326933

/-! ## A326933.P7129823432235246653

`∑{d}[n+1, (1-#%3)²]+∑{d}[n+1, ceil(cos(#%3))]-1`
-/

namespace A326933.P7129823432235246653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - ((d % 3 : ℕ) : ℤ)) ^ 2 + (∑ d ∈ Nat.divisors (f2 n), ⌈Real.cos ((d % 3 : ℕ) : ℝ)⌉ - 1)

end

end A326933.P7129823432235246653

namespace A326933

/-- `∑{d}[n+1, (1-#%3)²]+∑{d}[n+1, ceil(cos(#%3))]-1` -/
def P7129823432235246653.Spec : Prop :=
  ∀ n, P7129823432235246653.a n = A326933 n

end A326933

/-! ## A326933.P2284519367251379394

`floor(sinh(log(A054584(n+1))))`
-/

namespace A326933.P2284519367251379394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A054584 (n + 1) : ℝ))⌋

end

end A326933.P2284519367251379394

namespace A326933

/-- `floor(sinh(log(A054584(n+1))))` -/
def P2284519367251379394.Spec : Prop :=
  ∀ n, P2284519367251379394.a n = A326933 n

end A326933

/-! ## A326933.P3000388639644636097

`∑{d}[n+1, A101825(#-1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326933

/-- `∑{d}[n+1, A101825(#-1)]` -/
def P3000388639644636097.Spec : Prop :=
  ∀ n, P3000388639644636097.a n = A326933 n

theorem P3000388639644636097.correct : P3000388639644636097.Spec := by
  intro n
  simp only [A326933]

end A326933

/-! ## A326933.P5918793411470350525

`A046667(A054584(n+1))`
-/

namespace A326933.P5918793411470350525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A054584 (n + 1)).toNat

end

end A326933.P5918793411470350525

namespace A326933

/-- `A046667(A054584(n+1))` -/
def P5918793411470350525.Spec : Prop :=
  ∀ n, P5918793411470350525.a n = A326933 n

end A326933

/-! ## A326933.P15101042360625070677

`A004524(A054584(n+1)-1)`
-/

namespace A326933.P15101042360625070677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A054584 (n + 1) - 1).toNat

end

end A326933.P15101042360625070677

namespace A326933

/-- `A004524(A054584(n+1)-1)` -/
def P15101042360625070677.Spec : Prop :=
  ∀ n, P15101042360625070677.a n = A326933 n

end A326933

/-! ## A326933.P12970008542861363440

`A057979(A054584(n+1)-1)`
-/

namespace A326933.P12970008542861363440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A054584 (n + 1) - 1).toNat

end

end A326933.P12970008542861363440

namespace A326933

/-- `A057979(A054584(n+1)-1)` -/
def P12970008542861363440.Spec : Prop :=
  ∀ n, P12970008542861363440.a n = A326933 n

end A326933

/-! ## A326933.P16838983550528055407

`A114003(n+1)-A035191(n+1)`
-/

namespace A326933.P16838983550528055407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A035191 (n + 1)

end

end A326933.P16838983550528055407

namespace A326933

/-- `A114003(n+1)-A035191(n+1)` -/
def P16838983550528055407.Spec : Prop :=
  ∀ n, P16838983550528055407.a n = A326933 n

end A326933

/-! ## A326933.P14551933714813504409

`A062011(n+1)-(A035191(n+1)+1)`
-/

namespace A326933.P14551933714813504409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - (A035191 (n + 1) + 1)

end

end A326933.P14551933714813504409

namespace A326933

/-- `A062011(n+1)-(A035191(n+1)+1)` -/
def P14551933714813504409.Spec : Prop :=
  ∀ n, P14551933714813504409.a n = A326933 n

end A326933

/-! ## A326933.P14783944145938816077

`A326394(n+1)+A326395(n+1)-1`
-/

namespace A326933.P14783944145938816077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326394 (n + 1) + (A326395 (n + 1) - 1)

end

end A326933.P14783944145938816077

namespace A326933

/-- `A326394(n+1)+A326395(n+1)-1` -/
def P14783944145938816077.Spec : Prop :=
  ∀ n, P14783944145938816077.a n = A326933 n

end A326933

/-! ## A326933.P11935805528054319145

`A000005((n+1)*A038500(n+1))-1`
-/

namespace A326933.P11935805528054319145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A038500 (n + 1)).toNat - 1

end

end A326933.P11935805528054319145

namespace A326933

/-- `A000005((n+1)*A038500(n+1))-1` -/
def P11935805528054319145.Spec : Prop :=
  ∀ n, P11935805528054319145.a n = A326933 n

end A326933

/-! ## A326933.P14080698885877663930

`∑{d}[n+1, gcd(2, A000045(#))]-1`
-/

namespace A326933.P14080698885877663930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Int.gcd 2 (A000045 d) : ℕ) : ℤ) - 1

end

end A326933.P14080698885877663930

namespace A326933

/-- `∑{d}[n+1, gcd(2, A000045(#))]-1` -/
def P14080698885877663930.Spec : Prop :=
  ∀ n, P14080698885877663930.a n = A326933 n

end A326933

/-! ## A326933.P18159583245355520476

`A032741((n+1)*3^val(n+1, 3))`
-/

namespace A326933.P18159583245355520476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n + 1) * 3 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A326933.P18159583245355520476

namespace A326933

/-- `A032741((n+1)*3^val(n+1, 3))` -/
def P18159583245355520476.Spec : Prop :=
  ∀ n, P18159583245355520476.a n = A326933 n

end A326933

/-! ## A326933.P11119600333467305783

`A338117(A370565(n+1))`
-/

namespace A326933.P11119600333467305783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A370565 (n + 1)).toNat

end

end A326933.P11119600333467305783

namespace A326933

/-- `A338117(A370565(n+1))` -/
def P11119600333467305783.Spec : Prop :=
  ∀ n, P11119600333467305783.a n = A326933 n

end A326933

/-!
# A326934: Table of A(n,k) read by antidiagonals, where A(n,k) = (n*k) mod (n+1).

The programs for A326934, the canonical program `A326934.P9325489802585782569` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326934 has offset 1).

The definition of A326934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326934.P8701394379644656321

`1-C(∑[char[∑[n]]], 2)+n-A051127(n+2)`
-/

namespace A326934.P8701394379644656321
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) - A051127 (n + 2)

end

end A326934.P8701394379644656321

namespace A326934

/-- `1-C(∑[char[∑[n]]], 2)+n-A051127(n+2)` -/
def P8701394379644656321.Spec : Prop :=
  ∀ n, P8701394379644656321.a n = A326934 (n + 1)

end A326934

/-! ## A326934.P9325489802585782569

`A003991(n+1)%Δ[A193974(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A326934

/-- `A003991(n+1)%Δ[A193974(n)]` -/
def P9325489802585782569.Spec : Prop :=
  ∀ n, P9325489802585782569.a n = A326934 (n + 1)

theorem P9325489802585782569.correct : P9325489802585782569.Spec := by
  intro n
  simp only [A326934, Nat.add_sub_cancel]

end A326934

/-! ## A326934.P14124009833262683763

`A002260(n+1)-A051127(n+2)`
-/

namespace A326934.P14124009833262683763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A051127 (n + 2)

end

end A326934.P14124009833262683763

namespace A326934

/-- `A002260(n+1)-A051127(n+2)` -/
def P14124009833262683763.Spec : Prop :=
  ∀ n, P14124009833262683763.a n = A326934 (n + 1)

end A326934

/-! ## A326934.P7127718790798129397

`A144562(n+1)%(A002262(n)+2)`
-/

namespace A326934.P7127718790798129397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144562 (n + 1)) (A002262 n + 2)

end

end A326934.P7127718790798129397

namespace A326934

/-- `A144562(n+1)%(A002262(n)+2)` -/
def P7127718790798129397.Spec : Prop :=
  ∀ n, P7127718790798129397.a n = A326934 (n + 1)

end A326934

/-! ## A326934.P12416612402261254923

`sqrt(A133819(n+1))-A051127(n+2)`
-/

namespace A326934.P12416612402261254923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) - (A051127 (n + 2) : ℝ)

end

end A326934.P12416612402261254923

namespace A326934

/-- `sqrt(A133819(n+1))-A051127(n+2)` -/
def P12416612402261254923.Spec : Prop :=
  ∀ n, P12416612402261254923.a n = (A326934 (n + 1) : ℝ)

end A326934

/-! ## A326934.P1730460859161158082

`(A155546(n+1)+4)%(A002262(n)+2)`
-/

namespace A326934.P1730460859161158082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155546 (n + 1) + 4) (A002262 n + 2)

end

end A326934.P1730460859161158082

namespace A326934

/-- `(A155546(n+1)+4)%(A002262(n)+2)` -/
def P1730460859161158082.Spec : Prop :=
  ∀ n, P1730460859161158082.a n = A326934 (n + 1)

end A326934

/-! ## A326934.P1171745060086851970

`A002260(n+1)+∑[-Δ[A051127(n+1)]]`
-/

namespace A326934.P1171745060086851970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326934.P1171745060086851970

namespace A326934

/-- `A002260(n+1)+∑[-Δ[A051127(n+1)]]` -/
def P1171745060086851970.Spec : Prop :=
  ∀ n, P1171745060086851970.a n = A326934 (n + 1)

end A326934

/-! ## A326934.P11433926801661513773

`A000005(A059268(n))-A051127(n+2)`
-/

namespace A326934.P11433926801661513773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat - A051127 (n + 2)

end

end A326934.P11433926801661513773

namespace A326934

/-- `A000005(A059268(n))-A051127(n+2)` -/
def P11433926801661513773.Spec : Prop :=
  ∀ n, P11433926801661513773.a n = A326934 (n + 1)

end A326934

/-! ## A326934.P7122659881280815749

`A000005(A036561(n))%(A002262(n)+2)`
-/

namespace A326934.P7122659881280815749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A036561 n).toNat) (A002262 n + 2)

end

end A326934.P7122659881280815749

namespace A326934

/-- `A000005(A036561(n))%(A002262(n)+2)` -/
def P7122659881280815749.Spec : Prop :=
  ∀ n, P7122659881280815749.a n = A326934 (n + 1)

end A326934

/-!
# A326935: a(1) = 1; a(n) = the largest prime factor of a(n-1) if a(n-1) is a composite number, otherwise a(n)=a(n-1)+n.

The programs for A326935, there is no canonical definition to state claims against.
-/

/-! ## A326935.P8204184014515399347

`A006530(a(n-1))+and(n+1, A288295(n+1))` with `a(0)=1`
-/

namespace A326935.P8204184014515399347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006530 (a (n - 1)).toNat + Int.land (n + 1 : ℤ) (A288295 (n + 1))

end

end A326935.P8204184014515399347

/-!
# A326937: Dirichlet g.f.: (2^s - 1) / (zeta(s-1) * (2^s - 2)).

The programs for A326937, the canonical program `A326937.P5410755675634869574` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326937 has offset 1).

The definition of A326937 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326937.P5410755675634869574

`A055615(n+1)/A006519(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326937

/-- `A055615(n+1)/A006519(n+1)` -/
def P5410755675634869574.Spec : Prop :=
  ∀ n, P5410755675634869574.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P10916642522378878983

`(n+1)/and(n+1, -(n+1))*round(∏{p}[n+1, -#]/Δ[n²])`
-/

namespace A326937.P10916642522378878983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) * (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) : ℚ)

end

end A326937.P10916642522378878983

namespace A326937

/-- `(n+1)/and(n+1, -(n+1))*round(∏{p}[n+1, -#]/Δ[n²])` -/
def P10916642522378878983.Spec : Prop :=
  ∀ n, P10916642522378878983.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P8075171592121300280

`A062004(n+1)/floor(4/gcd(2, n))`
-/

namespace A326937.P8075171592121300280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / (⌊4 / (Nat.gcd 2 n : ℚ)⌋ : ℚ)

end

end A326937.P8075171592121300280

namespace A326937

/-- `A062004(n+1)/floor(4/gcd(2, n))` -/
def P8075171592121300280.Spec : Prop :=
  ∀ n, P8075171592121300280.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P13325340062706109995

`gcd(n+1, ∑[n])*A008683(n+1)`
-/

namespace A326937.P13325340062706109995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A008683 (n + 1)

end

end A326937.P13325340062706109995

namespace A326937

/-- `gcd(n+1, ∑[n])*A008683(n+1)` -/
def P13325340062706109995.Spec : Prop :=
  ∀ n, P13325340062706109995.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P4462036387451450655

`A008683(n+1)*A364900(n)`
-/

namespace A326937.P4462036387451450655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A364900 n

end

end A326937.P4462036387451450655

namespace A326937

/-- `A008683(n+1)*A364900(n)` -/
def P4462036387451450655.Spec : Prop :=
  ∀ n, P4462036387451450655.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P11177073819048431312

`A055615(n+1)/A000034(n)`
-/

namespace A326937.P11177073819048431312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A326937.P11177073819048431312

namespace A326937

/-- `A055615(n+1)/A000034(n)` -/
def P11177073819048431312.Spec : Prop :=
  ∀ n, P11177073819048431312.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P2316151506078091362

`A062004(n+1)/A010694(n)`
-/

namespace A326937.P2316151506078091362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062004 (n + 1) : ℚ) / (A010694 n : ℚ)

end

end A326937.P2316151506078091362

namespace A326937

/-- `A062004(n+1)/A010694(n)` -/
def P2316151506078091362.Spec : Prop :=
  ∀ n, P2316151506078091362.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P13298674911935638288

`A055615(n+1)/A133186(n)`
-/

namespace A326937.P13298674911935638288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (A133186 n : ℚ)

end

end A326937.P13298674911935638288

namespace A326937

/-- `A055615(n+1)/A133186(n)` -/
def P13298674911935638288.Spec : Prop :=
  ∀ n, P13298674911935638288.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P9503610813845967856

`A125287(n+1)/A176743(n)`
-/

namespace A326937.P9503610813845967856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125287 (n + 1) : ℚ) / (A176743 n : ℚ)

end

end A326937.P9503610813845967856

namespace A326937

/-- `A125287(n+1)/A176743(n)` -/
def P9503610813845967856.Spec : Prop :=
  ∀ n, P9503610813845967856.a n = (A326937 (n + 1) : ℚ)

end A326937

/-! ## A326937.P8134357215774408693

`A000265(n+1)*A008683(n+1)`
-/

namespace A326937.P8134357215774408693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A008683 (n + 1)

end

end A326937.P8134357215774408693

namespace A326937

/-- `A000265(n+1)*A008683(n+1)` -/
def P8134357215774408693.Spec : Prop :=
  ∀ n, P8134357215774408693.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P8291093380234180386

`A008683(n+1)*A026741(n+1)`
-/

namespace A326937.P8291093380234180386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A026741 (n + 1)

end

end A326937.P8291093380234180386

namespace A326937

/-- `A008683(n+1)*A026741(n+1)` -/
def P8291093380234180386.Spec : Prop :=
  ∀ n, P8291093380234180386.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P14333658266263766176

`A008683(n+1)*A040026(n+1)`
-/

namespace A326937.P14333658266263766176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A040026 (n + 1)

end

end A326937.P14333658266263766176

namespace A326937

/-- `A008683(n+1)*A040026(n+1)` -/
def P14333658266263766176.Spec : Prop :=
  ∀ n, P14333658266263766176.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P14818630571022410690

`A008683(n+1)*A060819(n+1)`
-/

namespace A326937.P14818630571022410690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A060819 (n + 1)

end

end A326937.P14818630571022410690

namespace A326937

/-- `A008683(n+1)*A060819(n+1)` -/
def P14818630571022410690.Spec : Prop :=
  ∀ n, P14818630571022410690.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P6137162708878861141

`A008683(n+1)*A076109(n+1)`
-/

namespace A326937.P6137162708878861141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A076109 (n + 1)

end

end A326937.P6137162708878861141

namespace A326937

/-- `A008683(n+1)*A076109(n+1)` -/
def P6137162708878861141.Spec : Prop :=
  ∀ n, P6137162708878861141.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P400148627578046641

`A008683(n+1)*A082725(n+1)`
-/

namespace A326937.P400148627578046641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A082725 (n + 1)

end

end A326937.P400148627578046641

namespace A326937

/-- `A008683(n+1)*A082725(n+1)` -/
def P400148627578046641.Spec : Prop :=
  ∀ n, P400148627578046641.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P12559132295787172249

`A008683(n+1)*A090395(n+1)`
-/

namespace A326937.P12559132295787172249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A090395 (n + 1)

end

end A326937.P12559132295787172249

namespace A326937

/-- `A008683(n+1)*A090395(n+1)` -/
def P12559132295787172249.Spec : Prop :=
  ∀ n, P12559132295787172249.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P15857054925886370574

`A008683(n+1)*A094758(n+1)`
-/

namespace A326937.P15857054925886370574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A094758 (n + 1)

end

end A326937.P15857054925886370574

namespace A326937

/-- `A008683(n+1)*A094758(n+1)` -/
def P15857054925886370574.Spec : Prop :=
  ∀ n, P15857054925886370574.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P3019011554612900452

`A008683(n+1)*A137926(n+1)`
-/

namespace A326937.P3019011554612900452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A137926 (n + 1)

end

end A326937.P3019011554612900452

namespace A326937

/-- `A008683(n+1)*A137926(n+1)` -/
def P3019011554612900452.Spec : Prop :=
  ∀ n, P3019011554612900452.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P7536661334028355927

`(A153733(n)+1)*A008683(n+1)`
-/

namespace A326937.P7536661334028355927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153733 n + 1) * A008683 (n + 1)

end

end A326937.P7536661334028355927

namespace A326937

/-- `(A153733(n)+1)*A008683(n+1)` -/
def P7536661334028355927.Spec : Prop :=
  ∀ n, P7536661334028355927.a n = A326937 (n + 1)

end A326937

/-! ## A326937.P8973566699460923729

`A076109(n+1)*A092152(n+1)`
-/

namespace A326937.P8973566699460923729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (n + 1) * A092152 (n + 1)

end

end A326937.P8973566699460923729

namespace A326937

/-- `A076109(n+1)*A092152(n+1)` -/
def P8973566699460923729.Spec : Prop :=
  ∀ n, P8973566699460923729.a n = A326937 (n + 1)

end A326937

/-!
# A326938: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1) * (1 - 2^(-s))).

The programs for A326938, the canonical program `A326938.P12021867718184340090` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326938 has offset 1).

The definition of A326938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326938.P12021867718184340090

`A000034(n)*A327278(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326938

/-- `A000034(n)*A327278(n+1)` -/
def P12021867718184340090.Spec : Prop :=
  ∀ n, P12021867718184340090.a n = A326938 (n + 1)

theorem P12021867718184340090.correct : P12021867718184340090.Spec := by
  intro n
  simp only [A326938, Nat.add_sub_cancel]

end A326938

/-! ## A326938.P11485842034802771285

`A133186(n)*A327278(n+1)`
-/

namespace A326938.P11485842034802771285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 n * A327278 (n + 1)

end

end A326938.P11485842034802771285

namespace A326938

/-- `A133186(n)*A327278(n+1)` -/
def P11485842034802771285.Spec : Prop :=
  ∀ n, P11485842034802771285.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P15985026107708354187

`A001511(n+1)*A327278(n+1)`
-/

namespace A326938.P15985026107708354187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A327278 (n + 1)

end

end A326938.P15985026107708354187

namespace A326938

/-- `A001511(n+1)*A327278(n+1)` -/
def P15985026107708354187.Spec : Prop :=
  ∀ n, P15985026107708354187.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P6543874554410811184

`A003484(n+1)*A327278(n+1)`
-/

namespace A326938.P6543874554410811184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) * A327278 (n + 1)

end

end A326938.P6543874554410811184

namespace A326938

/-- `A003484(n+1)*A327278(n+1)` -/
def P6543874554410811184.Spec : Prop :=
  ∀ n, P6543874554410811184.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P5950646441466531746

`A006519(n+1)*A327278(n+1)`
-/

namespace A326938.P5950646441466531746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A327278 (n + 1)

end

end A326938.P5950646441466531746

namespace A326938

/-- `A006519(n+1)*A327278(n+1)` -/
def P5950646441466531746.Spec : Prop :=
  ∀ n, P5950646441466531746.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P1756021607876723662

`A056832(n+1)*A327278(n+1)`
-/

namespace A326938.P1756021607876723662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A327278 (n + 1)

end

end A326938.P1756021607876723662

namespace A326938

/-- `A056832(n+1)*A327278(n+1)` -/
def P1756021607876723662.Spec : Prop :=
  ∀ n, P1756021607876723662.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P5870849315999769217

`A068057(n+1)*A327278(n+1)`
-/

namespace A326938.P5870849315999769217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068057 (n + 1) * A327278 (n + 1)

end

end A326938.P5870849315999769217

namespace A326938

/-- `A068057(n+1)*A327278(n+1)` -/
def P5870849315999769217.Spec : Prop :=
  ∀ n, P5870849315999769217.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P11056407908854840840

`A078734(n+1)*A327278(n+1)`
-/

namespace A326938.P11056407908854840840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1) * A327278 (n + 1)

end

end A326938.P11056407908854840840

namespace A326938

/-- `A078734(n+1)*A327278(n+1)` -/
def P11056407908854840840.Spec : Prop :=
  ∀ n, P11056407908854840840.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P9849529527442888254

`A082388(n+1)*A327278(n+1)`
-/

namespace A326938.P9849529527442888254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082388 (n + 1) * A327278 (n + 1)

end

end A326938.P9849529527442888254

namespace A326938

/-- `A082388(n+1)*A327278(n+1)` -/
def P9849529527442888254.Spec : Prop :=
  ∀ n, P9849529527442888254.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P10083263283645384544

`A089242(n+1)*A327278(n+1)`
-/

namespace A326938.P10083263283645384544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (n + 1) * A327278 (n + 1)

end

end A326938.P10083263283645384544

namespace A326938

/-- `A089242(n+1)*A327278(n+1)` -/
def P10083263283645384544.Spec : Prop :=
  ∀ n, P10083263283645384544.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P10270144678131891809

`A092412(n+1)*A327278(n+1)`
-/

namespace A326938.P10270144678131891809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092412 (n + 1) * A327278 (n + 1)

end

end A326938.P10270144678131891809

namespace A326938

/-- `A092412(n+1)*A327278(n+1)` -/
def P10270144678131891809.Spec : Prop :=
  ∀ n, P10270144678131891809.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P15967157605271477421

`A105931(n+1)*A327278(n+1)`
-/

namespace A326938.P15967157605271477421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A327278 (n + 1)

end

end A326938.P15967157605271477421

namespace A326938

/-- `A105931(n+1)*A327278(n+1)` -/
def P15967157605271477421.Spec : Prop :=
  ∀ n, P15967157605271477421.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P10602365991301100779

`A138191(n+1)*A327278(n+1)`
-/

namespace A326938.P10602365991301100779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A327278 (n + 1)

end

end A326938.P10602365991301100779

namespace A326938

/-- `A138191(n+1)*A327278(n+1)` -/
def P10602365991301100779.Spec : Prop :=
  ∀ n, P10602365991301100779.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P11614282539084843619

`A230074(n+1)*A327268(n+1)`
-/

namespace A326938.P11614282539084843619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) * A327268 (n + 1)

end

end A326938.P11614282539084843619

namespace A326938

/-- `A230074(n+1)*A327268(n+1)` -/
def P11614282539084843619.Spec : Prop :=
  ∀ n, P11614282539084843619.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P11651833271890634451

`A235726(n+1)*A327278(n+1)`
-/

namespace A326938.P11651833271890634451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235726 (n + 1) * A327278 (n + 1)

end

end A326938.P11651833271890634451

namespace A326938

/-- `A235726(n+1)*A327278(n+1)` -/
def P11651833271890634451.Spec : Prop :=
  ∀ n, P11651833271890634451.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P18231156016226703238

`A236313(n+1)*A327278(n+1)`
-/

namespace A326938.P18231156016226703238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1) * A327278 (n + 1)

end

end A326938.P18231156016226703238

namespace A326938

/-- `A236313(n+1)*A327278(n+1)` -/
def P18231156016226703238.Spec : Prop :=
  ∀ n, P18231156016226703238.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P1728485813445947702

`A265331(n+1)*A327278(n+1)`
-/

namespace A326938.P1728485813445947702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (n + 1) * A327278 (n + 1)

end

end A326938.P1728485813445947702

namespace A326938

/-- `A265331(n+1)*A327278(n+1)` -/
def P1728485813445947702.Spec : Prop :=
  ∀ n, P1728485813445947702.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P4416807209571765469

`(A007814(n+1)+1)*A327278(n+1)`
-/

namespace A326938.P4416807209571765469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A327278 (n + 1)

end

end A326938.P4416807209571765469

namespace A326938

/-- `(A007814(n+1)+1)*A327278(n+1)` -/
def P4416807209571765469.Spec : Prop :=
  ∀ n, P4416807209571765469.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P15741937715845128872

`∑{d}[n+1, A055615(#)*A087003((n+1)/#)]`
-/

namespace A326938.P15741937715845128872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326938.P15741937715845128872

namespace A326938

/-- `∑{d}[n+1, A055615(#)*A087003((n+1)/#)]` -/
def P15741937715845128872.Spec : Prop :=
  ∀ n, P15741937715845128872.a n = A326938 (n + 1)

end A326938

/-! ## A326938.P3676356706102270545

`∑{d}[n+1, A046692(#)*A209229((n+1)/#)]`
-/

namespace A326938.P3676356706102270545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326938.P3676356706102270545

namespace A326938

/-- `∑{d}[n+1, A046692(#)*A209229((n+1)/#)]` -/
def P3676356706102270545.Spec : Prop :=
  ∀ n, P3676356706102270545.a n = A326938 (n + 1)

end A326938

/-!
# A326939: Number of T_0 sets of subsets of {1..n} that cover all n vertices.

The programs for A326939, there is no canonical definition to state claims against.
-/

/-! ## A326939.P12140473182751436000

`2*A059201(n)`
-/

namespace A326939.P12140473182751436000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059201 n

end

end A326939.P12140473182751436000

/-! ## A326939.P1119968499129459958

`A059085(n)-n*a(n-1)` with `a(0)=2`
-/

namespace A326939.P1119968499129459958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059085 n - (n : ℤ) * a (n - 1)

end

end A326939.P1119968499129459958

/-! ## A326939.P17589652481018861009

`A059088(n)+A059088(n)-n*a(n-1)` with `a(0)=2`
-/

namespace A326939.P17589652481018861009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059088 n + (A059088 n - (n : ℤ) * a (n - 1))

end

end A326939.P17589652481018861009

/-! ## A326939.P3820279829961008769

`A059201(A028310(n))+A059201(n)`
-/

namespace A326939.P3820279829961008769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059201 (A028310 n).toNat + A059201 n

end

end A326939.P3820279829961008769

/-! ## A326939.P13552337309135205752

`A059201(A051801(n))+A059201(n)`
-/

namespace A326939.P13552337309135205752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059201 (A051801 n).toNat + A059201 n

end

end A326939.P13552337309135205752

/-!
# A326940: Number of T_0 set-systems on n vertices.

The programs for A326940, there is no canonical definition to state claims against.
-/

/-! ## A326940.P13651487369668316632

`A326941(n)/2`
-/

namespace A326940.P13651487369668316632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326941 n : ℚ) / 2

end

end A326940.P13651487369668316632

/-!
# A326941: Number of T_0 sets of subsets of {1..n}.

The programs for A326941, there is no canonical definition to state claims against.
-/

/-! ## A326941.P794674134440964740

`2*A326940(n)`
-/

namespace A326941.P794674134440964740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326940 n

end

end A326941.P794674134440964740

/-! ## A326941.P14932601167597245814

`A326940(A007095(n))+A326940(n)`
-/

namespace A326941.P14932601167597245814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326940 (A007095 n).toNat + A326940 n

end

end A326941.P14932601167597245814

/-!
# A326942: Number of unlabeled T_0 sets of subsets of {1..n} that cover all n vertices.

The programs for A326942, there is no canonical definition to state claims against.
-/

/-! ## A326942.P16802584217897477738

`2*A319637(n)`
-/

namespace A326942.P16802584217897477738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319637 n

end

end A326942.P16802584217897477738

/-!
# A326943: Number of T_0 sets of subsets of {1..n} that cover all n vertices and are closed under intersection.

The programs for A326943, there is no canonical definition to state claims against.
-/

/-! ## A326943.P9571618919627646995

`2*A334253(n)`
-/

namespace A326943.P9571618919627646995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334253 n

end

end A326943.P9571618919627646995

/-! ## A326943.P10216729165718221881

`A326944(n)+A309615(n)`
-/

namespace A326943.P10216729165718221881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326944 n + A309615 n

end

end A326943.P10216729165718221881

/-! ## A326943.P3360739468899795757

`∑{digits}[n, A334253(n)+A334253(#)]`
-/

namespace A326943.P3360739468899795757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A334253 n + A334253 x).sum

end

end A326943.P3360739468899795757

/-! ## A326943.P18080077068905535151

`A334253(∏{digits}[n, #])+A334253(n)`
-/

namespace A326943.P18080077068905535151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334253 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + A334253 n

end

end A326943.P18080077068905535151

/-!
# A326944: Number of T_0 sets of subsets of {1..n} that cover all n vertices, contain {}, and are closed under intersection.

The programs for A326944, there is no canonical definition to state claims against.
-/

/-! ## A326944.P8925217758311284456

`A309615(n+1)/(n+1)`
-/

namespace A326944.P8925217758311284456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309615 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A326944.P8925217758311284456

/-! ## A326944.P2190680299098540741

`A326943(n)-A309615(n)`
-/

namespace A326944.P2190680299098540741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326943 n - A309615 n

end

end A326944.P2190680299098540741

/-! ## A326944.P8424924481377758386

`2*A334253(n)-A309615(n)`
-/

namespace A326944.P8424924481377758386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334253 n - A309615 n

end

end A326944.P8424924481377758386

/-! ## A326944.P15149803290507943812

`A334253(∑{digits}[n, #])+A334253(n)-A309615(n)`
-/

namespace A326944.P15149803290507943812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334253 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + A334253 n - A309615 n

end

end A326944.P15149803290507943812

/-!
# A326945: Number of T_0 sets of subsets of {1..n} that are closed under intersection.

The programs for A326945, there is no canonical definition to state claims against.
-/

/-! ## A326945.P6997787801141447242

`A117192(∑[A330979(n+1)+1]+n+3)`
-/

namespace A326945.P6997787801141447242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330979 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117192 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)).toNat

end

end A326945.P6997787801141447242

/-!
# A326946: Number of unlabeled T_0 set-systems on n vertices.

The programs for A326946, there is no canonical definition to state claims against.
-/

/-! ## A326946.P12201027778724130339

`A326949(n)/2`
-/

namespace A326946.P12201027778724130339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326949 n : ℚ) / 2

end

end A326946.P12201027778724130339

/-!
# A326947: BII-numbers of T_0 set-systems.

The programs for A326947, there is no canonical definition to state claims against.
-/

/-! ## A326947.P6582297467973370117

`lt[A330101(n), A010050(A000120(n))]`
-/

namespace A326947.P6582297467973370117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326947.P6582297467973370117

/-! ## A326947.P1665523504471957601

`lt[A080791(A330101(n)), A001316(n)]`
-/

namespace A326947.P1665523504471957601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A330101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326947.P1665523504471957601

/-! ## A326947.P4158275659856928357

`lt[A008586(A330101(n)), A102377(n)]`
-/

namespace A326947.P4158275659856928357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A330101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326947.P4158275659856928357

/-! ## A326947.P14357757461206994357

`lt[A330101(n), A000045(2*A001316(n))]`
-/

namespace A326947.P14357757461206994357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326947.P14357757461206994357

/-! ## A326947.P6619193967421670430

`lt[A330101(n)², A102377(A330101(n)²)]`
-/

namespace A326947.P6619193967421670430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 (A330101 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A326947.P6619193967421670430

/-!
# A326949: Number of unlabeled T_0 sets of subsets of {1..n}.

The programs for A326949, there is no canonical definition to state claims against.
-/

/-! ## A326949.P4028709806463568085

`2*A326946(n)`
-/

namespace A326949.P4028709806463568085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326946 n

end

end A326949.P4028709806463568085

/-!
# A326950: Number of T_0 antichains of nonempty subsets of {1..n}.

The programs for A326950, there is no canonical definition to state claims against.
-/

/-! ## A326950.P13292374508904895187

`A027883(A346689(n)+A048143(n))`
-/

namespace A326950.P13292374508904895187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027883 (A346689 n + A048143 n).toNat

end

end A326950.P13292374508904895187

/-!
# A326951: Number of unlabeled sets of subsets of {1..n} where every covered vertex is the unique common element of some subset of the edges.

The programs for A326951, there is no canonical definition to state claims against.
-/

/-! ## A326951.P15797796846207979155

`2*A326972(n)`
-/

namespace A326951.P15797796846207979155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326972 n

end

end A326951.P15797796846207979155

/-!
# A326952: a(n) = A001222(A028905(n)).

The programs for A326952, there is no canonical definition to state claims against.
-/

/-! ## A326952.P17846018513609067460

`∑{e}[A028905(n+1), #]`
-/

namespace A326952.P17846018513609067460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A326952.P17846018513609067460

/-! ## A326952.P10267810097507124327

`A001222(A028905(n+1))`
-/

namespace A326952.P10267810097507124327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028905 (n + 1)).toNat

end

end A326952.P10267810097507124327

/-! ## A326952.P16635256860598679506

`A001222(A004185(p?[A004442(n)]))`
-/

namespace A326952.P16635256860598679506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A326952.P16635256860598679506

/-! ## A326952.P5631945632936022435

`A001222(A004185(A000040(n+1)))`
-/

namespace A326952.P5631945632936022435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (A000040 (n + 1)).toNat).toNat

end

end A326952.P5631945632936022435

/-! ## A326952.P11155924463030750970

`A001222(A004185(A028906(n+1)))`
-/

namespace A326952.P11155924463030750970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (A028906 (n + 1)).toNat).toNat

end

end A326952.P11155924463030750970

/-! ## A326952.P7363515615504917664

`A001222(A004185(A008578(n+2)))`
-/

namespace A326952.P7363515615504917664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (A008578 (n + 2)).toNat).toNat

end

end A326952.P7363515615504917664

/-! ## A326952.P12181569103106853880

`A001222(A004185(p?[A067340(n+1)]))`
-/

namespace A326952.P12181569103106853880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A326952.P12181569103106853880

/-! ## A326952.P18321514804254434573

`A001222(A004185(p?[A100994(n+1)]))`
-/

namespace A326952.P18321514804254434573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A326952.P18321514804254434573

/-! ## A326952.P10140381086411801684

`A001222(A004185(p?[A001057(n)]))`
-/

namespace A326952.P10140381086411801684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A326952.P10140381086411801684

/-! ## A326952.P17352739437075321502

`A001222(A004185(p?[A057979(n)]))`
-/

namespace A326952.P17352739437075321502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A326952.P17352739437075321502

/-!
# A326953: a(n) = A001222(A028906(n)).

The programs for A326953, there is no canonical definition to state claims against.
-/

/-! ## A326953.P11350671402349722097

`∑{e}[A028906(n+1), #]`
-/

namespace A326953.P11350671402349722097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A326953.P11350671402349722097

/-! ## A326953.P1769116906537692413

`A001222(A028906(n+1))`
-/

namespace A326953.P1769116906537692413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028906 (n + 1)).toNat

end

end A326953.P1769116906537692413

/-! ## A326953.P13000599076443081374

`∑{e}[A004186(A000040(n+1)), #]`
-/

namespace A326953.P13000599076443081374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A326953.P13000599076443081374

/-! ## A326953.P5040465507819108075

`A001222(A004186(A000040(n+1)))`
-/

namespace A326953.P5040465507819108075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004186 (A000040 (n + 1)).toNat).toNat

end

end A326953.P5040465507819108075

/-! ## A326953.P9250683051238258616

`A001222(A004186(A004087(n+1)))`
-/

namespace A326953.P9250683051238258616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004186 (A004087 (n + 1)).toNat).toNat

end

end A326953.P9250683051238258616

/-! ## A326953.P12454760246287568568

`A001222(A004186(p?[A066182(n+1)]))`
-/

namespace A326953.P12454760246287568568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A326953.P12454760246287568568

/-!
# A326954: Numerator of the expected number of distinct squares visited by a knight's random walk on an infinite chessboard after n steps.

The programs for A326954, there is no canonical definition to state claims against.
-/

/-! ## A326954.P5208070277712875932

`A309221(n)/A326974(A342342(n))`
-/

namespace A326954.P5208070277712875932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309221 n : ℚ) / (A326974 (A342342 n).toNat : ℚ)

end

end A326954.P5208070277712875932

/-! ## A326954.P3552143191247459710

`lcm(A000265(A309221(n)), A309213(n))`
-/

namespace A326954.P3552143191247459710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A309221 n).toNat) (A309213 n)

end

end A326954.P3552143191247459710

/-!
# A326955: Denominator of the expected number of distinct squares visited by a knight's random walk on an infinite chessboard after n steps.

The programs for A326955, there is no canonical definition to state claims against.
-/

/-! ## A326955.P165593452005861188

`2^A241675(A288497(2*n))`
-/

namespace A326955.P165593452005861188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A241675 (A288497 (2 * n)).toNat : ℤ)

end

end A326955.P165593452005861188

/-! ## A326955.P4783235222317337978

`∏{e}[5^n+9^n-1, 2^(n-1)/#]`
-/

namespace A326955.P4783235222317337978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 9 ^ n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A326955.P4783235222317337978

/-! ## A326955.P15066503108049791444

`A302808(A271684(n+1)+A035617(n))`
-/

namespace A326955.P15066503108049791444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A271684 (n + 1) + A035617 n).toNat

end

end A326955.P15066503108049791444

/-!
# A326956: Characteristic function of A228354.

The programs for A326956, the canonical program `A326956.P17897166605498576645` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326956 has offset 1).

The definition of A326956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A326956.P4550171130086120980

`char[A194602(n)]`
-/

namespace A326956.P4550171130086120980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326956.P4550171130086120980

namespace A326956

/-- `char[A194602(n)]` -/
def P4550171130086120980.Spec : Prop :=
  ∀ n, (P4550171130086120980.a n : ℤ) = A326956 (n + 1)

end A326956

/-! ## A326956.P7296703315525374421

`round(acot(A286552(n)))`
-/

namespace A326956.P7296703315525374421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A286552 n : ℝ))

end

end A326956.P7296703315525374421

namespace A326956

/-- `round(acot(A286552(n)))` -/
def P7296703315525374421.Spec : Prop :=
  ∀ n, P7296703315525374421.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P8814859880277849796

`char[comp[A161819(n+1)]]`
-/

namespace A326956.P8814859880277849796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161819 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A326956.P8814859880277849796

namespace A326956

/-- `char[comp[A161819(n+1)]]` -/
def P8814859880277849796.Spec : Prop :=
  ∀ n, (P8814859880277849796.a n : ℤ) = A326956 (n + 1)

end A326956

/-! ## A326956.P14362867162406430384

`char[record[A331856(2*n)]]`
-/

namespace A326956.P14362867162406430384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326956.P14362867162406430384

namespace A326956

/-- `char[record[A331856(2*n)]]` -/
def P14362867162406430384.Spec : Prop :=
  ∀ n, (P14362867162406430384.a n : ℤ) = A326956 (n + 1)

end A326956

/-! ## A326956.P7591079957827464799

`char[A161820(n+1)-char[1]]`
-/

namespace A326956.P7591079957827464799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161820 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326956.P7591079957827464799

namespace A326956

/-- `char[A161820(n+1)-char[1]]` -/
def P7591079957827464799.Spec : Prop :=
  ∀ n, (P7591079957827464799.a n : ℤ) = A326956 (n + 1)

end A326956

/-! ## A326956.P11380117631256375613

`A000007(A286552(n)-1)`
-/

namespace A326956.P11380117631256375613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A286552 n - 1).toNat

end

end A326956.P11380117631256375613

namespace A326956

/-- `A000007(A286552(n)-1)` -/
def P11380117631256375613.Spec : Prop :=
  ∀ n, P11380117631256375613.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P968784493916692620

`∑{d}[A286552(n), A008683(#)]`
-/

namespace A326956.P968784493916692620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A326956.P968784493916692620

namespace A326956

/-- `∑{d}[A286552(n), A008683(#)]` -/
def P968784493916692620.Spec : Prop :=
  ∀ n, P968784493916692620.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P17531034275781587606

`A109578(2*A286552(n)-1)`
-/

namespace A326956.P17531034275781587606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (2 * A286552 n - 1).toNat

end

end A326956.P17531034275781587606

namespace A326956

/-- `A109578(2*A286552(n)-1)` -/
def P17531034275781587606.Spec : Prop :=
  ∀ n, P17531034275781587606.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P17897166605498576645

`C(A278222(n), A005940(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A326956

/-- `C(A278222(n), A005940(n+1))` -/
def P17897166605498576645.Spec : Prop :=
  ∀ n, (P17897166605498576645.a n : ℤ) = A326956 (n + 1)

theorem P17897166605498576645.correct : P17897166605498576645.Spec := by
  intro n
  simp only [A326956, Nat.add_sub_cancel]

end A326956

/-! ## A326956.P15487143844356672548

`A000007(n-A331856(2*n))`
-/

namespace A326956.P15487143844356672548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) - A331856 (2 * n)).toNat

end

end A326956.P15487143844356672548

namespace A326956

/-- `A000007(n-A331856(2*n))` -/
def P15487143844356672548.Spec : Prop :=
  ∀ n, P15487143844356672548.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P16778099765765687780

`A331856(C(A331856(2*n), n))`
-/

namespace A326956.P16778099765765687780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (Nat.choose (A331856 (2 * n)).toNat n)

end

end A326956.P16778099765765687780

namespace A326956

/-- `A331856(C(A331856(2*n), n))` -/
def P16778099765765687780.Spec : Prop :=
  ∀ n, P16778099765765687780.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P10323953561246449717

`A023416(A038573(n-A331856(2*n)))`
-/

namespace A326956.P10323953561246449717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A038573 ((n : ℤ) - A331856 (2 * n)).toNat).toNat

end

end A326956.P10323953561246449717

namespace A326956

/-- `A023416(A038573(n-A331856(2*n)))` -/
def P10323953561246449717.Spec : Prop :=
  ∀ n, P10323953561246449717.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P1389674472728089986

`round(acot(A337377(n)))`
-/

namespace A326956.P1389674472728089986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A337377 n : ℝ))

end

end A326956.P1389674472728089986

namespace A326956

/-- `round(acot(A337377(n)))` -/
def P1389674472728089986.Spec : Prop :=
  ∀ n, P1389674472728089986.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P2631154211144425421

`A104430(C(2, A337377(n)))-1`
-/

namespace A326956.P2631154211144425421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104430 (Nat.choose 2 (A337377 n).toNat) - 1

end

end A326956.P2631154211144425421

namespace A326956

/-- `A104430(C(2, A337377(n)))-1` -/
def P2631154211144425421.Spec : Prop :=
  ∀ n, P2631154211144425421.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P12645001629886472287

`A337377(C(2, A337377(n)))-1`
-/

namespace A326956.P12645001629886472287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (Nat.choose 2 (A337377 n).toNat) - 1

end

end A326956.P12645001629886472287

namespace A326956

/-- `A337377(C(2, A337377(n)))-1` -/
def P12645001629886472287.Spec : Prop :=
  ∀ n, P12645001629886472287.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P17497611076060150321

`A008683(A286552(n)²)`
-/

namespace A326956.P17497611076060150321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A286552 n ^ 2).toNat

end

end A326956.P17497611076060150321

namespace A326956

/-- `A008683(A286552(n)²)` -/
def P17497611076060150321.Spec : Prop :=
  ∀ n, P17497611076060150321.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P5279144688352648026

`∏{e}[A337377(n), A337380(#)]`
-/

namespace A326956.P5279144688352648026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A337380 (Nat.factorization (f1 n).natAbs p)

end

end A326956.P5279144688352648026

namespace A326956

/-- `∏{e}[A337377(n), A337380(#)]` -/
def P5279144688352648026.Spec : Prop :=
  ∀ n, P5279144688352648026.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P13828226757876886525

`A004277(∑{e}[A337377(n), #])%2`
-/

namespace A326956.P13828226757876886525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)) 2

end

end A326956.P13828226757876886525

namespace A326956

/-- `A004277(∑{e}[A337377(n), #])%2` -/
def P13828226757876886525.Spec : Prop :=
  ∀ n, P13828226757876886525.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P10286106661939097769

`∑{d}[A337377(n), A008683(#)]`
-/

namespace A326956.P10286106661939097769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A326956.P10286106661939097769

namespace A326956

/-- `∑{d}[A337377(n), A008683(#)]` -/
def P10286106661939097769.Spec : Prop :=
  ∀ n, P10286106661939097769.a n = A326956 (n + 1)

end A326956

/-! ## A326956.P15398700477630199349

`and(1, A000010(A337377(n)+1))`
-/

namespace A326956.P15398700477630199349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A337377 n + 1).toNat)

end

end A326956.P15398700477630199349

namespace A326956

/-- `and(1, A000010(A337377(n)+1))` -/
def P15398700477630199349.Spec : Prop :=
  ∀ n, P15398700477630199349.a n = A326956 (n + 1)

end A326956

/-!
# A326957: Total number of noncomposite parts in all partitions of n.

The programs for A326957, there is no canonical definition to state claims against.
-/

/-! ## A326957.P1855971400354207469

`A006128(n)-A326981(n)`
-/

namespace A326957.P1855971400354207469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A326981 n

end

end A326957.P1855971400354207469

/-! ## A326957.P11647257494501216700

`A211978(n)/2-A326981(n)`
-/

namespace A326957.P11647257494501216700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2 - (A326981 n : ℚ)

end

end A326957.P11647257494501216700

/-! ## A326957.P15055587463417026148

`A278355(n)/4-A326981(n)`
-/

namespace A326957.P15055587463417026148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278355 n : ℚ) / 4 - (A326981 n : ℚ)

end

end A326957.P15055587463417026148

/-! ## A326957.P181356633971904826

`A225596(n)-(A326981(n)+n)`
-/

namespace A326957.P181356633971904826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n - (A326981 n + (n : ℤ))

end

end A326957.P181356633971904826

/-! ## A326957.P11022045913925806014

`∑{d}[n, A085410(#)]-A326981(n)`
-/

namespace A326957.P11022045913925806014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085410 d - A326981 n

end

end A326957.P11022045913925806014

/-!
# A326958: Total sum of noncomposite parts in all partitions of n.

The programs for A326958, there is no canonical definition to state claims against.
-/

/-! ## A326958.P14260715190725703202

`A066186(n)-A326982(n)`
-/

namespace A326958.P14260715190725703202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A326982 n

end

end A326958.P14260715190725703202

/-! ## A326958.P2960603376900105409

`record[A182700(n)]-A326982(n)`
-/

namespace A326958.P2960603376900105409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A326982 n

end

end A326958.P2960603376900105409

/-! ## A326958.P9318051860109395597

`A220909(n)/2-A326982(n)`
-/

namespace A326958.P9318051860109395597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2 - (A326982 n : ℚ)

end

end A326958.P9318051860109395597

/-! ## A326958.P12876255241855748430

`n*A000041(n)-A326982(n)`
-/

namespace A326958.P12876255241855748430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n - A326982 n

end

end A326958.P12876255241855748430

/-! ## A326958.P4145388830181672448

`n*∑[A002865(n)]-A326982(n)`
-/

namespace A326958.P4145388830181672448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - A326982 n

end

end A326958.P4145388830181672448

/-!
# A326959: Number of T_0 set-systems covering a subset of {1..n} that are closed under intersection.

The programs for A326959, there is no canonical definition to state claims against.
-/

/-! ## A326959.P1985182826353388403

`A108711(2*floor(ϕ*2^n))`
-/

namespace A326959.P1985182826353388403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108711 (2 * ⌊Real.goldenRatio * (2 ^ n : ℝ)⌋).toNat

end

end A326959.P1985182826353388403

/-!
# A326960: Number of sets of subsets of {1..n} covering all n vertices whose dual is a (strict) antichain, also called covering T_1 sets of subsets.

The programs for A326960, there is no canonical definition to state claims against.
-/

/-! ## A326960.P2853835499058420188

`2*A326961(n)`
-/

namespace A326960.P2853835499058420188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326961 n

end

end A326960.P2853835499058420188

/-! ## A326960.P9378687194780325911

`A059052(n*floor(atan(n)))`
-/

namespace A326960.P9378687194780325911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059052 ((n : ℤ) * ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A326960.P9378687194780325911

/-! ## A326960.P6515111634362721758

`A059052(lcm(n, floor(atan(n))))`
-/

namespace A326960.P6515111634362721758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059052 (Int.lcm (n : ℤ) ⌊Real.arctan (n : ℝ)⌋)

end

end A326960.P6515111634362721758

/-! ## A326960.P11905964887731736567

`2*A059523(n-char[1])`
-/

namespace A326960.P11905964887731736567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059523 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A326960.P11905964887731736567

/-! ## A326960.P13303833887905790754

`A326961(n)+A059523(n-char[1])`
-/

namespace A326960.P13303833887905790754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326961 n + A059523 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A326960.P13303833887905790754

/-!
# A326961: Number of set-systems covering n vertices where every vertex is the unique common element of some subset of the edges, also called covering T_1 set-systems.

The programs for A326961, there is no canonical definition to state claims against.
-/

/-! ## A326961.P11260451987627646548

`A326960(n)/2`
-/

namespace A326961.P11260451987627646548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326960 n : ℚ) / 2

end

end A326961.P11260451987627646548

/-! ## A326961.P12144812617178577761

`A059523(n-char[1])`
-/

namespace A326961.P12144812617178577761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059523 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A326961.P12144812617178577761

/-! ## A326961.P7753088077780673556

`A059523(n)-A063524(n)`
-/

namespace A326961.P7753088077780673556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059523 n - A063524 n

end

end A326961.P7753088077780673556

/-! ## A326961.P4024624168997914087

`A059523(n)^A057979(A334284(n+1))`
-/

namespace A326961.P4024624168997914087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059523 n : ℚ) ^ (A057979 (A334284 (n + 1)).toNat : ℤ)

end

end A326961.P4024624168997914087

/-!
# A326963: Number of length n arrays with entries that cover an initial interval of positive integers counting chiral pairs as equivalent, i.e., the arrays are reversible.

The programs for A326963, there is no canonical definition to state claims against.
-/

/-! ## A326963.P14631982197736179679

`A032109(n)+A032109(A065033(n))-1`
-/

namespace A326963.P14631982197736179679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n + (A032109 (A065033 n).toNat - 1)

end

end A326963.P14631982197736179679

/-! ## A326963.P15912844956356480343

`A032109(n)+A032109(A110654(n))-1`
-/

namespace A326963.P15912844956356480343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032109 n + (A032109 (A110654 n).toNat - 1)

end

end A326963.P15912844956356480343

/-! ## A326963.P10322320091374842910

`(A000670(n)+A000670(A065033(n)))/2`
-/

namespace A326963.P10322320091374842910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + A000670 (A065033 n).toNat : ℚ) / 2

end

end A326963.P10322320091374842910

/-! ## A326963.P11887654438848041941

`(A000670(n)+A000670(A110654(n)))/2`
-/

namespace A326963.P11887654438848041941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n + A000670 (A110654 n).toNat : ℚ) / 2

end

end A326963.P11887654438848041941

/-!
# A326964: Number of connected set-systems covering a subset of {1..n}.

The programs for A326964, there is no canonical definition to state claims against.
-/

/-! ## A326964.P16110914325560254740

`A325105(A000225(A000120(A000217(A000225(n)))))`
-/

namespace A326964.P16110914325560254740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325105 (A000225 (A000120 (A000217 (A000225 n).toNat).toNat).toNat).toNat

end

end A326964.P16110914325560254740

/-!
# A326965: Number of set-systems on n vertices where every covered vertex is the unique common element of some subset of the edges.

The programs for A326965, there is no canonical definition to state claims against.
-/

/-! ## A326965.P3349211390548768068

`A326967(n)/2`
-/

namespace A326965.P3349211390548768068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326967 n : ℚ) / 2

end

end A326965.P3349211390548768068

/-!
# A326966: BII-numbers of set-systems whose dual is a weak antichain.

The programs for A326966, there is no canonical definition to state claims against.
-/

/-! ## A326966.P2300088512757664540

`∪[A326784(n+1), A326979(n+1)]`
-/

namespace A326966.P2300088512757664540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A326966.P2300088512757664540

/-!
# A326967: Number of sets of subsets of {1..n} where every covered vertex is the unique common element of some subset of the edges.

The programs for A326967, there is no canonical definition to state claims against.
-/

/-! ## A326967.P5107097688893249222

`2*A326965(n)`
-/

namespace A326967.P5107097688893249222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326965 n

end

end A326967.P5107097688893249222

/-!
# A326968: Number of set-systems on n vertices whose dual is a weak antichain.

The programs for A326968, there is no canonical definition to state claims against.
-/

/-! ## A326968.P2046248018621936012

`A326969(n)/2`
-/

namespace A326968.P2046248018621936012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326969 n : ℚ) / 2

end

end A326968.P2046248018621936012

/-!
# A326969: Number of sets of subsets of {1..n} whose dual is a weak antichain.

The programs for A326969, there is no canonical definition to state claims against.
-/

/-! ## A326969.P227209727454655987

`2*A326968(n)`
-/

namespace A326969.P227209727454655987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326968 n

end

end A326969.P227209727454655987

/-!
# A326971: Number of unlabeled set-systems on n vertices whose dual is a weak antichain.

The programs for A326971, there is no canonical definition to state claims against.
-/

/-! ## A326971.P3378158025121456443

`∑[A326973(n)]`
-/

namespace A326971.P3378158025121456443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326971.P3378158025121456443

/-!
# A326972: Number of unlabeled set-systems on n vertices whose dual is a (strict) antichain, also called unlabeled T_1 set-systems.

The programs for A326972, there is no canonical definition to state claims against.
-/

/-! ## A326972.P8194545567678481032

`∑[A326974(n)]`
-/

namespace A326972.P8194545567678481032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326972.P8194545567678481032

/-!
# A326973: Number of unlabeled set-systems covering n vertices whose dual is a weak antichain.

The programs for A326973, there is no canonical definition to state claims against.
-/

/-! ## A326973.P13144400810838268014

`xor(8, (4*(a(n-1)-a(n-2))+1)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A326973.P13144400810838268014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  Int.xor 8 ((4 * (a (n - 1) - a (n - 2)) + 1) * a (n - 1))

end

end A326973.P13144400810838268014

/-!
# A326974: Number of unlabeled set-systems covering n vertices where every vertex is the unique common element of some subset of the edges, also called unlabeled covering T_1 set-systems.

The programs for A326974, there is no canonical definition to state claims against.
-/

/-! ## A326974.P9850079517492975616

`A327011(n)/2`
-/

namespace A326974.P9850079517492975616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327011 n : ℚ) / 2

end

end A326974.P9850079517492975616

/-!
# A326975: Number of factorizations of n into factors > 1 whose dual is a weak antichain.

The programs for A326975, there is no canonical definition to state claims against.
-/

/-! ## A326975.P8803719730505851436

`A234022(A001055(n+1)^A339890(n+1))`
-/

namespace A326975.P8803719730505851436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (SequenceMachineLib.roundAway ((A001055 (n + 1) : ℚ) ^ (A339890 (n + 1) : ℤ))).toNat

end

end A326975.P8803719730505851436

/-! ## A326975.P6601720949319737455

`A234022(A252665(n+1)^A339890(n+1))`
-/

namespace A326975.P6601720949319737455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (SequenceMachineLib.roundAway ((A252665 (n + 1) : ℚ) ^ (A339890 (n + 1) : ℤ))).toNat

end

end A326975.P6601720949319737455

/-! ## A326975.P18156712390032593912

`A001055(A327526(n+1))%Δ[A339631(n)]`
-/

namespace A326975.P18156712390032593912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A327526 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A326975.P18156712390032593912

/-! ## A326975.P5587627812867543717

`A001055(A327526(n+1)%A145290(n+1))`
-/

namespace A326975.P5587627812867543717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Int.tmod (A327526 (n + 1)) (A145290 (n + 1))).toNat

end

end A326975.P5587627812867543717

/-! ## A326975.P7936605771246843604

`A006530(A317141(n+1)^A070939(n))`
-/

namespace A326975.P7936605771246843604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A317141 (n + 1) : ℚ) ^ (A070939 n : ℤ))).toNat

end

end A326975.P7936605771246843604

/-!
# A326976: Number of factorizations of n into factors > 1 such that every prime factor of n is the GCD of some subset of the factors.

The programs for A326976, there is no canonical definition to state claims against.
-/

/-! ## A326976.P17523576677044508621

`round(γ*A104404(n+1))`
-/

namespace A326976.P17523576677044508621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.eulerMascheroniConstant * (A104404 (n + 1) : ℝ))

end

end A326976.P17523576677044508621

/-! ## A326976.P16721945660483123956

`floor(log(4)^A212180(n+1))`
-/

namespace A326976.P16721945660483123956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (4 : ℝ) ^ (A212180 (n + 1) : ℤ)⌋

end

end A326976.P16721945660483123956

/-! ## A326976.P11106438063440362300

`A299201((n+1)/∏{p}[n+1, #])`
-/

namespace A326976.P11106438063440362300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A326976.P11106438063440362300

/-! ## A326976.P12453705302061456447

`A299201(gcd(n+1, ∑{p}[n+1, (n+1)/#]))`
-/

namespace A326976.P12453705302061456447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A326976.P12453705302061456447

/-! ## A326976.P850030879283536809

`A180101(A104404(n+1))`
-/

namespace A326976.P850030879283536809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A104404 (n + 1)).toNat

end

end A326976.P850030879283536809

/-! ## A326976.P4905538899312947329

`A299201(A003557(n+1))`
-/

namespace A326976.P4905538899312947329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (A003557 (n + 1)).toNat

end

end A326976.P4905538899312947329

/-! ## A326976.P7528013841247031732

`A316475(A212180(n+1))`
-/

namespace A326976.P7528013841247031732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316475 (A212180 (n + 1)).toNat

end

end A326976.P7528013841247031732

/-! ## A326976.P15764753049254432601

`A062298(A104404(n+1)+1)`
-/

namespace A326976.P15764753049254432601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A104404 (n + 1) + 1).toNat

end

end A326976.P15764753049254432601

/-! ## A326976.P7641867806362954257

`A000041(A212180(n+1)-1)`
-/

namespace A326976.P7641867806362954257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A212180 (n + 1) - 1).toNat

end

end A326976.P7641867806362954257

/-! ## A326976.P6508109438638977681

`A213598(A212180(n+1)-1)`
-/

namespace A326976.P6508109438638977681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (A212180 (n + 1) - 1).toNat

end

end A326976.P6508109438638977681

/-!
# A326977: Number of integer partitions of n such that the dual of the multiset partition obtained by factoring each part into prime numbers is a (strict) antichain, also called T_1 integer partitions.

The programs for A326977, there is no canonical definition to state claims against.
-/

/-! ## A326977.P10276268485998503868

`A023894(n)+A000701(A187829(n+1))`
-/

namespace A326977.P10276268485998503868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n + A000701 (A187829 (n + 1)).toNat

end

end A326977.P10276268485998503868

/-! ## A326977.P13109114285084156019

`A285799(n)+A000701(A187829(n+1))`
-/

namespace A326977.P13109114285084156019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n + A000701 (A187829 (n + 1)).toNat

end

end A326977.P13109114285084156019

/-! ## A326977.P5318083387321601897

`and(A003056(2^n), A219601(n))`
-/

namespace A326977.P5318083387321601897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 (2 ^ n)) (A219601 n)

end

end A326977.P5318083387321601897

/-! ## A326977.P2955214895299192861

`A023894(n)+A000701(A077168(n))`
-/

namespace A326977.P2955214895299192861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n + A000701 (A077168 n).toNat

end

end A326977.P2955214895299192861

/-! ## A326977.P922547258037191739

`A285799(n)+A000701(A077168(n))`
-/

namespace A326977.P922547258037191739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n + A000701 (A077168 n).toNat

end

end A326977.P922547258037191739

/-!
# A326978: Number of integer partitions of n such that the dual of the multiset partition obtained by factoring each part into prime numbers is a weak antichain.

The programs for A326978, there is no canonical definition to state claims against.
-/

/-! ## A326978.P9913025310991064234

`A261887(A060546(n))+A008636(n)`
-/

namespace A326978.P9913025310991064234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261887 (A060546 n).toNat + A008636 n

end

end A326978.P9913025310991064234

/-! ## A326978.P13909416160011041366

`A088481(A023893(n)-A132292(n+1))`
-/

namespace A326978.P13909416160011041366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088481 (A023893 n - A132292 (n + 1)).toNat

end

end A326978.P13909416160011041366

/-! ## A326978.P15390482405060350950

`A023028(n+8)-A079998(A283877(n))`
-/

namespace A326978.P15390482405060350950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023028 (n + 8) - A079998 (A283877 n).toNat

end

end A326978.P15390482405060350950

/-! ## A326978.P4230603835932738404

`A239235(∑[A103632(n)])+char[6]`
-/

namespace A326978.P4230603835932738404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326978.P4230603835932738404

/-! ## A326978.P16723778437783946181

`A239235(A214077(n+1))+char[6]`
-/

namespace A326978.P16723778437783946181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A214077 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A326978.P16723778437783946181

/-!
# A326979: BII-numbers of T_1 set-systems.

The programs for A326979, there is no canonical definition to state claims against.
-/

/-! ## A326979.P8403432688441010500

`record[A234612(n)%A114889(n+1)]`
-/

namespace A326979.P8403432688441010500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234612 n) (A114889 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326979.P8403432688441010500

/-! ## A326979.P15679082797510039430

`∩[A326947(n+1), A326966(n+1)]`
-/

namespace A326979.P15679082797510039430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326979.P15679082797510039430

/-! ## A326979.P5268820757180452249

`record[A234612(n)]/A304118(3*n+5)`
-/

namespace A326979.P5268820757180452249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A304118 (3 * n + 5) : ℚ)

end

end A326979.P5268820757180452249

/-! ## A326979.P11193927691222806565

`record[A003188(A193231(n))%A353440(n+1)]`
-/

namespace A326979.P11193927691222806565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A193231 n).toNat) (A353440 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326979.P11193927691222806565

/-!
# A326980: Indices of the compositions (ordered partitions) that are not in nonincreasing order in the list of compositions of j in colexicographic order, if 1 <= k <= 2^(j-1), j >= 1.

The programs for A326980, there is no canonical definition to state claims against.
-/

/-! ## A326980.P16480512366340829188

`comp[A194602(n)]+1`
-/

namespace A326980.P16480512366340829188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A326980.P16480512366340829188

/-! ## A326980.P6022680317069530255

`lt[1, A286552(n)]+1`
-/

namespace A326980.P6022680317069530255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326980.P6022680317069530255

/-! ## A326980.P6216383053143197683

`lt[1, A337377(n)]+1`
-/

namespace A326980.P6216383053143197683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326980.P6216383053143197683

/-! ## A326980.P17754419902377715708

`lt[1, A366877(n)]+1`
-/

namespace A326980.P17754419902377715708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A326980.P17754419902377715708

/-! ## A326980.P13981800573645540489

`lt[1, A286552(abs(1-n))]`
-/

namespace A326980.P13981800573645540489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326980.P13981800573645540489

/-! ## A326980.P960557726325894745

`lt[1, A337377(abs(1-n))]`
-/

namespace A326980.P960557726325894745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A326980.P960557726325894745

/-! ## A326980.P1223087340199656223

`eq[0, A326956(n+1)]+1`
-/

namespace A326980.P1223087340199656223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326956 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326980.P1223087340199656223

/-! ## A326980.P814146334552483863

`lt[A331856(2*n), n]+1`
-/

namespace A326980.P814146334552483863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A326980.P814146334552483863

/-! ## A326980.P2499083737854136849

`comp[A228354(n+1)-1]+1`
-/

namespace A326980.P2499083737854136849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A326980.P2499083737854136849

/-! ## A326980.P976831090758868638

`A020725(comp[A194602(n)])`
-/

namespace A326980.P976831090758868638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194602 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A326980.P976831090758868638

/-!
# A326981: Total number of composite parts in all partitions of n.

The programs for A326981, there is no canonical definition to state claims against.
-/

/-! ## A326981.P11831061170430961594

`A006128(n)-A326957(n)`
-/

namespace A326981.P11831061170430961594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - A326957 n

end

end A326981.P11831061170430961594

/-! ## A326981.P4063490931267572111

`A096541(n)-A037032(A028310(n))`
-/

namespace A326981.P4063490931267572111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n - A037032 (A028310 n).toNat

end

end A326981.P4063490931267572111

/-! ## A326981.P14050359039793228526

`A096541(n)%A037032(A233583(n+1))`
-/

namespace A326981.P14050359039793228526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096541 n) (A037032 (A233583 (n + 1)).toNat)

end

end A326981.P14050359039793228526

/-! ## A326981.P16683383892676726475

`A211978(n)/2-A326957(n)`
-/

namespace A326981.P16683383892676726475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2 - (A326957 n : ℚ)

end

end A326981.P16683383892676726475

/-! ## A326981.P11115772079372999926

`A278355(n)/4-A326957(n)`
-/

namespace A326981.P11115772079372999926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278355 n : ℚ) / 4 - (A326957 n : ℚ)

end

end A326981.P11115772079372999926

/-!
# A326982: Total sum of composite parts in all partitions of n.

The programs for A326982, there is no canonical definition to state claims against.
-/

/-! ## A326982.P16753312125252023152

`A066186(n)-A326958(n)`
-/

namespace A326982.P16753312125252023152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n - A326958 n

end

end A326982.P16753312125252023152

/-! ## A326982.P12888724814799126373

`A000041(n)+A194545(n)-A000070(n)`
-/

namespace A326982.P12888724814799126373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A194545 n - A000070 n)

end

end A326982.P12888724814799126373

/-! ## A326982.P7932593527531078858

`∑[A002865(n)]+A194545(n)-A000070(n)`
-/

namespace A326982.P7932593527531078858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A194545 n - A000070 n)

end

end A326982.P7932593527531078858

/-! ## A326982.P17298021160096126196

`A194552(A028310(n))-A073118(A028310(n))`
-/

namespace A326982.P17298021160096126196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (A028310 n).toNat - A073118 (A028310 n).toNat

end

end A326982.P17298021160096126196

/-! ## A326982.P14370382420673275360

`A035363(2*n)+A194545(n)-A000070(n)`
-/

namespace A326982.P14370382420673275360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) + (A194545 n - A000070 n)

end

end A326982.P14370382420673275360

/-! ## A326982.P5244333684393878018

`A035444(A008586(n))+A194545(n)-A000070(n)`
-/

namespace A326982.P5244333684393878018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008586 n).toNat + (A194545 n - A000070 n)

end

end A326982.P5244333684393878018

/-! ## A326982.P14118469609429393216

`A194545(n)-A161224(A000124(n))`
-/

namespace A326982.P14118469609429393216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194545 n - A161224 (A000124 n).toNat

end

end A326982.P14118469609429393216

/-! ## A326982.P1388192558692850569

`A061199(A000096(n))+A194545(n)-A000070(n)`
-/

namespace A326982.P1388192558692850569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000096 n).toNat + (A194545 n - A000070 n)

end

end A326982.P1388192558692850569

/-!
# A326983: Coefficients in asymptotic expansion of sequence A309618.

The programs for A326983, there is no canonical definition to state claims against.
-/

/-! ## A326983.P8203521360918504931

`A233583(5*a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A326983.P8203521360918504931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  A233583 (5 * a (n - 1) + 1).toNat

end

end A326983.P8203521360918504931

/-! ## A326983.P7279160652094810043

`A310405(A118759(a(n-1)))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A326983.P7279160652094810043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  A310405 (A118759 (a (n - 1)).toNat).toNat

end

end A326983.P7279160652094810043

/-! ## A326983.P10132729786748402765

`A233583(A008587(a(n-1))+1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A326983.P10132729786748402765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n a =>
  A233583 (A008587 (a (n - 1)).toNat + 1).toNat

end

end A326983.P10132729786748402765

/-!
# A326984: Coefficients in asymptotic expansion of sequence A309619.

The programs for A326984, there is no canonical definition to state claims against.
-/

/-! ## A326984.P11184322311261571723

`A008676(A110052(n)+3)`
-/

namespace A326984.P11184322311261571723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A110052 n + 3).toNat

end

end A326984.P11184322311261571723

/-! ## A326984.P12467828274249171003

`or(A008676(n), A008676(A110052(n)))`
-/

namespace A326984.P12467828274249171003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008676 n) (A008676 (A110052 n).toNat)

end

end A326984.P12467828274249171003

/-! ## A326984.P12103667109201700752

`A008618(xor(A006604(n), A035269(n+1)))`
-/

namespace A326984.P12103667109201700752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.xor (A006604 n) (A035269 (n + 1))).toNat

end

end A326984.P12103667109201700752

/-! ## A326984.P7134021690451801147

`A033182(A158038(3*n+5)+A151479(n))`
-/

namespace A326984.P7134021690451801147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A158038 (3 * n + 5) + A151479 n).toNat

end

end A326984.P7134021690451801147

/-!
# A326985: G.f.: B(x)*B(2*x^2)*B(3*x^3)*..., where B(x) is g.f. of A000312.

The programs for A326985, there is no canonical definition to state claims against.
-/

/-! ## A326985.P4775750179388071503

`A345012(A001168(n))+A245060(n)`
-/

namespace A326985.P4775750179388071503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345012 (A001168 n).toNat + A245060 n

end

end A326985.P4775750179388071503

/-! ## A326985.P2406333435942151157

`A287354(A052820(n)-A001654(n))`
-/

namespace A326985.P2406333435942151157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287354 (A052820 n - A001654 n).toNat

end

end A326985.P2406333435942151157

/-!
# A326986: G.f.: B(x)*B(x^2)*B(x^3)*..., where B(x) is g.f. of A000312.

The programs for A326986, there is no canonical definition to state claims against.
-/

/-! ## A326986.P4243727510730825949

`A023566(A354436(n)+1)+n^n`
-/

namespace A326986.P4243727510730825949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023566 (A354436 n + 1).toNat + (n ^ n : ℤ)

end

end A326986.P4243727510730825949

/-! ## A326986.P7582950625550816158

`A143539(A000813(n))+A000312(n)`
-/

namespace A326986.P7582950625550816158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (A000813 n).toNat + A000312 n

end

end A326986.P7582950625550816158

/-!
# A326987: Number of nonpowers of 2 dividing n.

The programs for A326987, the canonical program `A326987.P399885579470220940` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326987 has offset 1).

The definition of A326987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001227, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326987.P16845346977352145843

`A000005(n+1)-A001511(n+1)`
-/

namespace A326987.P16845346977352145843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001511 (n + 1)

end

end A326987.P16845346977352145843

namespace A326987

/-- `A000005(n+1)-A001511(n+1)` -/
def P16845346977352145843.Spec : Prop :=
  ∀ n, P16845346977352145843.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P399885579470220940

`(A001227(n+1)-1)*A001511(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326987

/-- `(A001227(n+1)-1)*A001511(n+1)` -/
def P399885579470220940.Spec : Prop :=
  ∀ n, P399885579470220940.a n = A326987 (n + 1)

theorem P399885579470220940.correct : P399885579470220940.Spec := by
  intro n
  simp only [A326987, Nat.add_sub_cancel]

end A326987

/-! ## A326987.P13630209152378373740

`∑{d}[n+1, A347523(#)]`
-/

namespace A326987.P13630209152378373740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347523 d

end

end A326987.P13630209152378373740

namespace A326987

/-- `∑{d}[n+1, A347523(#)]` -/
def P13630209152378373740.Spec : Prop :=
  ∀ n, P13630209152378373740.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P6372413284922243775

`∑{d}[n+1, A043545(#-1)]`
-/

namespace A326987.P6372413284922243775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A043545 (d - 1)

end

end A326987.P6372413284922243775

namespace A326987

/-- `∑{d}[n+1, A043545(#-1)]` -/
def P6372413284922243775.Spec : Prop :=
  ∀ n, P6372413284922243775.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P14739380367849529369

`A334954(n+1)-A085058(n)`
-/

namespace A326987.P14739380367849529369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A085058 n

end

end A326987.P14739380367849529369

namespace A326987

/-- `A334954(n+1)-A085058(n)` -/
def P14739380367849529369.Spec : Prop :=
  ∀ n, P14739380367849529369.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P13075267719818359125

`A000005(n+1)-Δ[A005187(n)]`
-/

namespace A326987.P13075267719818359125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (f1 (n + 1) - f1 n)

end

end A326987.P13075267719818359125

namespace A326987

/-- `A000005(n+1)-Δ[A005187(n)]` -/
def P13075267719818359125.Spec : Prop :=
  ∀ n, P13075267719818359125.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P7309794106807138715

`A032741(n+1)-A007814(n+1)`
-/

namespace A326987.P7309794106807138715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A007814 (n + 1)

end

end A326987.P7309794106807138715

namespace A326987

/-- `A032741(n+1)-A007814(n+1)` -/
def P7309794106807138715.Spec : Prop :=
  ∀ n, P7309794106807138715.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P9764615783797098123

`A000005(n+1)+1-A085058(n)`
-/

namespace A326987.P9764615783797098123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A085058 n)

end

end A326987.P9764615783797098123

namespace A326987

/-- `A000005(n+1)+1-A085058(n)` -/
def P9764615783797098123.Spec : Prop :=
  ∀ n, P9764615783797098123.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P10883420073933109646

`A140482(n+1)-A292608(n+1)`
-/

namespace A326987.P10883420073933109646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) - A292608 (n + 1)

end

end A326987.P10883420073933109646

namespace A326987

/-- `A140482(n+1)-A292608(n+1)` -/
def P10883420073933109646.Spec : Prop :=
  ∀ n, P10883420073933109646.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P10244296122100238797

`A001511(n+1)*A069283(n+1)`
-/

namespace A326987.P10244296122100238797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A069283 (n + 1)

end

end A326987.P10244296122100238797

namespace A326987

/-- `A001511(n+1)*A069283(n+1)` -/
def P10244296122100238797.Spec : Prop :=
  ∀ n, P10244296122100238797.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P16486313366515176785

`A000005(n+1)-(A007814(n+1)+1)`
-/

namespace A326987.P16486313366515176785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A007814 (n + 1) + 1)

end

end A326987.P16486313366515176785

namespace A326987

/-- `A000005(n+1)-(A007814(n+1)+1)` -/
def P16486313366515176785.Spec : Prop :=
  ∀ n, P16486313366515176785.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P8589289089661260482

`A320111(2*(n+1))-A001511(n+1)`
-/

namespace A326987.P8589289089661260482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) - A001511 (n + 1)

end

end A326987.P8589289089661260482

namespace A326987

/-- `A320111(2*(n+1))-A001511(n+1)` -/
def P8589289089661260482.Spec : Prop :=
  ∀ n, P8589289089661260482.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P11260903596070554849

`∑{d}[n+1, A130054(#)*A176095((n+1)/#)]`
-/

namespace A326987.P11260903596070554849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A176095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326987.P11260903596070554849

namespace A326987

/-- `∑{d}[n+1, A130054(#)*A176095((n+1)/#)]` -/
def P11260903596070554849.Spec : Prop :=
  ∀ n, P11260903596070554849.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P2471192670566205286

`A000005(n+1)-A000005(A006519(n+1))`
-/

namespace A326987.P2471192670566205286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A006519 (n + 1)).toNat

end

end A326987.P2471192670566205286

namespace A326987

/-- `A000005(n+1)-A000005(A006519(n+1))` -/
def P2471192670566205286.Spec : Prop :=
  ∀ n, P2471192670566205286.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P17636349950076747412

`A032741(n+1)-A032741(A006519(n+1))`
-/

namespace A326987.P17636349950076747412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A032741 (A006519 (n + 1)).toNat

end

end A326987.P17636349950076747412

namespace A326987

/-- `A032741(n+1)-A032741(A006519(n+1))` -/
def P17636349950076747412.Spec : Prop :=
  ∀ n, P17636349950076747412.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P3960091038501295817

`A000005(n+1)+A005187(n)-A005187(n+1)`
-/

namespace A326987.P3960091038501295817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A005187 n - A005187 (n + 1))

end

end A326987.P3960091038501295817

namespace A326987

/-- `A000005(n+1)+A005187(n)-A005187(n+1)` -/
def P3960091038501295817.Spec : Prop :=
  ∀ n, P3960091038501295817.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P17930068049455696220

`A000005(n+1)-A000005(n+1)/A001227(n+1)`
-/

namespace A326987.P17930068049455696220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (A000005 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A326987.P17930068049455696220

namespace A326987

/-- `A000005(n+1)-A000005(n+1)/A001227(n+1)` -/
def P17930068049455696220.Spec : Prop :=
  ∀ n, P17930068049455696220.a n = (A326987 (n + 1) : ℚ)

end A326987

/-! ## A326987.P12581251043197171123

`Δ[A327326(n)]`
-/

namespace A326987.P12581251043197171123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326987.P12581251043197171123

namespace A326987

/-- `Δ[A327326(n)]` -/
def P12581251043197171123.Spec : Prop :=
  ∀ n, P12581251043197171123.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P1228902378216553606

`A327326(n+1)-A327326(n)`
-/

namespace A326987.P1228902378216553606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (n + 1) - A327326 n

end

end A326987.P1228902378216553606

namespace A326987

/-- `A327326(n+1)-A327326(n)` -/
def P1228902378216553606.Spec : Prop :=
  ∀ n, P1228902378216553606.a n = A326987 (n + 1)

end A326987

/-! ## A326987.P7388195119327357509

`A076984(n+1)-A204988(n+1)`
-/

namespace A326987.P7388195119327357509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) - A204988 (n + 1)

end

end A326987.P7388195119327357509

namespace A326987

/-- `A076984(n+1)-A204988(n+1)` -/
def P7388195119327357509.Spec : Prop :=
  ∀ n, P7388195119327357509.a n = A326987 (n + 1)

end A326987

/-!
# A326988: Sum of nonpowers of 2 dividing n.

The programs for A326988, the canonical program `A326988.P10350462572344602994` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326988 has offset 1).

The definition of A326988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326988.P10350462572344602994

`A000203(n+1)-A038712(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A326988

/-- `A000203(n+1)-A038712(n+1)` -/
def P10350462572344602994.Spec : Prop :=
  ∀ n, P10350462572344602994.a n = A326988 (n + 1)

theorem P10350462572344602994.correct : P10350462572344602994.Spec := by
  intro n
  simp only [A326988, Nat.add_sub_cancel]

end A326988

/-! ## A326988.P8157669616583988537

`A326990(n+1)*A038712(n+1)`
-/

namespace A326988.P8157669616583988537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (n + 1) * A038712 (n + 1)

end

end A326988.P8157669616583988537

namespace A326988

/-- `A326990(n+1)*A038712(n+1)` -/
def P8157669616583988537.Spec : Prop :=
  ∀ n, P8157669616583988537.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P10958554880801084827

`(A000593(n+1)-1)*A038712(n+1)`
-/

namespace A326988.P10958554880801084827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) - 1) * A038712 (n + 1)

end

end A326988.P10958554880801084827

namespace A326988

/-- `(A000593(n+1)-1)*A038712(n+1)` -/
def P10958554880801084827.Spec : Prop :=
  ∀ n, P10958554880801084827.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P5922569673991951616

`∑{d}[n+1, #]-xor(n, n+1)`
-/

namespace A326988.P5922569673991951616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (Nat.xor n (n + 1) : ℤ)

end

end A326988.P5922569673991951616

namespace A326988

/-- `∑{d}[n+1, #]-xor(n, n+1)` -/
def P5922569673991951616.Spec : Prop :=
  ∀ n, P5922569673991951616.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P11800445302822713990

`∑{d}[n+1, #*A347523(#)]`
-/

namespace A326988.P11800445302822713990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A347523 d

end

end A326988.P11800445302822713990

namespace A326988

/-- `∑{d}[n+1, #*A347523(#)]` -/
def P11800445302822713990.Spec : Prop :=
  ∀ n, P11800445302822713990.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P874018987482106688

`∑{d}[n+1, #*A043545(#-1)]`
-/

namespace A326988.P874018987482106688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A043545 (d - 1)

end

end A326988.P874018987482106688

namespace A326988

/-- `∑{d}[n+1, #*A043545(#-1)]` -/
def P874018987482106688.Spec : Prop :=
  ∀ n, P874018987482106688.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P8760893796104148787

`A245092(2*n+1)-xor(n, n+1)`
-/

namespace A326988.P8760893796104148787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (Nat.xor n (n + 1) : ℤ)

end

end A326988.P8760893796104148787

namespace A326988

/-- `A245092(2*n+1)-xor(n, n+1)` -/
def P8760893796104148787.Spec : Prop :=
  ∀ n, P8760893796104148787.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P13578439448143220475

`∑{d}[n+1, #]-A006068(and(n+1, -(n+1)))`
-/

namespace A326988.P13578439448143220475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A006068 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A326988.P13578439448143220475

namespace A326988

/-- `∑{d}[n+1, #]-A006068(and(n+1, -(n+1)))` -/
def P13578439448143220475.Spec : Prop :=
  ∀ n, P13578439448143220475.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P1406804127512233968

`A155085(n+1)-A100710(n+1)`
-/

namespace A326988.P1406804127512233968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A100710 (n + 1)

end

end A326988.P1406804127512233968

namespace A326988

/-- `A155085(n+1)-A100710(n+1)` -/
def P1406804127512233968.Spec : Prop :=
  ∀ n, P1406804127512233968.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P6864795946406564353

`A088580(n+1)-A171977(n+1)`
-/

namespace A326988.P6864795946406564353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A171977 (n + 1)

end

end A326988.P6864795946406564353

namespace A326988

/-- `A088580(n+1)-A171977(n+1)` -/
def P6864795946406564353.Spec : Prop :=
  ∀ n, P6864795946406564353.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P11088278694598979310

`A135561(n+1)*A326990(n+1)`
-/

namespace A326988.P11088278694598979310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n + 1) * A326990 (n + 1)

end

end A326988.P11088278694598979310

namespace A326988

/-- `A135561(n+1)*A326990(n+1)` -/
def P11088278694598979310.Spec : Prop :=
  ∀ n, P11088278694598979310.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P13490844544040375558

`A000203(n+1)+1-sqrt(A059152(n))`
-/

namespace A326988.P13490844544040375558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℝ) + (1 - Real.sqrt (A059152 n : ℝ))

end

end A326988.P13490844544040375558

namespace A326988

/-- `A000203(n+1)+1-sqrt(A059152(n))` -/
def P13490844544040375558.Spec : Prop :=
  ∀ n, P13490844544040375558.a n = (A326988 (n + 1) : ℝ)

end A326988

/-! ## A326988.P3833064666540215259

`A000203(n+1)+1-A171977(n+1)`
-/

namespace A326988.P3833064666540215259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A171977 (n + 1))

end

end A326988.P3833064666540215259

namespace A326988

/-- `A000203(n+1)+1-A171977(n+1)` -/
def P3833064666540215259.Spec : Prop :=
  ∀ n, P3833064666540215259.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P7131272456290690327

`A000203(n+1)-∑{d}[A006519(n+1), #]`
-/

namespace A326988.P7131272456290690327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A326988.P7131272456290690327

namespace A326988

/-- `A000203(n+1)-∑{d}[A006519(n+1), #]` -/
def P7131272456290690327.Spec : Prop :=
  ∀ n, P7131272456290690327.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P433853181496021549

`A000203(n+1)-A000203(n+1-and(n, n+1))`
-/

namespace A326988.P433853181496021549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (n + 1 - Nat.land n (n + 1))

end

end A326988.P433853181496021549

namespace A326988

/-- `A000203(n+1)-A000203(n+1-and(n, n+1))` -/
def P433853181496021549.Spec : Prop :=
  ∀ n, P433853181496021549.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P17534784234272234363

`∑{d}[n+1, A099894(#-1)*A326990((n+1)/#)]`
-/

namespace A326988.P17534784234272234363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A326990 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326988.P17534784234272234363

namespace A326988

/-- `∑{d}[n+1, A099894(#-1)*A326990((n+1)/#)]` -/
def P17534784234272234363.Spec : Prop :=
  ∀ n, P17534784234272234363.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P96257401233400951

`A000203(n+1)-A000203(A006519(n+1))`
-/

namespace A326988.P96257401233400951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A006519 (n + 1)).toNat

end

end A326988.P96257401233400951

namespace A326988

/-- `A000203(n+1)-A000203(A006519(n+1))` -/
def P96257401233400951.Spec : Prop :=
  ∀ n, P96257401233400951.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P4601755360697787224

`A000203(n+1)-A000203(A135481(n)+1)`
-/

namespace A326988.P4601755360697787224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A135481 n + 1).toNat

end

end A326988.P4601755360697787224

namespace A326988

/-- `A000203(n+1)-A000203(A135481(n)+1)` -/
def P4601755360697787224.Spec : Prop :=
  ∀ n, P4601755360697787224.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P8151758778717609338

`A000203(n+1)+1-A000010(A059159(n+1))`
-/

namespace A326988.P8151758778717609338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A000010 (A059159 (n + 1)).toNat)

end

end A326988.P8151758778717609338

namespace A326988

/-- `A000203(n+1)+1-A000010(A059159(n+1))` -/
def P8151758778717609338.Spec : Prop :=
  ∀ n, P8151758778717609338.a n = A326988 (n + 1)

end A326988

/-! ## A326988.P8478596301764638511

`A000203(n+1)-A000203(n+1)/A000593(n+1)`
-/

namespace A326988.P8478596301764638511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ)

end

end A326988.P8478596301764638511

namespace A326988

/-- `A000203(n+1)-A000203(n+1)/A000593(n+1)` -/
def P8478596301764638511.Spec : Prop :=
  ∀ n, P8478596301764638511.a n = (A326988 (n + 1) : ℚ)

end A326988

/-!
# A326989: Triangle read by rows in which row n lists the nonpowers of 2 dividing n, or 0 if n is a power of 2.

The programs for A326989, there is no canonical definition to state claims against.
-/

/-! ## A326989.P9982973233921756871

`A002262(A208028(3*n+4))%11`
-/

namespace A326989.P9982973233921756871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 (A208028 (3 * n + 4)).toNat) 11

end

end A326989.P9982973233921756871

/-!
# A326990: Sum of odd divisors of n that are greater than 1.

The programs for A326990, the canonical program `A326990.P6670757131686068120` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326990 has offset 1).

The definition of A326990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326990.P6670757131686068120

`A000593(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326990

/-- `A000593(n+1)-1` -/
def P6670757131686068120.Spec : Prop :=
  ∀ n, P6670757131686068120.a n = A326990 (n + 1)

theorem P6670757131686068120.correct : P6670757131686068120.Spec := by
  intro n
  simp only [A326990, Nat.add_sub_cancel]

end A326990

/-! ## A326990.P5652887133142862368

`A326988(n+1)/A038712(n+1)`
-/

namespace A326990.P5652887133142862368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326988 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A326990.P5652887133142862368

namespace A326990

/-- `A326988(n+1)/A038712(n+1)` -/
def P5652887133142862368.Spec : Prop :=
  ∀ n, P5652887133142862368.a n = (A326990 (n + 1) : ℚ)

end A326990

/-! ## A326990.P6962541557120391627

`(A000203(n+1)-A038712(n+1))/A038712(n+1)`
-/

namespace A326990.P6962541557120391627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A038712 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A326990.P6962541557120391627

namespace A326990

/-- `(A000203(n+1)-A038712(n+1))/A038712(n+1)` -/
def P6962541557120391627.Spec : Prop :=
  ∀ n, P6962541557120391627.a n = (A326990 (n + 1) : ℚ)

end A326990

/-! ## A326990.P7622845149376791034

`∑{d}[n+1, #*#%2]-1`
-/

namespace A326990.P7622845149376791034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * (d % 2) : ℕ) : ℤ) - 1

end

end A326990.P7622845149376791034

namespace A326990

/-- `∑{d}[n+1, #*#%2]-1` -/
def P7622845149376791034.Spec : Prop :=
  ∀ n, P7622845149376791034.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P1817150725979441020

`∑{d}[n+1, lcm(2, #)-#]-1`
-/

namespace A326990.P1817150725979441020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ)) - 1

end

end A326990.P1817150725979441020

namespace A326990

/-- `∑{d}[n+1, lcm(2, #)-#]-1` -/
def P1817150725979441020.Spec : Prop :=
  ∀ n, P1817150725979441020.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P421425523061034678

`∑{d}[n+1, #*and(1, #)]-1`
-/

namespace A326990.P421425523061034678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * Nat.land 1 d : ℕ) : ℤ) - 1

end

end A326990.P421425523061034678

namespace A326990

/-- `∑{d}[n+1, #*and(1, #)]-1` -/
def P421425523061034678.Spec : Prop :=
  ∀ n, P421425523061034678.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P1899934301201229834

`∑{d}[n+1, #]/xor(n, n+1)-1`
-/

namespace A326990.P1899934301201229834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) - 1

end

end A326990.P1899934301201229834

namespace A326990

/-- `∑{d}[n+1, #]/xor(n, n+1)-1` -/
def P1899934301201229834.Spec : Prop :=
  ∀ n, P1899934301201229834.a n = (A326990 (n + 1) : ℚ)

end A326990

/-! ## A326990.P7248562534675808818

`abs(A115607(n+1))-1`
-/

namespace A326990.P7248562534675808818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115607 (n + 1)| - 1

end

end A326990.P7248562534675808818

namespace A326990

/-- `abs(A115607(n+1))-1` -/
def P7248562534675808818.Spec : Prop :=
  ∀ n, P7248562534675808818.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P9033186904399137974

`∑{d}[A000265(n+1), #]-1`
-/

namespace A326990.P9033186904399137974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A326990.P9033186904399137974

namespace A326990

/-- `∑{d}[A000265(n+1), #]-1` -/
def P9033186904399137974.Spec : Prop :=
  ∀ n, P9033186904399137974.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P5764761089297569532

`abs(A115607(2*(n+1))+1)`
-/

namespace A326990.P5764761089297569532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115607 (2 * (n + 1)) + 1|

end

end A326990.P5764761089297569532

namespace A326990

/-- `abs(A115607(2*(n+1))+1)` -/
def P5764761089297569532.Spec : Prop :=
  ∀ n, P5764761089297569532.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P13575461674865719624

`A326125(n+1)/(n+1)-1`
-/

namespace A326990.P13575461674865719624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A326990.P13575461674865719624

namespace A326990

/-- `A326125(n+1)/(n+1)-1` -/
def P13575461674865719624.Spec : Prop :=
  ∀ n, P13575461674865719624.a n = (A326990 (n + 1) : ℚ)

end A326990

/-! ## A326990.P8024637874924394057

`A000203(n+1)/xor(n, n+1)-1`
-/

namespace A326990.P8024637874924394057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ) - 1

end

end A326990.P8024637874924394057

namespace A326990

/-- `A000203(n+1)/xor(n, n+1)-1` -/
def P8024637874924394057.Spec : Prop :=
  ∀ n, P8024637874924394057.a n = (A326990 (n + 1) : ℚ)

end A326990

/-! ## A326990.P2163632340963162289

`A000203((n+1)/and(n+1, -(n+1)))-1`
-/

namespace A326990.P2163632340963162289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - 1

end

end A326990.P2163632340963162289

namespace A326990

/-- `A000203((n+1)/and(n+1, -(n+1)))-1` -/
def P2163632340963162289.Spec : Prop :=
  ∀ n, P2163632340963162289.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P11459623005412129276

`A039653(A000265(n+1))`
-/

namespace A326990.P11459623005412129276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A000265 (n + 1)).toNat

end

end A326990.P11459623005412129276

namespace A326990

/-- `A039653(A000265(n+1))` -/
def P11459623005412129276.Spec : Prop :=
  ∀ n, P11459623005412129276.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P3228659368271520939

`A008438(A025480(n))-1`
-/

namespace A326990.P3228659368271520939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (A025480 n).toNat - 1

end

end A326990.P3228659368271520939

namespace A326990

/-- `A008438(A025480(n))-1` -/
def P3228659368271520939.Spec : Prop :=
  ∀ n, P3228659368271520939.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P17134888265456160190

`A003973(A064989(n+1))-1`
-/

namespace A326990.P17134888265456160190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A064989 (n + 1)).toNat - 1

end

end A326990.P17134888265456160190

namespace A326990

/-- `A003973(A064989(n+1))-1` -/
def P17134888265456160190.Spec : Prop :=
  ∀ n, P17134888265456160190.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P7884123124454418745

`A000203(A153733(n)+1)-1`
-/

namespace A326990.P7884123124454418745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A153733 n + 1).toNat - 1

end

end A326990.P7884123124454418745

namespace A326990

/-- `A000203(A153733(n)+1)-1` -/
def P7884123124454418745.Spec : Prop :=
  ∀ n, P7884123124454418745.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P6339515048065702675

`A354089(A348747(n+1))-1`
-/

namespace A326990.P6339515048065702675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354089 (A348747 (n + 1)).toNat - 1

end

end A326990.P6339515048065702675

namespace A326990

/-- `A354089(A348747(n+1))-1` -/
def P6339515048065702675.Spec : Prop :=
  ∀ n, P6339515048065702675.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P15652411429283133368

`A354093(A354092(n+1))-1`
-/

namespace A326990.P15652411429283133368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354093 (A354092 (n + 1)).toNat - 1

end

end A326990.P15652411429283133368

namespace A326990

/-- `A354093(A354092(n+1))-1` -/
def P15652411429283133368.Spec : Prop :=
  ∀ n, P15652411429283133368.a n = A326990 (n + 1)

end A326990

/-! ## A326990.P3868030935229307738

`A389073(A332819(n+1))-1`
-/

namespace A326990.P3868030935229307738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389073 (A332819 (n + 1)).toNat - 1

end

end A326990.P3868030935229307738

namespace A326990

/-- `A389073(A332819(n+1))-1` -/
def P3868030935229307738.Spec : Prop :=
  ∀ n, P3868030935229307738.a n = A326990 (n + 1)

end A326990

/-!
# A326991: First quadrisection of A133058.

The programs for A326991, there is no canonical definition to state claims against.
-/

/-! ## A326991.P15789304460691608622

`A133058(4*n)`
-/

namespace A326991.P15789304460691608622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133058 (4 * n)

end

end A326991.P15789304460691608622

/-!
# A326992: Second quadrisection of A133058.

The programs for A326992, there is no canonical definition to state claims against.
-/

/-! ## A326992.P9481141767643449838

`A133058(4*n+1)`
-/

namespace A326992.P9481141767643449838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133058 (4 * n + 1)

end

end A326992.P9481141767643449838

/-!
# A326993: Third quadrisection of A133058.

The programs for A326993, there is no canonical definition to state claims against.
-/

/-! ## A326993.P11583691606285096351

`A133058(4*n+2)`
-/

namespace A326993.P11583691606285096351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133058 (4 * n + 2)

end

end A326993.P11583691606285096351

/-!
# A326994: Fourth quadrisection of A133058.

The programs for A326994, there is no canonical definition to state claims against.
-/

/-! ## A326994.P10335553774088326155

`A133058(4*n+3)`
-/

namespace A326994.P10335553774088326155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133058 (4 * n + 3)

end

end A326994.P10335553774088326155

/-!
# A326995: a(n) = A002105(n+1) - A005046(n), reduced tangent numbers minus the number of partitions of a 2*n-set into even blocks.

The programs for A326995, there is no canonical definition to state claims against.
-/

/-! ## A326995.P11858000259649408699

`A002105(n+1)-A005046(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326995.P11858000259649408699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) - A005046 n

end

end A326995.P11858000259649408699

/-! ## A326995.P8786941039621096810

`A002105(n+1)-A081557(abs(1-2*n))`
-/

namespace A326995.P8786941039621096810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) - A081557 |1 - (2 * n : ℤ)|.toNat

end

end A326995.P8786941039621096810

/-! ## A326995.P3406484717063006890

`A210108(A000217(n))-A005046(n)`
-/

namespace A326995.P3406484717063006890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210108 (A000217 n).toNat - A005046 n

end

end A326995.P3406484717063006890

/-! ## A326995.P16926627364070352025

`A210108(A179865(n+1))-A005046(n)`
-/

namespace A326995.P16926627364070352025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210108 (A179865 (n + 1)).toNat - A005046 n

end

end A326995.P16926627364070352025

/-! ## A326995.P3553745818270269455

`A002105(n+1)-A260876(A141214(n))`
-/

namespace A326995.P3553745818270269455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002105 (n + 1) - A260876 (A141214 n).toNat

end

end A326995.P3553745818270269455

/-!
# A326996: Main diagonal of A260876.

The programs for A326996, there is no canonical definition to state claims against.
-/

/-! ## A326996.P5968642999442125910

`A260876(∑[4*n])`
-/

namespace A326996.P5968642999442125910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326996.P5968642999442125910

/-!
# A326998: a(n) = 1 + binomial(3*n-1, n) + binomial(3*n-1, n-1)*(binomial(2*n-1, n) + 1).

The programs for A326998, there is no canonical definition to state claims against.
-/

/-! ## A326998.P2728760192420956636

`floor(A309725(n)+acot(n))`
-/

namespace A326998.P2728760192420956636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A309725 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A326998.P2728760192420956636

/-! ## A326998.P10720545724111129075

`A309725(n)+char[A110722(n)]`
-/

namespace A326998.P10720545724111129075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110722 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309725 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326998.P10720545724111129075

/-! ## A326998.P17452046660765932606

`A309725(n)+A286100(A087443(n))`
-/

namespace A326998.P17452046660765932606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309725 n + A286100 (A087443 n).toNat

end

end A326998.P17452046660765932606

/-! ## A326998.P2746833609511743240

`A309725(n)+A286100(A098355(n))`
-/

namespace A326998.P2746833609511743240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309725 n + A286100 (A098355 n).toNat

end

end A326998.P2746833609511743240

/-! ## A326998.P1961692058384925427

`A309725(n)+A286100(A309732(n+1))`
-/

namespace A326998.P1961692058384925427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309725 n + A286100 (A309732 (n + 1)).toNat

end

end A326998.P1961692058384925427

/-!
# A326999: a(n) = A327000(4, n) + A291975(n).

The programs for A326999, there is no canonical definition to state claims against.
-/

/-! ## A326999.P16910340247854848800

`A309522(A052905(n+2))`
-/

namespace A326999.P16910340247854848800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309522 (A052905 (n + 2)).toNat

end

end A326999.P16910340247854848800

/-! ## A326999.P6380427371028344302

`A309522(A056115(n)+10)`
-/

namespace A326999.P6380427371028344302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309522 (A056115 n + 10).toNat

end

end A326999.P6380427371028344302

