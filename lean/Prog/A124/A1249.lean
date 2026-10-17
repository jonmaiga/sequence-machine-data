import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A124900: Largest order of any solvable transitive Galois group for an irreducible polynomial of degree n.

The programs for A124900, there is no canonical definition to state claims against.
-/

/-! ## A124900.P15773470473421585829

`(n+1)!/A124902(n+1)`
-/

namespace A124900.P15773470473421585829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A124902 (n + 1) : ℚ)

end

end A124900.P15773470473421585829

/-! ## A124900.P14991979405240779581

`record[A084938(n)]/A124902(n+1)`
-/

namespace A124900.P14991979405240779581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A124902 (n + 1) : ℚ)

end

end A124900.P14991979405240779581

/-! ## A124900.P14229802606707374200

`A000142(n+1)/A124902(n+1)`
-/

namespace A124900.P14229802606707374200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A124902 (n + 1) : ℚ)

end

end A124900.P14229802606707374200

/-! ## A124900.P11397521496466661578

`∏[A000027(n+1)]/A124902(n+1)`
-/

namespace A124900.P11397521496466661578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A124902 (n + 1) : ℚ)

end

end A124900.P11397521496466661578

/-! ## A124900.P10508099474757521273

`∏[A008619(2*n)]/A124902(n+1)`
-/

namespace A124900.P10508099474757521273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A124902 (n + 1) : ℚ)

end

end A124900.P10508099474757521273

/-!
# A124901: Smallest order of any nonsolvable transitive Galois group for a polynomial of degree n.

The programs for A124901, there is no canonical definition to state claims against.
-/

/-! ## A124901.P7389168196744267666

`A001034(gcd(A056094(n+1), A139439(2*n+5)))`
-/

namespace A124901.P7389168196744267666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (Int.gcd (A056094 (n + 1)) (A139439 (2 * n + 5)))

end

end A124901.P7389168196744267666

/-!
# A124902: n!/A124900(n).

The programs for A124902, there is no canonical definition to state claims against.
-/

/-! ## A124902.P5062123973040834505

`(n+1)!/A124900(n+1)`
-/

namespace A124902.P5062123973040834505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A124900 (n + 1) : ℚ)

end

end A124902.P5062123973040834505

/-! ## A124902.P3160412521989215095

`A000142(n+1)/A124900(n+1)`
-/

namespace A124902.P3160412521989215095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A124900 (n + 1) : ℚ)

end

end A124902.P3160412521989215095

/-! ## A124902.P5183968324839158411

`∑[A094258(n+1)]/A124900(n+1)`
-/

namespace A124902.P5183968324839158411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094258 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A124900 (n + 1) : ℚ)

end

end A124902.P5183968324839158411

/-! ## A124902.P17876102182949943528

`∏[A000027(n+1)]/A124900(n+1)`
-/

namespace A124902.P17876102182949943528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A124900 (n + 1) : ℚ)

end

end A124902.P17876102182949943528

/-! ## A124902.P15541821603848573393

`∏[A008619(2*n)]/A124900(n+1)`
-/

namespace A124902.P15541821603848573393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A124900 (n + 1) : ℚ)

end

end A124902.P15541821603848573393

/-!
# A124903: a(n) = n!/A124901(n).

The programs for A124903, there is no canonical definition to state claims against.
-/

/-! ## A124903.P15211155656541361298

`A278535(A022641(n))`
-/

namespace A124903.P15211155656541361298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278535 (A022641 n).toNat

end

end A124903.P15211155656541361298

/-!
# A124908: a(n) = least integer j >= 0 such that n = floor((2^j)/(5^k)) for some integer k >= 0.

The programs for A124908, there is no canonical definition to state claims against.
-/

/-! ## A124908.P506520632621648433

`A018856(n+1)-A124916(n+1)`
-/

namespace A124908.P506520632621648433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (n + 1) - A124916 (n + 1)

end

end A124908.P506520632621648433

/-! ## A124908.P12325553110400738782

`log2(A018802(n+1))-A124916(n+1)`
-/

namespace A124908.P12325553110400738782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A018802 (n + 1) : ℝ) - (A124916 (n + 1) : ℝ)

end

end A124908.P12325553110400738782

/-! ## A124908.P15544513163132002645

`A180726(n+1)+A000007(A000016(n))-A124916(n+1)`
-/

namespace A124908.P15544513163132002645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (n + 1) + A000007 (A000016 n).toNat - A124916 (n + 1)

end

end A124908.P15544513163132002645

/-! ## A124908.P12310680967275523057

`A180726(n+1)-(A124916(n+1)+A000007(A353985(n+1)))`
-/

namespace A124908.P12310680967275523057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (n + 1) - (A124916 (n + 1) + A000007 (A353985 (n + 1)).toNat)

end

end A124908.P12310680967275523057

/-!
# A124911: a(n) = least integer j>=0 such that n = floor((5^j)/(2^k)) for some integer k>=0.

The programs for A124911, there is no canonical definition to state claims against.
-/

/-! ## A124911.P16742795214888686488

`A018862(n+1)-A124919(n+1)`
-/

namespace A124911.P16742795214888686488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (n + 1) - A124919 (n + 1)

end

end A124911.P16742795214888686488

/-! ## A124911.P6896342577227239565

`A018862(C(n+1, n))+A001489(A124919(n+1))`
-/

namespace A124911.P6896342577227239565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (Nat.choose (n + 1) n) + A001489 (A124919 (n + 1)).toNat

end

end A124911.P6896342577227239565

/-! ## A124911.P4723924949168016376

`A018862(A000027(n+1))+A001489(A124919(n+1))`
-/

namespace A124911.P4723924949168016376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (A000027 (n + 1)).toNat + A001489 (A124919 (n + 1)).toNat

end

end A124911.P4723924949168016376

/-! ## A124911.P11685182121873846863

`A018862(A032742(2*(n+1)))+A001489(A124919(n+1))`
-/

namespace A124911.P11685182121873846863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (A032742 (2 * (n + 1))).toNat + A001489 (A124919 (n + 1)).toNat

end

end A124911.P11685182121873846863

/-!
# A124912: a(n) = least integer k>=0 such that n=Floor[(3^j)/(2^k)] for some integer j>=0.

The programs for A124912, there is no canonical definition to state claims against.
-/

/-! ## A124912.P14251608195989987571

`A125156(A125160(n+1))`
-/

namespace A124912.P14251608195989987571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125156 (A125160 (n + 1)).toNat

end

end A124912.P14251608195989987571

/-! ## A124912.P12136115815620220527

`A125157(A125161(n+1))%A125160(n+1)²`
-/

namespace A124912.P12136115815620220527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125157 (A125161 (n + 1)).toNat) (A125160 (n + 1) ^ 2)

end

end A124912.P12136115815620220527

/-!
# A124915: a(n) = least integer k>=0 such that n=Floor[(2^j)/(3^k)] for some integer j>=0.

The programs for A124915, there is no canonical definition to state claims against.
-/

/-! ## A124915.P18374607422166246200

`A125154(A125158(n+1))`
-/

namespace A124915.P18374607422166246200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125154 (A125158 (n + 1)).toNat

end

end A124915.P18374607422166246200

/-! ## A124915.P17792431734566137836

`A125155(A125159(n+1))%(A302439(n)^3)`
-/

namespace A124915.P17792431734566137836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125155 (A125159 (n + 1)).toNat) (A302439 n ^ 3)

end

end A124915.P17792431734566137836

/-! ## A124915.P3299434052669018615

`A125155(A125159(n+1))%A014417(A302439(n))`
-/

namespace A124915.P3299434052669018615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125155 (A125159 (n + 1)).toNat) (A014417 (A302439 n).toNat)

end

end A124915.P3299434052669018615

/-! ## A124915.P2469566239580758438

`A000196(A005585(n+1))%A107079(n+1)`
-/

namespace A124915.P2469566239580758438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A005585 (n + 1)).toNat) (A107079 (n + 1))

end

end A124915.P2469566239580758438

/-!
# A124916: a(n) = least integer k>=0 such that n=Floor[(2^j)/(5^k)] for some integer j>=0.

The programs for A124916, there is no canonical definition to state claims against.
-/

/-! ## A124916.P886868745826103591

`A018856(n+1)-A124908(n+1)`
-/

namespace A124916.P886868745826103591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (n + 1) - A124908 (n + 1)

end

end A124916.P886868745826103591

/-! ## A124916.P12598887320895830770

`log2(A018802(n+1))-A124908(n+1)`
-/

namespace A124916.P12598887320895830770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A018802 (n + 1) : ℝ) - (A124908 (n + 1) : ℝ)

end

end A124916.P12598887320895830770

/-! ## A124916.P5358431544226212515

`A180726(n+1)-(A124908(n+1)+A000007(A353985(n+1)))`
-/

namespace A124916.P5358431544226212515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (n + 1) - (A124908 (n + 1) + A000007 (A353985 (n + 1)).toNat)

end

end A124916.P5358431544226212515

/-! ## A124916.P10426580980238076643

`A180726(n+1)-(A124908(n+1)+A000007(A183038(n)))`
-/

namespace A124916.P10426580980238076643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (n + 1) - (A124908 (n + 1) + A000007 (A183038 n).toNat)

end

end A124916.P10426580980238076643

/-!
# A124919: a(n) = least integer k>=0 such that n = floor((5^j)/(2^k)) for some integer j>=0.

The programs for A124919, there is no canonical definition to state claims against.
-/

/-! ## A124919.P1356564417217252220

`A018862(n+1)-A124911(n+1)`
-/

namespace A124919.P1356564417217252220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018862 (n + 1) - A124911 (n + 1)

end

end A124919.P1356564417217252220

/-!
# A124920: Location of record values in A080577; also partial sums of A006128 plus 1.

The programs for A124920, there is no canonical definition to state claims against.
-/

/-! ## A124920.P17299487755673691270

`A284870(n)+1`
-/

namespace A124920.P17299487755673691270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284870 n + 1

end

end A124920.P17299487755673691270

/-! ## A124920.P15148771756136411855

`∑[A006128(n)]+1`
-/

namespace A124920.P15148771756136411855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124920.P15148771756136411855

/-! ## A124920.P15048574423419678074

`1+∑[A211978(n)/2]`
-/

namespace A124920.P15048574423419678074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211978 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P15048574423419678074

/-! ## A124920.P6387161839482891454

`1+∑[A225596(n)-n]`
-/

namespace A124920.P6387161839482891454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225596 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P6387161839482891454

/-! ## A124920.P1355083127358402023

`∑[∑{d}[n, A085410(#)]]+1`
-/

namespace A124920.P1355083127358402023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A085410 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124920.P1355083127358402023

/-! ## A124920.P253552042098718106

`∑[A006128(A028310(n))]`
-/

namespace A124920.P253552042098718106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P253552042098718106

/-! ## A124920.P11335959707702532316

`A000070(n)+∑[A076276(n)]`
-/

namespace A124920.P11335959707702532316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P11335959707702532316

/-! ## A124920.P11613173620780853172

`A096541(n)+A339011(n)+1`
-/

namespace A124920.P11613173620780853172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + (A339011 n + 1)

end

end A124920.P11613173620780853172

/-! ## A124920.P15912714583503881286

`1+∑[A093694(n)-A000041(n)]`
-/

namespace A124920.P15912714583503881286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P15912714583503881286

/-! ## A124920.P15839088226846346586

`∑[A093694(n)]+1-A000070(n)`
-/

namespace A124920.P15839088226846346586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000070 n)

end

end A124920.P15839088226846346586

/-! ## A124920.P354089654572061599

`∑[A093694(n)-(A332284(n)+A332283(n))]+1`
-/

namespace A124920.P354089654572061599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A332284 n + A332283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124920.P354089654572061599

/-! ## A124920.P15522340374868142834

`∑[A079025(∑[n]+1)]`
-/

namespace A124920.P15522340374868142834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P15522340374868142834

/-! ## A124920.P9923973687915660231

`∑[A256193(∑[n]+1)]`
-/

namespace A124920.P9923973687915660231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124920.P9923973687915660231

/-! ## A124920.P7190559297409494273

`∑[A210485(A000096(n))]+1`
-/

namespace A124920.P7190559297409494273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124920.P7190559297409494273

/-! ## A124920.P7429265252007106215

`∑[A210485(eq[1, A210535(n+1)])]+1`
-/

namespace A124920.P7429265252007106215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124920.P7429265252007106215

/-!
# A124922: Second in a series of triangular arrays providing index numbers for subsequences of A060351.

The programs for A124922, there is no canonical definition to state claims against.
-/

/-! ## A124922.P12215626365783365388

`eq[1, A079071(n)]`
-/

namespace A124922.P12215626365783365388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124922.P12215626365783365388

/-! ## A124922.P12936783377121846438

`eq[1, A322795(n)]`
-/

namespace A124922.P12936783377121846438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124922.P12936783377121846438

/-! ## A124922.P3203873257777317021

`eq[2, A375216(n)]`
-/

namespace A124922.P3203873257777317021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124922.P3203873257777317021

/-! ## A124922.P5326909012719855280

`eq[3, A178677(n+1)]`
-/

namespace A124922.P5326909012719855280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124922.P5326909012719855280

/-! ## A124922.P1208861714359835554

`eq[3, A366888(n+1)]`
-/

namespace A124922.P1208861714359835554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124922.P1208861714359835554

/-!
# A124923: a(n) = n^(n-1) + 1.

The programs for A124923, there is no canonical definition to state claims against.
-/

/-! ## A124923.P1899810348852800146

`A000169(n+1)+1`
-/

namespace A124923.P1899810348852800146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) + 1

end

end A124923.P1899810348852800146

/-! ## A124923.P3412160854047303392

`1+(n+1)^n`
-/

namespace A124923.P3412160854047303392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 1) ^ n

end

end A124923.P3412160854047303392

/-! ## A124923.P8834167900834221679

`record[abs(A137452(n))+1]`
-/

namespace A124923.P8834167900834221679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137452 n| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124923.P8834167900834221679

/-! ## A124923.P12041990254659878222

`record[A095888(n+1)+1]`
-/

namespace A124923.P12041990254659878222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124923.P12041990254659878222

/-! ## A124923.P5247708578427358744

`record[A095890(n+1)+1]`
-/

namespace A124923.P5247708578427358744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095890 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124923.P5247708578427358744

/-! ## A124923.P16325163455139592202

`record[A201685(n+1)+1]`
-/

namespace A124923.P16325163455139592202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124923.P16325163455139592202

/-! ## A124923.P12007216647043831650

`abs(A172165(n+1)-n)`
-/

namespace A124923.P12007216647043831650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172165 (n + 1) - (n : ℤ)|

end

end A124923.P12007216647043831650

/-! ## A124923.P18154572670300688409

`(A093460(n+1)+3)/2`
-/

namespace A124923.P18154572670300688409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093460 (n + 1) + 3 : ℚ) / 2

end

end A124923.P18154572670300688409

/-! ## A124923.P8915464975163405895

`record[A077385(2*n+1)+1]`
-/

namespace A124923.P8915464975163405895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124923.P8915464975163405895

/-! ## A124923.P2826411041649477136

`2/(n+1)*A117694(n+1)`
-/

namespace A124923.P2826411041649477136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A117694 (n + 1) : ℚ)

end

end A124923.P2826411041649477136

/-!
# A124925: Interlaced triples: a(3n+1)=1, a(3n+2) = 2n+3, a(3n+3)= A028387(n).

The programs for A124925, the canonical program `A124925.P11084419735496366985` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124925 has offset 1).

The definition of A124925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124925.P11084419735496366985

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=1, a(4)=5, a(5)=5, a(6)=1, a(7)=7, a(8)=11`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124925

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P11084419735496366985.Spec : Prop :=
  ∀ n, P11084419735496366985.a n = A124925 (n + 1)

theorem P11084419735496366985.correct : P11084419735496366985.Spec := by
  intro n
  simp only [A124925, Nat.add_sub_cancel]

end A124925

/-! ## A124925.P5499834912208311247

`A109128(lt[2, n/A121207(n)])`
-/

namespace A124925.P5499834912208311247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A121207 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A124925.P5499834912208311247

namespace A124925

/-- `A109128(lt[2, n/A121207(n)])` -/
def P5499834912208311247.Spec : Prop :=
  ∀ n, P5499834912208311247.a n = A124925 (n + 1)

end A124925

/-! ## A124925.P8492493671733720041

`2*A007318(lt[A121207(n), n/2])-1`
-/

namespace A124925.P8492493671733720041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n) - 1

end

end A124925.P8492493671733720041

namespace A124925

/-- `2*A007318(lt[A121207(n), n/2])-1` -/
def P8492493671733720041.Spec : Prop :=
  ∀ n, P8492493671733720041.a n = A124925 (n + 1)

end A124925

/-! ## A124925.P2509976476947683582

`A109128(lt[A121207(n), n-A121207(n)])`
-/

namespace A124925.P2509976476947683582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A121207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124925.P2509976476947683582

namespace A124925

/-- `A109128(lt[A121207(n), n-A121207(n)])` -/
def P2509976476947683582.Spec : Prop :=
  ∀ n, P2509976476947683582.a n = A124925 (n + 1)

end A124925

/-! ## A124925.P5880260727458600749

`A109128(lt[2*A121207(n), n])`
-/

namespace A124925.P5880260727458600749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121207 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124925.P5880260727458600749

namespace A124925

/-- `A109128(lt[2*A121207(n), n])` -/
def P5880260727458600749.Spec : Prop :=
  ∀ n, P5880260727458600749.a n = A124925 (n + 1)

end A124925

/-! ## A124925.P18285812576063285040

`2*A007318(lt[2*A121207(n), n])-1`
-/

namespace A124925.P18285812576063285040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121207 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - 1

end

end A124925.P18285812576063285040

namespace A124925

/-- `2*A007318(lt[2*A121207(n), n])-1` -/
def P18285812576063285040.Spec : Prop :=
  ∀ n, P18285812576063285040.a n = A124925 (n + 1)

end A124925

/-!
# A124926: Triangle read by rows: T(n,k) = binomial(n,k)*r(k), where r(k) are the Riordan numbers (r(k) = A005043(k); 0 <= k <= n).

The programs for A124926, the canonical program `A124926.P9374051233560020075` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124926 has offset 0).

The definition of A124926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124926.P9374051233560020075

`A091867(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124926

/-- `A091867(A061579(n))` -/
def P9374051233560020075.Spec : Prop :=
  ∀ n, P9374051233560020075.a n = A124926 n

theorem P9374051233560020075.correct : P9374051233560020075.Spec := by
  intro n
  simp only [A124926]

end A124926

/-! ## A124926.P11481393249994177680

`A091867(A114327(n)+n)`
-/

namespace A124926.P11481393249994177680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A114327 n + (n : ℤ)).toNat

end

end A124926.P11481393249994177680

namespace A124926

/-- `A091867(A114327(n)+n)` -/
def P11481393249994177680.Spec : Prop :=
  ∀ n, P11481393249994177680.a n = A124926 n

end A124926

/-! ## A124926.P2181066140746477917

`A091867(A038722(n+1)-1)`
-/

namespace A124926.P2181066140746477917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A038722 (n + 1) - 1).toNat

end

end A124926.P2181066140746477917

namespace A124926

/-- `A091867(A038722(n+1)-1)` -/
def P2181066140746477917.Spec : Prop :=
  ∀ n, P2181066140746477917.a n = A124926 n

end A124926

/-! ## A124926.P16241560400184514986

`A091867(A002024(n+1)²-(n+1))`
-/

namespace A124926.P16241560400184514986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A124926.P16241560400184514986

namespace A124926

/-- `A091867(A002024(n+1)²-(n+1))` -/
def P16241560400184514986.Spec : Prop :=
  ∀ n, P16241560400184514986.a n = A124926 n

end A124926

/-! ## A124926.P10503732977509829776

`A005043(A002262(n))*A007318(n)`
-/

namespace A124926.P10503732977509829776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (A002262 n).toNat * A007318 n

end

end A124926.P10503732977509829776

namespace A124926

/-- `A005043(A002262(n))*A007318(n)` -/
def P10503732977509829776.Spec : Prop :=
  ∀ n, P10503732977509829776.a n = A124926 n

end A124926

/-!
# A124927: Triangle read by rows: T(n,0)=1, T(n,k)=2*binomial(n,k) if k>0 (0<=k<=n).

The programs for A124927, the canonical program `A124927.P15291283991733962265` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124927 has offset 0).

The definition of A124927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124927.P6921370497661121757

`A028326(n)-char[∑[n]]`
-/

namespace A124927.P6921370497661121757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124927.P6921370497661121757

namespace A124927

/-- `A028326(n)-char[∑[n]]` -/
def P6921370497661121757.Spec : Prop :=
  ∀ n, P6921370497661121757.a n = A124927 n

end A124927

/-! ## A124927.P8309940087918198681

`2*A007318(n)-char[∑[n]]`
-/

namespace A124927.P8309940087918198681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124927.P8309940087918198681

namespace A124927

/-- `2*A007318(n)-char[∑[n]]` -/
def P8309940087918198681.Spec : Prop :=
  ∀ n, P8309940087918198681.a n = A124927 n

end A124927

/-! ## A124927.P15291283991733962265

`A325191(n)+A080233(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A124927

/-- `A325191(n)+A080233(n)` -/
def P15291283991733962265.Spec : Prop :=
  ∀ n, P15291283991733962265.a n = A124927 n

theorem P15291283991733962265.correct : P15291283991733962265.Spec := by
  intro n
  simp only [A124927]

end A124927

/-! ## A124927.P10257112682780083237

`A134058(n)-A073424(n)`
-/

namespace A124927.P10257112682780083237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n - A073424 n

end

end A124927.P10257112682780083237

namespace A124927

/-- `A134058(n)-A073424(n)` -/
def P10257112682780083237.Spec : Prop :=
  ∀ n, P10257112682780083237.a n = A124927 n

end A124927

/-! ## A124927.P14736440146615635442

`A128710(n)-A134399(n)`
-/

namespace A124927.P14736440146615635442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A134399 n

end

end A124927.P14736440146615635442

namespace A124927

/-- `A128710(n)-A134399(n)` -/
def P14736440146615635442.Spec : Prop :=
  ∀ n, P14736440146615635442.a n = A124927 n

end A124927

/-! ## A124927.P16404183870874571715

`A162315(n)-A140575(n)`
-/

namespace A124927.P16404183870874571715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162315 n - A140575 n

end

end A124927.P16404183870874571715

namespace A124927

/-- `A162315(n)-A140575(n)` -/
def P16404183870874571715.Spec : Prop :=
  ∀ n, P16404183870874571715.a n = A124927 n

end A124927

/-! ## A124927.P7548276142950290295

`A007318(n)*A238303(n)`
-/

namespace A124927.P7548276142950290295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A238303 n

end

end A124927.P7548276142950290295

namespace A124927

/-- `A007318(n)*A238303(n)` -/
def P7548276142950290295.Spec : Prop :=
  ∀ n, P7548276142950290295.a n = A124927 n

end A124927

/-! ## A124927.P3079939421230157336

`A028326(n)/A035214(n)`
-/

namespace A124927.P3079939421230157336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A035214 n : ℚ)

end

end A124927.P3079939421230157336

namespace A124927

/-- `A028326(n)/A035214(n)` -/
def P3079939421230157336.Spec : Prop :=
  ∀ n, P3079939421230157336.a n = (A124927 n : ℚ)

end A124927

/-! ## A124927.P7746855490194534830

`A013609(n)/A232089(n)`
-/

namespace A124927.P7746855490194534830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A232089 n : ℚ)

end

end A124927.P7746855490194534830

namespace A124927

/-- `A013609(n)/A232089(n)` -/
def P7746855490194534830.Spec : Prop :=
  ∀ n, P7746855490194534830.a n = (A124927 n : ℚ)

end A124927

/-! ## A124927.P7949187251046902983

`gcd(A010816(n), A028326(n))`
-/

namespace A124927.P7949187251046902983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A028326 n)

end

end A124927.P7949187251046902983

namespace A124927

/-- `gcd(A010816(n), A028326(n))` -/
def P7949187251046902983.Spec : Prop :=
  ∀ n, (P7949187251046902983.a n : ℤ) = A124927 n

end A124927

/-! ## A124927.P242280601084281426

`gcd(A013609(n), A134058(n))`
-/

namespace A124927.P242280601084281426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013609 n) (A134058 n)

end

end A124927.P242280601084281426

namespace A124927

/-- `gcd(A013609(n), A134058(n))` -/
def P242280601084281426.Spec : Prop :=
  ∀ n, (P242280601084281426.a n : ℤ) = A124927 n

end A124927

/-! ## A124927.P3977375143278832976

`lcm(A132046(n), A238303(n))`
-/

namespace A124927.P3977375143278832976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132046 n) (A238303 n)

end

end A124927.P3977375143278832976

namespace A124927

/-- `lcm(A132046(n), A238303(n))` -/
def P3977375143278832976.Spec : Prop :=
  ∀ n, (P3977375143278832976.a n : ℤ) = A124927 n

end A124927

/-! ## A124927.P4785288883827714394

`A028326(n)/(A010054(n)+1)`
-/

namespace A124927.P4785288883827714394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A010054 n + 1 : ℚ)

end

end A124927.P4785288883827714394

namespace A124927

/-- `A028326(n)/(A010054(n)+1)` -/
def P4785288883827714394.Spec : Prop :=
  ∀ n, P4785288883827714394.a n = (A124927 n : ℚ)

end A124927

/-! ## A124927.P8414000852592935591

`A210196(n+1)/A059268(n)`
-/

namespace A124927.P8414000852592935591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210196 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A124927.P8414000852592935591

namespace A124927

/-- `A210196(n+1)/A059268(n)` -/
def P8414000852592935591.Spec : Prop :=
  ∀ n, P8414000852592935591.a n = (A124927 n : ℚ)

end A124927

/-! ## A124927.P9862131078158866309

`A134058(n*(A238303(n)-1))`
-/

namespace A124927.P9862131078158866309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 ((n : ℤ) * (A238303 n - 1)).toNat

end

end A124927.P9862131078158866309

namespace A124927

/-- `A134058(n*(A238303(n)-1))` -/
def P9862131078158866309.Spec : Prop :=
  ∀ n, P9862131078158866309.a n = A124927 n

end A124927

/-! ## A124927.P7014218896962730089

`(A124928(n)+A007318(n))/2`
-/

namespace A124927.P7014218896962730089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124928 n + A007318 n : ℚ) / 2

end

end A124927.P7014218896962730089

namespace A124927

/-- `(A124928(n)+A007318(n))/2` -/
def P7014218896962730089.Spec : Prop :=
  ∀ n, P7014218896962730089.a n = (A124927 n : ℚ)

end A124927

/-! ## A124927.P8046760811919063324

`2*A007318(n)/A035214(n)`
-/

namespace A124927.P8046760811919063324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A007318 n : ℚ) / (A035214 n : ℚ))

end

end A124927.P8046760811919063324

namespace A124927

/-- `2*A007318(n)/A035214(n)` -/
def P8046760811919063324.Spec : Prop :=
  ∀ n, P8046760811919063324.a n = (A124927 n : ℚ)

end A124927

/-! ## A124927.P9549850705442035221

`gcd(A038208(n), A208765(n+1))`
-/

namespace A124927.P9549850705442035221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038208 n) (A208765 (n + 1))

end

end A124927.P9549850705442035221

namespace A124927

/-- `gcd(A038208(n), A208765(n+1))` -/
def P9549850705442035221.Spec : Prop :=
  ∀ n, (P9549850705442035221.a n : ℤ) = A124927 n

end A124927

/-! ## A124927.P915102757353145063

`gcd(2, A059268(n))*A007318(n)`
-/

namespace A124927.P915102757353145063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A059268 n) : ℤ) * A007318 n

end

end A124927.P915102757353145063

namespace A124927

/-- `gcd(2, A059268(n))*A007318(n)` -/
def P915102757353145063.Spec : Prop :=
  ∀ n, P915102757353145063.a n = A124927 n

end A124927

/-! ## A124927.P15162859466061649108

`A221877(n+1)/A004736(n+1)`
-/

namespace A124927.P15162859466061649108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221877 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A124927.P15162859466061649108

namespace A124927

/-- `A221877(n+1)/A004736(n+1)` -/
def P15162859466061649108.Spec : Prop :=
  ∀ n, P15162859466061649108.a n = (A124927 n : ℚ)

end A124927

/-!
# A124928: Triangle read by rows: T(n,0) = 1, T(n,k) = 3*binomial(n,k) if k>=0 (0<=k<=n).

The programs for A124928, the canonical program `A124928.P9795992396165051059` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124928 has offset 0).

The definition of A124928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124928.P3808602815758022717

`A013620(n)/A153279(n)`
-/

namespace A124928.P3808602815758022717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A153279 n : ℚ)

end

end A124928.P3808602815758022717

namespace A124928

/-- `A013620(n)/A153279(n)` -/
def P3808602815758022717.Spec : Prop :=
  ∀ n, P3808602815758022717.a n = (A124928 n : ℚ)

end A124928

/-! ## A124928.P15393865081424173111

`gcd(A013610(n), A134059(n))`
-/

namespace A124928.P15393865081424173111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013610 n) (A134059 n)

end

end A124928.P15393865081424173111

namespace A124928

/-- `gcd(A013610(n), A134059(n))` -/
def P15393865081424173111.Spec : Prop :=
  ∀ n, (P15393865081424173111.a n : ℤ) = A124928 n

end A124928

/-! ## A124928.P3080654131872330873

`A134059(n%A209518(n)²)`
-/

namespace A124928.P3080654131872330873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (Int.tmod (n : ℤ) (A209518 n ^ 2)).toNat

end

end A124928.P3080654131872330873

namespace A124928

/-- `A134059(n%A209518(n)²)` -/
def P3080654131872330873.Spec : Prop :=
  ∀ n, P3080654131872330873.a n = A124928 n

end A124928

/-! ## A124928.P13157372177857579558

`A134059(n*(1-A010054(n)))`
-/

namespace A124928.P13157372177857579558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 ((n : ℤ) * (1 - A010054 n)).toNat

end

end A124928.P13157372177857579558

namespace A124928

/-- `A134059(n*(1-A010054(n)))` -/
def P13157372177857579558.Spec : Prop :=
  ∀ n, P13157372177857579558.a n = A124928 n

end A124928

/-! ## A124928.P18355621212208331803

`A134059(n*(1-A073423(n)))`
-/

namespace A124928.P18355621212208331803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 ((n : ℤ) * (1 - A073423 n)).toNat

end

end A124928.P18355621212208331803

namespace A124928

/-- `A134059(n*(1-A073423(n)))` -/
def P18355621212208331803.Spec : Prop :=
  ∀ n, P18355621212208331803.a n = A124928 n

end A124928

/-! ## A124928.P7203240655305702327

`A134059(n*(1-A073424(n)))`
-/

namespace A124928.P7203240655305702327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 ((n : ℤ) * (1 - A073424 n)).toNat

end

end A124928.P7203240655305702327

namespace A124928

/-- `A134059(n*(1-A073424(n)))` -/
def P7203240655305702327.Spec : Prop :=
  ∀ n, P7203240655305702327.a n = A124928 n

end A124928

/-! ## A124928.P9795992396165051059

`2*A124927(n)-A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124928

/-- `2*A124927(n)-A007318(n)` -/
def P9795992396165051059.Spec : Prop :=
  ∀ n, P9795992396165051059.a n = A124928 n

theorem P9795992396165051059.correct : P9795992396165051059.Spec := by
  intro n
  simp only [A124928]

end A124928

/-! ## A124928.P18026957886722172346

`A134059(n*xor(1, A073423(n)))`
-/

namespace A124928.P18026957886722172346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 ((n : ℤ) * Int.xor 1 (A073423 n)).toNat

end

end A124928.P18026957886722172346

namespace A124928

/-- `A134059(n*xor(1, A073423(n)))` -/
def P18026957886722172346.Spec : Prop :=
  ∀ n, P18026957886722172346.a n = A124928 n

end A124928

/-! ## A124928.P1320004681110276068

`A134059(n*xor(1, A073424(n)))`
-/

namespace A124928.P1320004681110276068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 ((n : ℤ) * Int.xor 1 (A073424 n)).toNat

end

end A124928.P1320004681110276068

namespace A124928

/-- `A134059(n*xor(1, A073424(n)))` -/
def P1320004681110276068.Spec : Prop :=
  ∀ n, P1320004681110276068.a n = A124928 n

end A124928

/-! ## A124928.P13830106770382887755

`2*A029655(n)-A029637(n+1)`
-/

namespace A124928.P13830106770382887755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029655 n - A029637 (n + 1)

end

end A124928.P13830106770382887755

namespace A124928

/-- `2*A029655(n)-A029637(n+1)` -/
def P13830106770382887755.Spec : Prop :=
  ∀ n, P13830106770382887755.a n = A124928 n

end A124928

/-! ## A124928.P12530803910671100985

`A007318(n)+A134061(n)-A134059(n)`
-/

namespace A124928.P12530803910671100985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A134061 n - A134059 n)

end

end A124928.P12530803910671100985

namespace A124928

/-- `A007318(n)+A134061(n)-A134059(n)` -/
def P12530803910671100985.Spec : Prop :=
  ∀ n, P12530803910671100985.a n = A124928 n

end A124928

/-! ## A124928.P4040223808382967539

`A124927(n)+A134065(n)-A134059(n)`
-/

namespace A124928.P4040223808382967539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n + (A134065 n - A134059 n)

end

end A124928.P4040223808382967539

namespace A124928

/-- `A124927(n)+A134065(n)-A134059(n)` -/
def P4040223808382967539.Spec : Prop :=
  ∀ n, P4040223808382967539.a n = A124928 n

end A124928

/-! ## A124928.P16505647757835893611

`A134058(n)+A134061(n)-A132200(n)`
-/

namespace A124928.P16505647757835893611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + (A134061 n - A132200 n)

end

end A124928.P16505647757835893611

namespace A124928

/-- `A134058(n)+A134061(n)-A132200(n)` -/
def P16505647757835893611.Spec : Prop :=
  ∀ n, P16505647757835893611.a n = A124928 n

end A124928

/-! ## A124928.P6806658965303006085

`A134059(n)+A134061(n)-A135089(n)`
-/

namespace A124928.P6806658965303006085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n + (A134061 n - A135089 n)

end

end A124928.P6806658965303006085

namespace A124928

/-- `A134059(n)+A134061(n)-A135089(n)` -/
def P6806658965303006085.Spec : Prop :=
  ∀ n, P6806658965303006085.a n = A124928 n

end A124928

/-! ## A124928.P11295939894561253145

`A134059(n)-A073424(n)-A073424(n)`
-/

namespace A124928.P11295939894561253145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n - A073424 n - A073424 n

end

end A124928.P11295939894561253145

namespace A124928

/-- `A134059(n)-A073424(n)-A073424(n)` -/
def P11295939894561253145.Spec : Prop :=
  ∀ n, P11295939894561253145.a n = A124928 n

end A124928

/-! ## A124928.P4685679320809638316

`A134059(n)/A134059(n*A073424(n))`
-/

namespace A124928.P4685679320809638316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 n : ℚ) / (A134059 ((n : ℤ) * A073424 n).toNat : ℚ)

end

end A124928.P4685679320809638316

namespace A124928

/-- `A134059(n)/A134059(n*A073424(n))` -/
def P4685679320809638316.Spec : Prop :=
  ∀ n, P4685679320809638316.a n = (A124928 n : ℚ)

end A124928

/-! ## A124928.P1747756291156129735

`xor(A073423(n), A134059(n))-A073423(n)`
-/

namespace A124928.P1747756291156129735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A073423 n) (A134059 n) - A073423 n

end

end A124928.P1747756291156129735

namespace A124928

/-- `xor(A073423(n), A134059(n))-A073423(n)` -/
def P1747756291156129735.Spec : Prop :=
  ∀ n, P1747756291156129735.a n = A124928 n

end A124928

/-! ## A124928.P5831617965056607556

`A007318(n)*A210042(A124927(n)/A007318(n))`
-/

namespace A124928.P5831617965056607556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A210042 (SequenceMachineLib.roundAway ((A124927 n : ℚ) / (A007318 n : ℚ))).toNat

end

end A124928.P5831617965056607556

namespace A124928

/-- `A007318(n)*A210042(A124927(n)/A007318(n))` -/
def P5831617965056607556.Spec : Prop :=
  ∀ n, P5831617965056607556.a n = A124928 n

end A124928

/-! ## A124928.P369028200902797728

`A131111(A061579(n))`
-/

namespace A124928.P369028200902797728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131111 (A061579 n).toNat

end

end A124928.P369028200902797728

namespace A124928

/-- `A131111(A061579(n))` -/
def P369028200902797728.Spec : Prop :=
  ∀ n, P369028200902797728.a n = A124928 n

end A124928

/-!
# A124929: Triangle read by rows: T(n,k) = (2^k-1)*binomial(n-1,k-1) (1<=k<=n).

The programs for A124929, the canonical program `A124929.P12332254111530473457` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124929 has offset 1).

The definition of A124929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124929.P12332254111530473457

`2*A013609(n)-A007318(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124929

/-- `2*A013609(n)-A007318(n)` -/
def P12332254111530473457.Spec : Prop :=
  ∀ n, P12332254111530473457.a n = A124929 (n + 1)

theorem P12332254111530473457.correct : P12332254111530473457.Spec := by
  intro n
  simp only [A124929, Nat.add_sub_cancel]

end A124929

/-! ## A124929.P9120363267420295818

`abs(2*A303872(n))-A007318(n)`
-/

namespace A124929.P9120363267420295818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A303872 n| - A007318 n

end

end A124929.P9120363267420295818

namespace A124929

/-- `abs(2*A303872(n))-A007318(n)` -/
def P9120363267420295818.Spec : Prop :=
  ∀ n, P9120363267420295818.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P18365508026939357821

`(2*A059268(n)-1)*A007318(n)`
-/

namespace A124929.P18365508026939357821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A059268 n - 1) * A007318 n

end

end A124929.P18365508026939357821

namespace A124929

/-- `(2*A059268(n)-1)*A007318(n)` -/
def P18365508026939357821.Spec : Prop :=
  ∀ n, P18365508026939357821.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P11235247523306245979

`A000225(A002260(n+1))*A007318(n)`
-/

namespace A124929.P11235247523306245979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1)).toNat * A007318 n

end

end A124929.P11235247523306245979

namespace A124929

/-- `A000225(A002260(n+1))*A007318(n)` -/
def P11235247523306245979.Spec : Prop :=
  ∀ n, P11235247523306245979.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P541612753049014253

`A000225(A002262(n)+1)*A007318(n)`
-/

namespace A124929.P541612753049014253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002262 n + 1).toNat * A007318 n

end

end A124929.P541612753049014253

namespace A124929

/-- `A000225(A002262(n)+1)*A007318(n)` -/
def P541612753049014253.Spec : Prop :=
  ∀ n, P541612753049014253.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P1944500863939415453

`A007318(n)*A255047(A002262(n)+1)`
-/

namespace A124929.P1944500863939415453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A255047 (A002262 n + 1).toNat

end

end A124929.P1944500863939415453

namespace A124929

/-- `A007318(n)*A255047(A002262(n)+1)` -/
def P1944500863939415453.Spec : Prop :=
  ∀ n, P1944500863939415453.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P4652433585344276462

`ceil(A134059(n)/3)*A000225(A002260(n+1))`
-/

namespace A124929.P4652433585344276462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000225 (A002260 (n + 1)).toNat

end

end A124929.P4652433585344276462

namespace A124929

/-- `ceil(A134059(n)/3)*A000225(A002260(n+1))` -/
def P4652433585344276462.Spec : Prop :=
  ∀ n, P4652433585344276462.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P17546812596127798687

`A209417(n+1)+A209418(n+1)-A007318(n)`
-/

namespace A124929.P17546812596127798687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209417 (n + 1) + (A209418 (n + 1) - A007318 n)

end

end A124929.P17546812596127798687

namespace A124929

/-- `A209417(n+1)+A209418(n+1)-A007318(n)` -/
def P17546812596127798687.Spec : Prop :=
  ∀ n, P17546812596127798687.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P2954813245447530521

`A134059(abs(1-2*n)+1-n)/3*A000225(A002260(n+1))`
-/

namespace A124929.P2954813245447530521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134059 (|1 - (2 * n : ℤ)| + 1 - (n : ℤ)).toNat : ℚ) / 3 * (A000225 (A002260 (n + 1)).toNat : ℚ)

end

end A124929.P2954813245447530521

namespace A124929

/-- `A134059(abs(1-2*n)+1-n)/3*A000225(A002260(n+1))` -/
def P2954813245447530521.Spec : Prop :=
  ∀ n, P2954813245447530521.a n = (A124929 (n + 1) : ℚ)

end A124929

/-! ## A124929.P8962780365931972079

`(A285118(n)+A285116(n))*A000225(A002260(n+1))`
-/

namespace A124929.P8962780365931972079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000225 (A002260 (n + 1)).toNat

end

end A124929.P8962780365931972079

namespace A124929

/-- `(A285118(n)+A285116(n))*A000225(A002260(n+1))` -/
def P8962780365931972079.Spec : Prop :=
  ∀ n, P8962780365931972079.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P8240070321638637229

`A276985(n+1)-(A182059(n+1)+A007318(n))`
-/

namespace A124929.P8240070321638637229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276985 (n + 1) - (A182059 (n + 1) + A007318 n)

end

end A124929.P8240070321638637229

namespace A124929

/-- `A276985(n+1)-(A182059(n+1)+A007318(n))` -/
def P8240070321638637229.Spec : Prop :=
  ∀ n, P8240070321638637229.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P12027253971594744380

`A000225(A002260(n+1))/A176346(n)*A176348(n)`
-/

namespace A124929.P12027253971594744380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002260 (n + 1)).toNat : ℚ) / (A176346 n : ℚ) * (A176348 n : ℚ)

end

end A124929.P12027253971594744380

namespace A124929

/-- `A000225(A002260(n+1))/A176346(n)*A176348(n)` -/
def P12027253971594744380.Spec : Prop :=
  ∀ n, P12027253971594744380.a n = (A124929 (n + 1) : ℚ)

end A124929

/-! ## A124929.P5243138371200778627

`ceil(A134060(n)/3)*A000225(A002260(n+1))`
-/

namespace A124929.P5243138371200778627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134060 n : ℚ) / 3⌉ * A000225 (A002260 (n + 1)).toNat

end

end A124929.P5243138371200778627

namespace A124929

/-- `ceil(A134060(n)/3)*A000225(A002260(n+1))` -/
def P5243138371200778627.Spec : Prop :=
  ∀ n, P5243138371200778627.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P8215732386119919983

`A007318(n)*∑{d}[A059268(n), #]`
-/

namespace A124929.P8215732386119919983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A124929.P8215732386119919983

namespace A124929

/-- `A007318(n)*∑{d}[A059268(n), #]` -/
def P8215732386119919983.Spec : Prop :=
  ∀ n, P8215732386119919983.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P6919929417339280789

`A000203(A013609(n)/A007318(n))*A007318(n)`
-/

namespace A124929.P6919929417339280789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A013609 n : ℚ) / (A007318 n : ℚ))).toNat * A007318 n

end

end A124929.P6919929417339280789

namespace A124929

/-- `A000203(A013609(n)/A007318(n))*A007318(n)` -/
def P6919929417339280789.Spec : Prop :=
  ∀ n, P6919929417339280789.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P1619822087286583607

`2*A013609(n)-A004525(A028326(n))`
-/

namespace A124929.P1619822087286583607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A004525 (A028326 n).toNat

end

end A124929.P1619822087286583607

namespace A124929

/-- `2*A013609(n)-A004525(A028326(n))` -/
def P1619822087286583607.Spec : Prop :=
  ∀ n, P1619822087286583607.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P16810893521616147801

`A028326(n)*A059268(n)-A004526(A028326(n))`
-/

namespace A124929.P16810893521616147801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A059268 n - A004526 (A028326 n).toNat

end

end A124929.P16810893521616147801

namespace A124929

/-- `A028326(n)*A059268(n)-A004526(A028326(n))` -/
def P16810893521616147801.Spec : Prop :=
  ∀ n, P16810893521616147801.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P10515633413023918016

`A007318(n)*A035327(2*A059268(n))`
-/

namespace A124929.P10515633413023918016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A035327 (2 * A059268 n).toNat

end

end A124929.P10515633413023918016

namespace A124929

/-- `A007318(n)*A035327(2*A059268(n))` -/
def P10515633413023918016.Spec : Prop :=
  ∀ n, P10515633413023918016.a n = A124929 (n + 1)

end A124929

/-! ## A124929.P11561144373465284379

`A007318(n)*A047994(2*A059268(n))`
-/

namespace A124929.P11561144373465284379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047994 (2 * A059268 n).toNat

end

end A124929.P11561144373465284379

namespace A124929

/-- `A007318(n)*A047994(2*A059268(n))` -/
def P11561144373465284379.Spec : Prop :=
  ∀ n, P11561144373465284379.a n = A124929 (n + 1)

end A124929

/-!
# A124931: Triangle read by rows: T(n,k) = (2*k-1)*binomial(n,k) (1 <= k <= n).

The programs for A124931, the canonical program `A124931.P11932261198096333976` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124931 has offset 1).

The definition of A124931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124931.P11932261198096333976

`A135278(n)*A158405(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A124931

/-- `A135278(n)*A158405(n+1)` -/
def P11932261198096333976.Spec : Prop :=
  ∀ n, P11932261198096333976.a n = A124931 (n + 1)

theorem P11932261198096333976.correct : P11932261198096333976.Spec := by
  intro n
  simp only [A124931, Nat.add_sub_cancel]

end A124931

/-! ## A124931.P5198169633026016161

`A074909(n+1)*A158405(n+1)`
-/

namespace A124931.P5198169633026016161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A158405 (n + 1)

end

end A124931.P5198169633026016161

namespace A124931

/-- `A074909(n+1)*A158405(n+1)` -/
def P5198169633026016161.Spec : Prop :=
  ∀ n, P5198169633026016161.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P16329866926942371369

`A005408(A002262(n))*A135278(n)`
-/

namespace A124931.P16329866926942371369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A135278 n

end

end A124931.P16329866926942371369

namespace A124931

/-- `A005408(A002262(n))*A135278(n)` -/
def P16329866926942371369.Spec : Prop :=
  ∀ n, P16329866926942371369.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P8315639600347061553

`A099375(A061579(n))*A135278(n)`
-/

namespace A124931.P8315639600347061553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A061579 n).toNat * A135278 n

end

end A124931.P8315639600347061553

namespace A124931

/-- `A099375(A061579(n))*A135278(n)` -/
def P8315639600347061553.Spec : Prop :=
  ∀ n, P8315639600347061553.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P9854721910783208473

`A099375(A112367(n))*A135278(n)`
-/

namespace A124931.P9854721910783208473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A112367 n).toNat * A135278 n

end

end A124931.P9854721910783208473

namespace A124931

/-- `A099375(A112367(n))*A135278(n)` -/
def P9854721910783208473.Spec : Prop :=
  ∀ n, P9854721910783208473.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P1338395410075236055

`A004273(A002260(n+1))*A135278(n)`
-/

namespace A124931.P1338395410075236055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002260 (n + 1)).toNat * A135278 n

end

end A124931.P1338395410075236055

namespace A124931

/-- `A004273(A002260(n+1))*A135278(n)` -/
def P1338395410075236055.Spec : Prop :=
  ∀ n, P1338395410075236055.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P804813135479508482

`A007318(A014132(n+1))*A158405(n+1)`
-/

namespace A124931.P804813135479508482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A158405 (n + 1)

end

end A124931.P804813135479508482

namespace A124931

/-- `A007318(A014132(n+1))*A158405(n+1)` -/
def P804813135479508482.Spec : Prop :=
  ∀ n, P804813135479508482.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P16708885197856858647

`(A014132(n+1)-A038722(n+1))*A135278(n)`
-/

namespace A124931.P16708885197856858647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - A038722 (n + 1)) * A135278 n

end

end A124931.P16708885197856858647

namespace A124931

/-- `(A014132(n+1)-A038722(n+1))*A135278(n)` -/
def P16708885197856858647.Spec : Prop :=
  ∀ n, P16708885197856858647.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P6575286689218996175

`A003506(n+1)+A003506(n+1)-A074909(n+1)`
-/

namespace A124931.P6575286689218996175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + (A003506 (n + 1) - A074909 (n + 1))

end

end A124931.P6575286689218996175

namespace A124931

/-- `A003506(n+1)+A003506(n+1)-A074909(n+1)` -/
def P6575286689218996175.Spec : Prop :=
  ∀ n, P6575286689218996175.a n = A124931 (n + 1)

end A124931

/-! ## A124931.P17550349773391171495

`A048691(A059268(n))*A135278(n)`
-/

namespace A124931.P17550349773391171495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A059268 n).toNat * A135278 n

end

end A124931.P17550349773391171495

namespace A124931

/-- `A048691(A059268(n))*A135278(n)` -/
def P17550349773391171495.Spec : Prop :=
  ∀ n, P17550349773391171495.a n = A124931 (n + 1)

end A124931

/-!
# A124932: Triangle read by rows: T(n,k) = k*(k+1)*binomial(n,k)/2 (1 <= k <= n).

The programs for A124932, the canonical program `A124932.P4361011200529056863` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124932 has offset 1).

The definition of A124932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124932.P3840699179437962758

`∑[char[∑[n]]/2]*A128710(n)`
-/

namespace A124932.P3840699179437962758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A128710 n : ℚ)

end

end A124932.P3840699179437962758

namespace A124932

/-- `∑[char[∑[n]]/2]*A128710(n)` -/
def P3840699179437962758.Spec : Prop :=
  ∀ n, P3840699179437962758.a n = (A124932 (n + 1) : ℚ)

end A124932

/-! ## A124932.P8094057301169539275

`(1-A049780(n)+n)*A135278(n)`
-/

namespace A124932.P8094057301169539275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A049780 n + (n : ℤ)) * A135278 n

end

end A124932.P8094057301169539275

namespace A124932

/-- `(1-A049780(n)+n)*A135278(n)` -/
def P8094057301169539275.Spec : Prop :=
  ∀ n, P8094057301169539275.a n = A124932 (n + 1)

end A124932

/-! ## A124932.P8545950970056691842

`A000217(A002260(n+1))*A135278(n)`
-/

namespace A124932.P8545950970056691842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A135278 n

end

end A124932.P8545950970056691842

namespace A124932

/-- `A000217(A002260(n+1))*A135278(n)` -/
def P8545950970056691842.Spec : Prop :=
  ∀ n, P8545950970056691842.a n = A124932 (n + 1)

end A124932

/-! ## A124932.P4361011200529056863

`A000217(A002260(n+1))*A074909(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124932

/-- `A000217(A002260(n+1))*A074909(n+1)` -/
def P4361011200529056863.Spec : Prop :=
  ∀ n, P4361011200529056863.a n = A124932 (n + 1)

theorem P4361011200529056863.correct : P4361011200529056863.Spec := by
  intro n
  simp only [A124932, Nat.add_sub_cancel]

end A124932

/-! ## A124932.P6023437828447462249

`(A135278(A112367(n))+A112367(n))*A135278(n)`
-/

namespace A124932.P6023437828447462249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135278 (A112367 n).toNat + A112367 n) * A135278 n

end

end A124932.P6023437828447462249

namespace A124932

/-- `(A135278(A112367(n))+A112367(n))*A135278(n)` -/
def P6023437828447462249.Spec : Prop :=
  ∀ n, P6023437828447462249.a n = A124932 (n + 1)

end A124932

/-! ## A124932.P17154670890054121894

`A000217(A002260(n+1))*A007318(A014132(n+1))`
-/

namespace A124932.P17154670890054121894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A007318 (A014132 (n + 1)).toNat

end

end A124932.P17154670890054121894

namespace A124932

/-- `A000217(A002260(n+1))*A007318(A014132(n+1))` -/
def P17154670890054121894.Spec : Prop :=
  ∀ n, P17154670890054121894.a n = A124932 (n + 1)

end A124932

/-! ## A124932.P52434541391699921

`A000217(A002260(n+1))/A002260(n+1)*A003506(n+1)`
-/

namespace A124932.P52434541391699921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A002260 (n + 1)).toNat : ℚ) / (A002260 (n + 1) : ℚ) * (A003506 (n + 1) : ℚ)

end

end A124932.P52434541391699921

namespace A124932

/-- `A000217(A002260(n+1))/A002260(n+1)*A003506(n+1)` -/
def P52434541391699921.Spec : Prop :=
  ∀ n, P52434541391699921.a n = (A124932 (n + 1) : ℚ)

end A124932

/-! ## A124932.P4212642415807415355

`A123316(n+1)/A098361(n)`
-/

namespace A124932.P4212642415807415355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123316 (n + 1) : ℚ) / (A098361 n : ℚ)

end

end A124932.P4212642415807415355

namespace A124932

/-- `A123316(n+1)/A098361(n)` -/
def P4212642415807415355.Spec : Prop :=
  ∀ n, P4212642415807415355.a n = (A124932 (n + 1) : ℚ)

end A124932

/-! ## A124932.P17514801802485475823

`A281881(n+1)/A166350(n+1)`
-/

namespace A124932.P17514801802485475823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281881 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A124932.P17514801802485475823

namespace A124932

/-- `A281881(n+1)/A166350(n+1)` -/
def P17514801802485475823.Spec : Prop :=
  ∀ n, P17514801802485475823.a n = (A124932 (n + 1) : ℚ)

end A124932

/-! ## A124932.P4140641054855219199

`A281881(n+1)/A068424(A281881(n+1)/A068424(n+1))`
-/

namespace A124932.P4140641054855219199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281881 (n + 1) : ℚ) / (A068424 (SequenceMachineLib.roundAway ((A281881 (n + 1) : ℚ) / (A068424 (n + 1) : ℚ))).toNat : ℚ)

end

end A124932.P4140641054855219199

namespace A124932

/-- `A281881(n+1)/A068424(A281881(n+1)/A068424(n+1))` -/
def P4140641054855219199.Spec : Prop :=
  ∀ n, P4140641054855219199.a n = (A124932 (n + 1) : ℚ)

end A124932

/-!
# A124934: Numbers of the form 4mn - m - n, where m, n are positive integers.

The programs for A124934, the canonical program `A124934.P10210965125734739564` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124934 has offset 1).

The definition of A124934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124934.P12917587911768650487

`∪[A380140(n+1), A016789(n)]`
-/

namespace A124934.P12917587911768650487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124934.P12917587911768650487

namespace A124934

/-- `∪[A380140(n+1), A016789(n)]` -/
def P12917587911768650487.Spec : Prop :=
  ∀ n, (P12917587911768650487.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P10210965125734739564

`∪[A125217(n+1), A125218(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124934

/-- `∪[A125217(n+1), A125218(n+1)]` -/
def P10210965125734739564.Spec : Prop :=
  ∀ n, (P10210965125734739564.a n : ℤ) = A124934 (n + 1)

theorem P10210965125734739564.correct : P10210965125734739564.Spec := by
  intro n
  simp only [A124934, Nat.add_sub_cancel]

end A124934

/-! ## A124934.P11707425339196605734

`∪[A125217(n+1), A380140(n+1)]`
-/

namespace A124934.P11707425339196605734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A124934.P11707425339196605734

namespace A124934

/-- `∪[A125217(n+1), A380140(n+1)]` -/
def P11707425339196605734.Spec : Prop :=
  ∀ n, (P11707425339196605734.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P11308563867152293921

`eq[1, A284004(A091379(4*n+1))]`
-/

namespace A124934.P11308563867152293921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284004 (A091379 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P11308563867152293921

namespace A124934

/-- `eq[1, A284004(A091379(4*n+1))]` -/
def P11308563867152293921.Spec : Prop :=
  ∀ n, (P11308563867152293921.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P7620310561107326829

`eq[0, A031358(n)]`
-/

namespace A124934.P7620310561107326829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P7620310561107326829

namespace A124934

/-- `eq[0, A031358(n)]` -/
def P7620310561107326829.Spec : Prop :=
  ∀ n, (P7620310561107326829.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P7649459564716931173

`lt[A106594(n+1), 1]+1`
-/

namespace A124934.P7649459564716931173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106594 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124934.P7649459564716931173

namespace A124934

/-- `lt[A106594(n+1), 1]+1` -/
def P7649459564716931173.Spec : Prop :=
  ∀ n, (P7649459564716931173.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P2006380902393771931

`record[gcd(n, A031358(n)*A321150(n+1))]`
-/

namespace A124934.P2006380902393771931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A031358 n * A321150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124934.P2006380902393771931

namespace A124934

/-- `record[gcd(n, A031358(n)*A321150(n+1))]` -/
def P2006380902393771931.Spec : Prop :=
  ∀ n, (P2006380902393771931.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P12835021557328826534

`eq[A000038(A359240(n+1))², A000038(n)]`
-/

namespace A124934.P12835021557328826534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A359240 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124934.P12835021557328826534

namespace A124934

/-- `eq[A000038(A359240(n+1))², A000038(n)]` -/
def P12835021557328826534.Spec : Prop :=
  ∀ n, (P12835021557328826534.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P3448711512160182099

`eq[A000038(A364084(n+1))², A000038(n)]`
-/

namespace A124934.P3448711512160182099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A364084 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124934.P3448711512160182099

namespace A124934

/-- `eq[A000038(A364084(n+1))², A000038(n)]` -/
def P3448711512160182099.Spec : Prop :=
  ∀ n, (P3448711512160182099.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P14243326201300334710

`eq[A024361(2*(n+1)), A091379(2*n+1)]/2`
-/

namespace A124934.P14243326201300334710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A124934.P14243326201300334710

namespace A124934

/-- `eq[A024361(2*(n+1)), A091379(2*n+1)]/2` -/
def P14243326201300334710.Spec : Prop :=
  ∀ n, P14243326201300334710.a n = (A124934 (n + 1) : ℚ)

end A124934

/-! ## A124934.P16550109185673568126

`eq[A000038(A363407(n+1))², A000038(n)]`
-/

namespace A124934.P16550109185673568126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A363407 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124934.P16550109185673568126

namespace A124934

/-- `eq[A000038(A363407(n+1))², A000038(n)]` -/
def P16550109185673568126.Spec : Prop :=
  ∀ n, (P16550109185673568126.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P14960760046615901667

`eq[0, A000089(4*n+1)]`
-/

namespace A124934.P14960760046615901667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P14960760046615901667

namespace A124934

/-- `eq[0, A000089(4*n+1)]` -/
def P14960760046615901667.Spec : Prop :=
  ∀ n, (P14960760046615901667.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P1498866270287042662

`lt[1, A082052(4*n+1)]`
-/

namespace A124934.P1498866270287042662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124934.P1498866270287042662

namespace A124934

/-- `lt[1, A082052(4*n+1)]` -/
def P1498866270287042662.Spec : Prop :=
  ∀ n, (P1498866270287042662.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P18226476122615058453

`lt[1, A170819(4*n+1)]`
-/

namespace A124934.P18226476122615058453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124934.P18226476122615058453

namespace A124934

/-- `lt[1, A170819(4*n+1)]` -/
def P18226476122615058453.Spec : Prop :=
  ∀ n, (P18226476122615058453.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P4434050307664378033

`eq[2, A227781(4*n+1)]`
-/

namespace A124934.P4434050307664378033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P4434050307664378033

namespace A124934

/-- `eq[2, A227781(4*n+1)]` -/
def P4434050307664378033.Spec : Prop :=
  ∀ n, (P4434050307664378033.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P5875692593096642607

`lt[1, A286363(4*n+1)]`
-/

namespace A124934.P5875692593096642607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124934.P5875692593096642607

namespace A124934

/-- `lt[1, A286363(4*n+1)]` -/
def P5875692593096642607.Spec : Prop :=
  ∀ n, (P5875692593096642607.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P7625311988992222830

`eq[1, A000095(4*n+1)+1]`
-/

namespace A124934.P7625311988992222830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P7625311988992222830

namespace A124934

/-- `eq[1, A000095(4*n+1)+1]` -/
def P7625311988992222830.Spec : Prop :=
  ∀ n, (P7625311988992222830.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P10623239235305168847

`eq[1, A076948(4*n+1)+1]`
-/

namespace A124934.P10623239235305168847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076948 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P10623239235305168847

namespace A124934

/-- `eq[1, A076948(4*n+1)+1]` -/
def P10623239235305168847.Spec : Prop :=
  ∀ n, (P10623239235305168847.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P2652104573941318039

`eq[1, A091400(4*n+1)+1]`
-/

namespace A124934.P2652104573941318039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (4 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124934.P2652104573941318039

namespace A124934

/-- `eq[1, A091400(4*n+1)+1]` -/
def P2652104573941318039.Spec : Prop :=
  ∀ n, (P2652104573941318039.a n : ℤ) = A124934 (n + 1)

end A124934

/-! ## A124934.P8995531980524991892

`lt[A170818(A008574(n)+1), n]`
-/

namespace A124934.P8995531980524991892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A008574 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124934.P8995531980524991892

namespace A124934

/-- `lt[A170818(A008574(n)+1), n]` -/
def P8995531980524991892.Spec : Prop :=
  ∀ n, (P8995531980524991892.a n : ℤ) = A124934 (n + 1)

end A124934

/-!
# A124935: Number of base 18 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124935, there is no canonical definition to state claims against.
-/

/-! ## A124935.P15388653065134947825

`A005191(n)+A124898(n)-A166486(A205971(n))`
-/

namespace A124935.P15388653065134947825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n + (A124898 n - A166486 (A205971 n).toNat)

end

end A124935.P15388653065134947825

/-! ## A124935.P3357693645992215570

`A124898(n)+A201552(A179865(n+1)+n)%A045345(n+1)`
-/

namespace A124935.P3357693645992215570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124898 n + Int.tmod (A201552 (A179865 (n + 1) + (n : ℤ)).toNat) (A045345 (n + 1))

end

end A124935.P3357693645992215570

/-! ## A124935.P9385048217065551222

`A124894(n)+A014682(A124894(n)-A124858(n))`
-/

namespace A124935.P9385048217065551222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124894 n + A014682 (A124894 n - A124858 n).toNat

end

end A124935.P9385048217065551222

/-!
# A124936: Numbers k such that k - 1 and k + 1 are semiprimes.

The programs for A124936, the canonical program `A124936.P6840335345316101384` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124936 has offset 1).

The definition of A124936 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124936.P6840335345316101384

`A092207(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A124936

/-- `A092207(n+1)+1` -/
def P6840335345316101384.Spec : Prop :=
  ∀ n, P6840335345316101384.a n = A124936 (n + 1)

theorem P6840335345316101384.correct : P6840335345316101384.Spec := by
  intro n
  simp only [A124936, Nat.add_sub_cancel]

end A124936

/-! ## A124936.P9135442182314894649

`A198327(n+1)-1`
-/

namespace A124936.P9135442182314894649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1) - 1

end

end A124936.P9135442182314894649

namespace A124936

/-- `A198327(n+1)-1` -/
def P9135442182314894649.Spec : Prop :=
  ∀ n, P9135442182314894649.a n = A124936 (n + 1)

end A124936

/-! ## A124936.P14380634031718693780

`A023890(A092207(n+1))`
-/

namespace A124936.P14380634031718693780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A092207 (n + 1)).toNat

end

end A124936.P14380634031718693780

namespace A124936

/-- `A023890(A092207(n+1))` -/
def P14380634031718693780.Spec : Prop :=
  ∀ n, P14380634031718693780.a n = A124936 (n + 1)

end A124936

/-! ## A124936.P17325194469566344204

`∩[A088707(n+1), A186621(n+1)]`
-/

namespace A124936.P17325194469566344204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P17325194469566344204

namespace A124936

/-- `∩[A088707(n+1), A186621(n+1)]` -/
def P17325194469566344204.Spec : Prop :=
  ∀ n, (P17325194469566344204.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P7040532839252162920

`∩[A088707(n+1), A280382(n+1)]`
-/

namespace A124936.P7040532839252162920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P7040532839252162920

namespace A124936

/-- `∩[A088707(n+1), A280382(n+1)]` -/
def P7040532839252162920.Spec : Prop :=
  ∀ n, (P7040532839252162920.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P14105208239124232523

`∩[A186621(n+1), A280382(n+1)]`
-/

namespace A124936.P14105208239124232523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P14105208239124232523

namespace A124936

/-- `∩[A186621(n+1), A280382(n+1)]` -/
def P14105208239124232523.Spec : Prop :=
  ∀ n, (P14105208239124232523.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P17034921308453957000

`∩[A001358(n+1)+1, A186621(n+1)]`
-/

namespace A124936.P17034921308453957000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P17034921308453957000

namespace A124936

/-- `∩[A001358(n+1)+1, A186621(n+1)]` -/
def P17034921308453957000.Spec : Prop :=
  ∀ n, (P17034921308453957000.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P9030824587611137265

`∩[A001358(n+1)-1, A088707(n+1)]`
-/

namespace A124936.P9030824587611137265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P9030824587611137265

namespace A124936

/-- `∩[A001358(n+1)-1, A088707(n+1)]` -/
def P9030824587611137265.Spec : Prop :=
  ∀ n, (P9030824587611137265.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P890933735392948416

`∪[A056809(n+1), A136196(n+1)]+1`
-/

namespace A124936.P890933735392948416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A124936.P890933735392948416

namespace A124936

/-- `∪[A056809(n+1), A136196(n+1)]+1` -/
def P890933735392948416.Spec : Prop :=
  ∀ n, (P890933735392948416.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P4010176527463846588

`∩[A001358(n+1), A200925(n+1)]-1`
-/

namespace A124936.P4010176527463846588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200925 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A124936.P4010176527463846588

namespace A124936

/-- `∩[A001358(n+1), A200925(n+1)]-1` -/
def P4010176527463846588.Spec : Prop :=
  ∀ n, P4010176527463846588.a n = A124936 (n + 1)

end A124936

/-! ## A124936.P11977608466881351733

`∩[A088707(n+1), A176540(n+1)-1]`
-/

namespace A124936.P11977608466881351733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P11977608466881351733

namespace A124936

/-- `∩[A088707(n+1), A176540(n+1)-1]` -/
def P11977608466881351733.Spec : Prop :=
  ∀ n, (P11977608466881351733.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P13314440188085536225

`∩[eq[2, A001222(n+1)], A088707(n+1)]`
-/

namespace A124936.P13314440188085536225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A124936.P13314440188085536225

namespace A124936

/-- `∩[eq[2, A001222(n+1)], A088707(n+1)]` -/
def P13314440188085536225.Spec : Prop :=
  ∀ n, (P13314440188085536225.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P5686570639073864858

`∩[A100493(n+1)-n, A186621(n+1)]`
-/

namespace A124936.P5686570639073864858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P5686570639073864858

namespace A124936

/-- `∩[A100493(n+1)-n, A186621(n+1)]` -/
def P5686570639073864858.Spec : Prop :=
  ∀ n, (P5686570639073864858.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P12983605013814222019

`∩[A075818(n+1)-A088707(n+1), A088707(n+1)]`
-/

namespace A124936.P12983605013814222019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) - A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P12983605013814222019

namespace A124936

/-- `∩[A075818(n+1)-A088707(n+1), A088707(n+1)]` -/
def P12983605013814222019.Spec : Prop :=
  ∀ n, (P12983605013814222019.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P17980447896594095039

`∩[A088707(n+1), A118717(n+1)-A088707(n+1)]`
-/

namespace A124936.P17980447896594095039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1) - A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124936.P17980447896594095039

namespace A124936

/-- `∩[A088707(n+1), A118717(n+1)-A088707(n+1)]` -/
def P17980447896594095039.Spec : Prop :=
  ∀ n, (P17980447896594095039.a n : ℤ) = A124936 (n + 1)

end A124936

/-! ## A124936.P14738326521595971091

`A023443(A198327(n+1))`
-/

namespace A124936.P14738326521595971091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198327 (n + 1)).toNat

end

end A124936.P14738326521595971091

namespace A124936

/-- `A023443(A198327(n+1))` -/
def P14738326521595971091.Spec : Prop :=
  ∀ n, P14738326521595971091.a n = A124936 (n + 1)

end A124936

/-! ## A124936.P15373024394332243941

`A023444(A198327(n+1)+1)`
-/

namespace A124936.P15373024394332243941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198327 (n + 1) + 1).toNat

end

end A124936.P15373024394332243941

namespace A124936

/-- `A023444(A198327(n+1)+1)` -/
def P15373024394332243941.Spec : Prop :=
  ∀ n, P15373024394332243941.a n = A124936 (n + 1)

end A124936

/-!
# A124937: Number of solvable transitive Galois groups for polynomials of degree n.

The programs for A124937, there is no canonical definition to state claims against.
-/

/-! ## A124937.P11639754356657141220

`A002106(n+1)-A124938(n+1)`
-/

namespace A124937.P11639754356657141220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (n + 1) - A124938 (n + 1)

end

end A124937.P11639754356657141220

/-! ## A124937.P3418099828546658469

`A002106(n+1)+A057428(n)*A124938(n+1)`
-/

namespace A124937.P3418099828546658469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (n + 1) + A057428 n * A124938 (n + 1)

end

end A124937.P3418099828546658469

/-! ## A124937.P18246042816828926812

`A000019(n+1)+A132221(n+1)-A124938(n+1)`
-/

namespace A124937.P18246042816828926812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (n + 1) + (A132221 (n + 1) - A124938 (n + 1))

end

end A124937.P18246042816828926812

/-!
# A124938: Number of non-solvable transitive Galois groups for polynomials of degree n.

The programs for A124938, there is no canonical definition to state claims against.
-/

/-! ## A124938.P9575193398274817941

`A002106(n+1)-A124937(n+1)`
-/

namespace A124938.P9575193398274817941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002106 (n + 1) - A124937 (n + 1)

end

end A124938.P9575193398274817941

/-! ## A124938.P15583401385264711342

`A000019(n+1)+A132221(n+1)-A124937(n+1)`
-/

namespace A124938.P15583401385264711342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (n + 1) + (A132221 (n + 1) - A124937 (n + 1))

end

end A124938.P15583401385264711342

/-!
# A124939: Prime tetrahedron, read by rows.

The programs for A124939, there is no canonical definition to state claims against.
-/

/-! ## A124939.P17743990328492238589

`gcd(A000217(A033490(n+1)), A352502(n))`
-/

namespace A124939.P17743990328492238589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A033490 (n + 1)).toNat) (A352502 n)

end

end A124939.P17743990328492238589

/-! ## A124939.P10962212552452067418

`gcd(A050279(n+1), A181544(A096105(3*n+1)))`
-/

namespace A124939.P10962212552452067418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050279 (n + 1)) (A181544 (A096105 (3 * n + 1)).toNat)

end

end A124939.P10962212552452067418

/-!
# A124940: Numbers k such that k and k+3 are 3-almost primes.

The programs for A124940, the canonical program `A124940.P17540590922783165598` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124940 has offset 1).

The definition of A124940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124940.P17540590922783165598

`∩[A014612(n+1)-3, A014612(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A124940

/-- `∩[A014612(n+1)-3, A014612(n+1)]` -/
def P17540590922783165598.Spec : Prop :=
  ∀ n, (P17540590922783165598.a n : ℤ) = A124940 (n + 1)

theorem P17540590922783165598.correct : P17540590922783165598.Spec := by
  intro n
  simp only [A124940, Nat.add_sub_cancel]

end A124940

/-! ## A124940.P13391827251652193337

`∩[A014612(n+1), A023445(A014612(n+1))]`
-/

namespace A124940.P13391827251652193337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A014612 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124940.P13391827251652193337

namespace A124940

/-- `∩[A014612(n+1), A023445(A014612(n+1))]` -/
def P13391827251652193337.Spec : Prop :=
  ∀ n, (P13391827251652193337.a n : ℤ) = A124940 (n + 1)

end A124940

/-! ## A124940.P301222495652557899

`filter[A175759(n+1), A101605(#)]`
-/

namespace A124940.P301222495652557899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A124940.P301222495652557899

namespace A124940

/-- `filter[A175759(n+1), A101605(#)]` -/
def P301222495652557899.Spec : Prop :=
  ∀ n, P301222495652557899.a n = A124940 (n + 1)

end A124940

/-!
# A124941: Numbers k such that k and k+4 are 4-almost primes.

The programs for A124941, the canonical program `A124941.P16218630572969216122` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124941 has offset 1).

The definition of A124941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124941.P16218630572969216122

`∩[A014613(n+1)-4, A014613(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124941

/-- `∩[A014613(n+1)-4, A014613(n+1)]` -/
def P16218630572969216122.Spec : Prop :=
  ∀ n, (P16218630572969216122.a n : ℤ) = A124941 (n + 1)

theorem P16218630572969216122.correct : P16218630572969216122.Spec := by
  intro n
  simp only [A124941, Nat.add_sub_cancel]

end A124941

/-! ## A124941.P10351282101459944171

`∩[A014613(n+1), A023446(A014613(n+1))]`
-/

namespace A124941.P10351282101459944171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A014613 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124941.P10351282101459944171

namespace A124941

/-- `∩[A014613(n+1), A023446(A014613(n+1))]` -/
def P10351282101459944171.Spec : Prop :=
  ∀ n, (P10351282101459944171.a n : ℤ) = A124941 (n + 1)

end A124941

/-! ## A124941.P12138302304274930852

`A020639(A056993(n))*A180117(n+1)`
-/

namespace A124941.P12138302304274930852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056993 n).toNat * A180117 (n + 1)

end

end A124941.P12138302304274930852

namespace A124941

/-- `A020639(A056993(n))*A180117(n+1)` -/
def P12138302304274930852.Spec : Prop :=
  ∀ n, P12138302304274930852.a n = A124941 (n + 1)

end A124941

/-! ## A124941.P12371178739350434882

`A018892(A201714(n+1))*A180117(n+1)`
-/

namespace A124941.P12371178739350434882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (A201714 (n + 1)).toNat * A180117 (n + 1)

end

end A124941.P12371178739350434882

namespace A124941

/-- `A018892(A201714(n+1))*A180117(n+1)` -/
def P12371178739350434882.Spec : Prop :=
  ∀ n, P12371178739350434882.a n = A124941 (n + 1)

end A124941

/-! ## A124941.P13674022143702481041

`A000005(A265781(n+1))*A180117(n+1)`
-/

namespace A124941.P13674022143702481041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A265781 (n + 1)).toNat * A180117 (n + 1)

end

end A124941.P13674022143702481041

namespace A124941

/-- `A000005(A265781(n+1))*A180117(n+1)` -/
def P13674022143702481041.Spec : Prop :=
  ∀ n, P13674022143702481041.a n = A124941 (n + 1)

end A124941

/-!
# A124942: Numbers k such that k and k+5 are 5-almost primes.

The programs for A124942, the canonical program `A124942.P16309435582127969892` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124942 has offset 1).

The definition of A124942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124942.P16309435582127969892

`∩[A014614(n+1)-5, A014614(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A124942

/-- `∩[A014614(n+1)-5, A014614(n+1)]` -/
def P16309435582127969892.Spec : Prop :=
  ∀ n, (P16309435582127969892.a n : ℤ) = A124942 (n + 1)

theorem P16309435582127969892.correct : P16309435582127969892.Spec := by
  intro n
  simp only [A124942, Nat.add_sub_cancel]

end A124942

/-! ## A124942.P14232748672543027435

`∩[A014614(n+1), A069345(A014614(n+1))]`
-/

namespace A124942.P14232748672543027435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A014614 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124942.P14232748672543027435

namespace A124942

/-- `∩[A014614(n+1), A069345(A014614(n+1))]` -/
def P14232748672543027435.Spec : Prop :=
  ∀ n, (P14232748672543027435.a n : ℤ) = A124942 (n + 1)

end A124942

/-!
# A124943: Table read by rows: number of partitions of n with k as low median.

The programs for A124943, there is no canonical definition to state claims against.
-/

/-! ## A124943.P3989556506845324384

`A359901(lt[A329315(3*n+1), A117488(2*n+1)])`
-/

namespace A124943.P3989556506845324384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329315 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117488 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124943.P3989556506845324384

/-! ## A124943.P17009246235536592215

`floor(ratio[A018253(A007318(n))])`
-/

namespace A124943.P17009246235536592215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018253 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A124943.P17009246235536592215

/-! ## A124943.P17297095125485801039

`floor(ratio[A137242(A137251(n+1))])`
-/

namespace A124943.P17297095125485801039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137242 (A137251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A124943.P17297095125485801039

/-! ## A124943.P3605984310496482284

`floor(ratio[A324845(A267245(n+1))])`
-/

namespace A124943.P3605984310496482284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324845 (A267245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A124943.P3605984310496482284

/-! ## A124943.P14687210387754450422

`A359901(lt[A332994(n+1), A179456(2*n)])`
-/

namespace A124943.P14687210387754450422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179456 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124943.P14687210387754450422

/-!
# A124944: Table, number of partitions of n with k as high median.

The programs for A124944, there is no canonical definition to state claims against.
-/

/-! ## A124944.P12712546678029399955

`A300655(A316273(n+1)+1)`
-/

namespace A124944.P12712546678029399955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (A316273 (n + 1) + 1).toNat

end

end A124944.P12712546678029399955

/-! ## A124944.P17796914754154188415

`A110591(A105820(n+1)^3)`
-/

namespace A124944.P17796914754154188415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A105820 (n + 1) ^ 3).toNat

end

end A124944.P17796914754154188415

/-! ## A124944.P6075000036729279204

`A110591(A105820(n+1)²*A105820(n+1))`
-/

namespace A124944.P6075000036729279204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A105820 (n + 1) ^ 2 * A105820 (n + 1)).toNat

end

end A124944.P6075000036729279204

/-!
# A124947: Number of base 19 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124947, there is no canonical definition to state claims against.
-/

/-! ## A124947.P48044870397164922

`∏{p}[A005191(n)-A124948(n), #]`
-/

namespace A124947.P48044870397164922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n - A124948 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A124947.P48044870397164922

/-! ## A124947.P4396303944882833659

`A000265(A124935(n)+A005191(n))`
-/

namespace A124947.P4396303944882833659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124935 n + A005191 n).toNat

end

end A124947.P4396303944882833659

/-! ## A124947.P5972008237339318346

`A000265(A124957(n)+A124851(n))`
-/

namespace A124947.P5972008237339318346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124957 n + A124851 n).toNat

end

end A124947.P5972008237339318346

/-!
# A124948: Number of base 20 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124948, there is no canonical definition to state claims against.
-/

/-! ## A124948.P4469910951500317518

`A124949(n)-A001221(A000079(n))*A005191(n)`
-/

namespace A124948.P4469910951500317518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124949 n - A001221 (A000079 n).toNat * A005191 n

end

end A124948.P4469910951500317518

/-! ## A124948.P13237908732567447980

`A008683(A000302(n))+A124949(n)-A005191(n)`
-/

namespace A124948.P13237908732567447980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000302 n).toNat + (A124949 n - A005191 n)

end

end A124948.P13237908732567447980

/-! ## A124948.P14863595140312060325

`A124949(n)-A005191(n)-A008683(A007758(n+1))`
-/

namespace A124948.P14863595140312060325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124949 n - A005191 n - A008683 (A007758 (n + 1)).toNat

end

end A124948.P14863595140312060325

/-! ## A124948.P18323190495215464874

`A124950(n)-A014682(A124954(n)-A124950(n))`
-/

namespace A124948.P18323190495215464874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124950 n - A014682 (A124954 n - A124950 n).toNat

end

end A124948.P18323190495215464874

/-!
# A124949: Number of base 21 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124949, there is no canonical definition to state claims against.
-/

/-! ## A124949.P13212510970772427184

`(A124953(n)+A124898(n))/A020639(A000079(n+1))`
-/

namespace A124949.P13212510970772427184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124953 n + A124898 n : ℚ) / (A020639 (A000079 (n + 1)).toNat : ℚ)

end

end A124949.P13212510970772427184

/-! ## A124949.P8790366252551649889

`(A124953(n)+A124898(n))/A020639(A112415(2*n))`
-/

namespace A124949.P8790366252551649889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124953 n + A124898 n : ℚ) / (A020639 (A112415 (2 * n)).toNat : ℚ)

end

end A124949.P8790366252551649889

/-! ## A124949.P14558865923800790781

`(A124953(n)+A124898(n))/A020639(A003500(n))`
-/

namespace A124949.P14558865923800790781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124953 n + A124898 n : ℚ) / (A020639 (A003500 n).toNat : ℚ)

end

end A124949.P14558865923800790781

/-! ## A124949.P17637465787983053177

`(A124953(n)+A124898(n))/A020639(A000163(n+2))`
-/

namespace A124949.P17637465787983053177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124953 n + A124898 n : ℚ) / (A020639 (A000163 (n + 2)).toNat : ℚ)

end

end A124949.P17637465787983053177

/-!
# A124950: Number of base 22 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124950, there is no canonical definition to state claims against.
-/

/-! ## A124950.P12615077817721614421

`A005191(n)+A001221(A000079(n))*A124949(n)`
-/

namespace A124950.P12615077817721614421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n + A001221 (A000079 n).toNat * A124949 n

end

end A124950.P12615077817721614421

/-! ## A124950.P16418342456722031705

`A005191(n)+A124949(n)-A008683(A000302(n))`
-/

namespace A124950.P16418342456722031705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n + (A124949 n - A008683 (A000302 n).toNat)

end

end A124950.P16418342456722031705

/-! ## A124950.P16850980036523858348

`A124951(n)-A014682(A124953(n)-A124951(n))`
-/

namespace A124950.P16850980036523858348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124951 n - A014682 (A124953 n - A124951 n).toNat

end

end A124950.P16850980036523858348

/-! ## A124950.P8632886678928245978

`A124894(n)+A014682(A124956(n)-A124894(n))`
-/

namespace A124950.P8632886678928245978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124894 n + A014682 (A124956 n - A124894 n).toNat

end

end A124950.P8632886678928245978

/-!
# A124951: Number of base 23 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124951, there is no canonical definition to state claims against.
-/

/-! ## A124951.P9167642249481196675

`A124952(n)-A014682(A124954(n)-A124952(n))`
-/

namespace A124951.P9167642249481196675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124952 n - A014682 (A124954 n - A124952 n).toNat

end

end A124951.P9167642249481196675

/-! ## A124951.P16060507293282382624

`A124953(n)-A014682(A124957(n)-A124953(n))`
-/

namespace A124951.P16060507293282382624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124953 n - A014682 (A124957 n - A124953 n).toNat

end

end A124951.P16060507293282382624

/-! ## A124951.P2205054323072601429

`A000265(A124950(n)+A005191(n))`
-/

namespace A124951.P2205054323072601429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124950 n + A005191 n).toNat

end

end A124951.P2205054323072601429

/-!
# A124952: Number of base 24 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124952, there is no canonical definition to state claims against.
-/

/-! ## A124952.P13384262679955204511

`A124951(n)+A014682(A124953(n)-A124951(n))`
-/

namespace A124952.P13384262679955204511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124951 n + A014682 (A124953 n - A124951 n).toNat

end

end A124952.P13384262679955204511

/-! ## A124952.P5285177827623150088

`A124950(n)+A014682(A124954(n)-A124950(n))`
-/

namespace A124952.P5285177827623150088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124950 n + A014682 (A124954 n - A124950 n).toNat

end

end A124952.P5285177827623150088

/-! ## A124952.P1648672165408057252

`A124954(n)-A014682(A124958(n)-A124954(n))`
-/

namespace A124952.P1648672165408057252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124954 n - A014682 (A124958 n - A124954 n).toNat

end

end A124952.P1648672165408057252

/-! ## A124952.P9338632830883096207

`A008683(A037965(n+1))+A124953(n)-A005191(n)`
-/

namespace A124952.P9338632830883096207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A037965 (n + 1)).toNat + (A124953 n - A005191 n)

end

end A124952.P9338632830883096207

/-!
# A124953: Number of base 25 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124953, there is no canonical definition to state claims against.
-/

/-! ## A124953.P15466077279611450016

`A124952(n)+A014682(A124954(n)-A124952(n))`
-/

namespace A124953.P15466077279611450016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124952 n + A014682 (A124954 n - A124952 n).toNat

end

end A124953.P15466077279611450016

/-! ## A124953.P13021019014103058723

`A124954(n)-A014682(A124956(n)-A124954(n))`
-/

namespace A124953.P13021019014103058723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124954 n - A014682 (A124956 n - A124954 n).toNat

end

end A124953.P13021019014103058723

/-! ## A124953.P17541920456195558748

`A000265(A124952(n)+A005191(n))`
-/

namespace A124953.P17541920456195558748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124952 n + A005191 n).toNat

end

end A124953.P17541920456195558748

/-!
# A124954: Number of base 26 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124954, there is no canonical definition to state claims against.
-/

/-! ## A124954.P10452242940579585422

`A124953(n)+A014682(A124953(n)-A124951(n))`
-/

namespace A124954.P10452242940579585422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124953 n + A014682 (A124953 n - A124951 n).toNat

end

end A124954.P10452242940579585422

/-! ## A124954.P1981576649718095334

`A124955(n)-A014682(A124957(n)-A124955(n))`
-/

namespace A124954.P1981576649718095334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124955 n - A014682 (A124957 n - A124955 n).toNat

end

end A124954.P1981576649718095334

/-! ## A124954.P15608445224131153953

`A124951(n)+A014682(A124957(n)-A124951(n))`
-/

namespace A124954.P15608445224131153953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124951 n + A014682 (A124957 n - A124951 n).toNat

end

end A124954.P15608445224131153953

/-! ## A124954.P11522020212335979326

`A124952(n)+A014682(A124956(n)-A124952(n))`
-/

namespace A124954.P11522020212335979326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124952 n + A014682 (A124956 n - A124952 n).toNat

end

end A124954.P11522020212335979326

/-!
# A124955: Number of base 27 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124955, there is no canonical definition to state claims against.
-/

/-! ## A124955.P2406105361741088503

`A124954(n)+A014682(A124954(n)-A124952(n))`
-/

namespace A124955.P2406105361741088503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124954 n + A014682 (A124954 n - A124952 n).toNat

end

end A124955.P2406105361741088503

/-! ## A124955.P528639591464293214

`A124954(n)+A014682(A124956(n)-A124954(n))`
-/

namespace A124955.P528639591464293214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124954 n + A014682 (A124956 n - A124954 n).toNat

end

end A124955.P528639591464293214

/-! ## A124955.P1183373923748259250

`A124956(n)-A014682(A124958(n)-A124956(n))`
-/

namespace A124955.P1183373923748259250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124956 n - A014682 (A124958 n - A124956 n).toNat

end

end A124955.P1183373923748259250

/-! ## A124955.P9219546366888006117

`A124953(n)+A014682(A124957(n)-A124953(n))`
-/

namespace A124955.P9219546366888006117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124953 n + A014682 (A124957 n - A124953 n).toNat

end

end A124955.P9219546366888006117

/-!
# A124956: Number of base 28 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124956, there is no canonical definition to state claims against.
-/

/-! ## A124956.P4978118193608625995

`A124955(n)+A014682(A124957(n)-A124955(n))`
-/

namespace A124956.P4978118193608625995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124955 n + A014682 (A124957 n - A124955 n).toNat

end

end A124956.P4978118193608625995

/-! ## A124956.P13370052549503108947

`A124954(n)+A014682(A124954(n)-A124950(n))`
-/

namespace A124956.P13370052549503108947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124954 n + A014682 (A124954 n - A124950 n).toNat

end

end A124956.P13370052549503108947

/-! ## A124956.P11939923534546906579

`A124954(n)+A014682(A124958(n)-A124954(n))`
-/

namespace A124956.P11939923534546906579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124954 n + A014682 (A124958 n - A124954 n).toNat

end

end A124956.P11939923534546906579

/-!
# A124957: Number of base 29 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124957, there is no canonical definition to state claims against.
-/

/-! ## A124957.P3317456761876328424

`A124956(n)+A014682(A124956(n)-A124954(n))`
-/

namespace A124957.P3317456761876328424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124956 n + A014682 (A124956 n - A124954 n).toNat

end

end A124957.P3317456761876328424

/-! ## A124957.P3039022489130323432

`A124956(n)+A014682(A124958(n)-A124956(n))`
-/

namespace A124957.P3039022489130323432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124956 n + A014682 (A124958 n - A124956 n).toNat

end

end A124957.P3039022489130323432

/-! ## A124957.P11456102748622755002

`A000265(A124956(n)+A005191(n))`
-/

namespace A124957.P11456102748622755002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124956 n + A005191 n).toNat

end

end A124957.P11456102748622755002

/-!
# A124958: Number of base 30 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124958, there is no canonical definition to state claims against.
-/

/-! ## A124958.P14106227653599320901

`A124957(n)+A014682(A124957(n)-A124955(n))`
-/

namespace A124958.P14106227653599320901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124957 n + A014682 (A124957 n - A124955 n).toNat

end

end A124958.P14106227653599320901

/-! ## A124958.P4101697509322792813

`A124956(n)+A014682(A124956(n)-A124952(n))`
-/

namespace A124958.P4101697509322792813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124956 n + A014682 (A124956 n - A124952 n).toNat

end

end A124958.P4101697509322792813

/-! ## A124958.P16867968519186289513

`A005191(n)+A001414(A124957(n))`
-/

namespace A124958.P16867968519186289513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 n + A001414 (A124957 n).toNat

end

end A124958.P16867968519186289513

/-!
# A124959: Triangle read by rows: T(n,k) = a(k)*binomial(n,k) (0 <= k <= n), where a(0)=1, a(1)=2, a(k) = a(k-1) + 3*a(k-2) for k >= 2 (a(k) = A006138(k)).

The programs for A124959, the canonical program `A124959.P12051482998564919054` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124959 has offset 0).

The definition of A124959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124959.P12051482998564919054

`A006138(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124959

/-- `A006138(A002262(n))*A007318(n)` -/
def P12051482998564919054.Spec : Prop :=
  ∀ n, P12051482998564919054.a n = A124959 n

theorem P12051482998564919054.correct : P12051482998564919054.Spec := by
  intro n
  simp only [A124959]

end A124959

/-! ## A124959.P10566377240748454611

`abs(A006138(A002262(n))*A108086(n))`
-/

namespace A124959.P10566377240748454611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006138 (A002262 n).toNat * A108086 n|

end

end A124959.P10566377240748454611

namespace A124959

/-- `abs(A006138(A002262(n))*A108086(n))` -/
def P10566377240748454611.Spec : Prop :=
  ∀ n, P10566377240748454611.a n = A124959 n

end A124959

/-! ## A124959.P5224705887646896878

`abs(A006138(A002262(n))*A130595(n))`
-/

namespace A124959.P5224705887646896878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006138 (A002262 n).toNat * A130595 n|

end

end A124959.P5224705887646896878

namespace A124959

/-- `abs(A006138(A002262(n))*A130595(n))` -/
def P5224705887646896878.Spec : Prop :=
  ∀ n, P5224705887646896878.a n = A124959 n

end A124959

/-! ## A124959.P234568713198267624

`sqrt(A008459(n))*A006138(A002262(n))`
-/

namespace A124959.P234568713198267624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A006138 (A002262 n).toNat : ℝ)

end

end A124959.P234568713198267624

namespace A124959

/-- `sqrt(A008459(n))*A006138(A002262(n))` -/
def P234568713198267624.Spec : Prop :=
  ∀ n, P234568713198267624.a n = (A124959 n : ℝ)

end A124959

/-! ## A124959.P9635674368202405885

`Δ[A102363(n)]*A006138(A002262(n))`
-/

namespace A124959.P9635674368202405885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006138 (A002262 n).toNat

end

end A124959.P9635674368202405885

namespace A124959

/-- `Δ[A102363(n)]*A006138(A002262(n))` -/
def P9635674368202405885.Spec : Prop :=
  ∀ n, P9635674368202405885.a n = A124959 n

end A124959

/-! ## A124959.P7374599334951268799

`(A014473(n)+1)*A006138(A002262(n))`
-/

namespace A124959.P7374599334951268799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A006138 (A002262 n).toNat

end

end A124959.P7374599334951268799

namespace A124959

/-- `(A014473(n)+1)*A006138(A002262(n))` -/
def P7374599334951268799.Spec : Prop :=
  ∀ n, P7374599334951268799.a n = A124959 n

end A124959

/-!
# A124960: Triangle read by rows: T(n,k) = p(k)*T(n-1,k) + T(n-1,k-1) (1 <= k <= n), where p(k) denotes the k-th prime.

The programs for A124960, there is no canonical definition to state claims against.
-/

/-! ## A124960.P7581481184007941606

`A343751(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A124960.P7581481184007941606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A124960.P7581481184007941606

/-! ## A124960.P9624198265427104396

`A343751(A099375(n)+n)`
-/

namespace A124960.P9624198265427104396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A099375 n + (n : ℤ)).toNat

end

end A124960.P9624198265427104396

/-! ## A124960.P2814872462283030356

`A343751(A061579(A014132(n+1)))`
-/

namespace A124960.P2814872462283030356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A061579 (A014132 (n + 1)).toNat).toNat

end

end A124960.P2814872462283030356

/-! ## A124960.P3392204899546257298

`A343751(A038722(n+1)+A003056(n))`
-/

namespace A124960.P3392204899546257298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A038722 (n + 1) + A003056 n).toNat

end

end A124960.P3392204899546257298

/-! ## A124960.P4859703337305130872

`A343751(A061579(n)+A002024(n+1))`
-/

namespace A124960.P4859703337305130872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A061579 n + A002024 (n + 1)).toNat

end

end A124960.P4859703337305130872

/-! ## A124960.P2402660341162033135

`A343751(A380649(n+1))`
-/

namespace A124960.P2402660341162033135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A380649 (n + 1)).toNat

end

end A124960.P2402660341162033135

/-!
# A124961: Triangle read by rows: T(n,k) = mobius(k)*T(n-1,k) + T(n-1,k-1).

The programs for A124961, there is no canonical definition to state claims against.
-/

/-! ## A124961.P10494354923728946587

`A112468(n)/A323437(A293301(n))`
-/

namespace A124961.P10494354923728946587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112468 n : ℚ) / (A323437 (A293301 n).toNat : ℚ)

end

end A124961.P10494354923728946587

/-! ## A124961.P10523983448839192492

`A124737(A094544(n))+A112468(n)`
-/

namespace A124961.P10523983448839192492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124737 (A094544 n).toNat + A112468 n

end

end A124961.P10523983448839192492

/-! ## A124961.P5909877434683795787

`A112468(n)/A005136(A102480(n))`
-/

namespace A124961.P5909877434683795787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112468 n : ℚ) / (A005136 (A102480 n).toNat : ℚ)

end

end A124961.P5909877434683795787

/-! ## A124961.P15735861825456911175

`A112468(n)/A325989(A114044(n))`
-/

namespace A124961.P15735861825456911175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112468 n : ℚ) / (A325989 (A114044 n).toNat : ℚ)

end

end A124961.P15735861825456911175

/-!
# A124962: Sum of automorphism group orders for all simple graphs of order n.

The programs for A124962, there is no canonical definition to state claims against.
-/

/-! ## A124962.P4205147759709525652

`A066926(a(n-1))+18` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A124962.P4205147759709525652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  A066926 (a (n - 1)).toNat + 18

end

end A124962.P4205147759709525652

/-!
# A124963: Sum of numbers of (directed) Hamiltonian paths for all simple graphs of order n.

The programs for A124963, there is no canonical definition to state claims against.
-/

/-! ## A124963.P17251144708594174906

`A193352(1-char[1]+n)`
-/

namespace A124963.P17251144708594174906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193352 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A124963.P17251144708594174906

/-!
# A124964: Total counts of distinct (directed) Hamiltonian cycles for all simple graphs of order n.

The programs for A124964, there is no canonical definition to state claims against.
-/

/-! ## A124964.P5760455416447521024

`and(-2, A340693(∑[n²]-C(n, 2)))`
-/

namespace A124964.P5760455416447521024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A340693 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.choose n 2))

end

end A124964.P5760455416447521024

/-! ## A124964.P10883558180167584661

`A073504(A058119(n+1))`
-/

namespace A124964.P10883558180167584661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073504 (A058119 (n + 1)).toNat

end

end A124964.P10883558180167584661

/-!
# A124965: Odd values of 2^n mod n corresponding to the n's given in A015911.

The programs for A124965, there is no canonical definition to state claims against.
-/

/-! ## A124965.P10775226316228430642

`A015910(A015911(n+1))`
-/

namespace A124965.P10775226316228430642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (A015911 (n + 1)).toNat

end

end A124965.P10775226316228430642

/-! ## A124965.P12773536681918502049

`A082495(A015911(n+1))+abs(A131561(n+2))`
-/

namespace A124965.P12773536681918502049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + |A131561 (n + 2)|

end

end A124965.P12773536681918502049

/-! ## A124965.P12500138188775056940

`A285373(2*n+1)+A082495(A015911(n+1))`
-/

namespace A124965.P12500138188775056940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285373 (2 * n + 1) + A082495 (A015911 (n + 1)).toNat

end

end A124965.P12500138188775056940

/-! ## A124965.P9564785513841787300

`A082495(A015911(n+1))+A001222(A033216(n+1))`
-/

namespace A124965.P9564785513841787300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A001222 (A033216 (n + 1)).toNat

end

end A124965.P9564785513841787300

/-! ## A124965.P6227163874981118358

`A082495(A015911(n+1))+A001222(A053673(n+1))`
-/

namespace A124965.P6227163874981118358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A001222 (A053673 (n + 1)).toNat

end

end A124965.P6227163874981118358

/-! ## A124965.P2308642589549806156

`A082495(A015911(n+1))-A008683(A065091(n+1))`
-/

namespace A124965.P2308642589549806156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat - A008683 (A065091 (n + 1)).toNat

end

end A124965.P2308642589549806156

/-! ## A124965.P3238678304822981383

`A276781(A020639(n+2))+A082495(A015911(n+1))`
-/

namespace A124965.P3238678304822981383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276781 (A020639 (n + 2)).toNat + A082495 (A015911 (n + 1)).toNat

end

end A124965.P3238678304822981383

/-! ## A124965.P14136145109517153200

`A082495(A015911(n+1))-A008683(A286042(n+5))`
-/

namespace A124965.P14136145109517153200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat - A008683 (A286042 (n + 5)).toNat

end

end A124965.P14136145109517153200

/-! ## A124965.P13367392605629026781

`A082495(A015911(n+1))+A003415(A000040(n+1))`
-/

namespace A124965.P13367392605629026781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A003415 (A000040 (n + 1)).toNat

end

end A124965.P13367392605629026781

/-! ## A124965.P12483910835418912478

`A082495(A015911(n+1))+A001222(A096385(n+2))`
-/

namespace A124965.P12483910835418912478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A001222 (A096385 (n + 2)).toNat

end

end A124965.P12483910835418912478

/-! ## A124965.P12725401454904408584

`A082495(A015911(n+1))+A001222(A065383(n))`
-/

namespace A124965.P12725401454904408584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A001222 (A065383 n).toNat

end

end A124965.P12725401454904408584

/-! ## A124965.P4715798938227219356

`A082495(A015911(n+1))+A082495(A106349(n+1))`
-/

namespace A124965.P4715798938227219356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A082495 (A106349 (n + 1)).toNat

end

end A124965.P4715798938227219356

/-! ## A124965.P9689376122245208520

`A093178(A053204(n))+A082495(A015911(n+1))`
-/

namespace A124965.P9689376122245208520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A053204 n).toNat + A082495 (A015911 (n + 1)).toNat

end

end A124965.P9689376122245208520

/-! ## A124965.P2338868193099175185

`A082495(A015911(n+1))+A001221(A014442(n+1))`
-/

namespace A124965.P2338868193099175185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A001221 (A014442 (n + 1)).toNat

end

end A124965.P2338868193099175185

/-! ## A124965.P6026762545779853736

`A082495(A015911(n+1))+A001221(A078312(n+1))`
-/

namespace A124965.P6026762545779853736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A001221 (A078312 (n + 1)).toNat

end

end A124965.P6026762545779853736

/-! ## A124965.P11149108270457303174

`A082495(A001359(n+1))+A082495(A015911(n+1))`
-/

namespace A124965.P11149108270457303174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A001359 (n + 1)).toNat + A082495 (A015911 (n + 1)).toNat

end

end A124965.P11149108270457303174

/-! ## A124965.P1628525412094264233

`A082495(A015911(n+1))+A014963(A078285(n+1))`
-/

namespace A124965.P1628525412094264233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A014963 (A078285 (n + 1)).toNat

end

end A124965.P1628525412094264233

/-! ## A124965.P8094542156382088316

`A082495(A015911(n+1))+A007318(A000217(n))`
-/

namespace A124965.P8094542156382088316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A007318 (A000217 n).toNat

end

end A124965.P8094542156382088316

/-! ## A124965.P16354409440837634834

`A082495(A015911(n+1))+A014963(A000217(n+5))`
-/

namespace A124965.P16354409440837634834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A015911 (n + 1)).toNat + A014963 (A000217 (n + 5)).toNat

end

end A124965.P16354409440837634834

/-!
# A124966: Numbers which can be expressed as the ordered sum of 3 squares in 2 or more different ways.

The programs for A124966, there is no canonical definition to state claims against.
-/

/-! ## A124966.P12102792131550068023

`lt[1, A000164(n)]`
-/

namespace A124966.P12102792131550068023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124966.P12102792131550068023

/-! ## A124966.P10671212999770510466

`eq[1, A261143(A000164(n)²)]`
-/

namespace A124966.P10671212999770510466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A000164 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P10671212999770510466

/-! ## A124966.P3064339123320681774

`eq[1, A261143(A000164(n)+1)]`
-/

namespace A124966.P3064339123320681774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A000164 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P3064339123320681774

/-! ## A124966.P14579822122600022524

`eq[1, A261143(2*A000164(n))]`
-/

namespace A124966.P14579822122600022524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (2 * A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P14579822122600022524

/-! ## A124966.P17943742565023556805

`lt[1, A025427(n)+A000161(n)]`
-/

namespace A124966.P17943742565023556805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124966.P17943742565023556805

/-! ## A124966.P1395133678537370636

`lt[A025428(n)+1, A002635(n)]`
-/

namespace A124966.P1395133678537370636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124966.P1395133678537370636

/-! ## A124966.P2979887641362070900

`eq[1, A291678(a(A000164(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A124966.P2979887641362070900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A291678 (f2 (A000164 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P2979887641362070900

/-! ## A124966.P9263044596650944809

`eq[1, A331844(a(A000164(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A124966.P9263044596650944809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A331844 (f2 (A000164 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P9263044596650944809

/-! ## A124966.P12088342079450874316

`eq[3, A172104(a(A000164(n))+1)]` with `a(0)=1, a(1)=1`
-/

namespace A124966.P12088342079450874316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A172104 (f2 (A000164 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P12088342079450874316

/-! ## A124966.P13990525634491577757

`eq[A000038(n), A130779(A000164(n)²)]`
-/

namespace A124966.P13990525634491577757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A000164 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124966.P13990525634491577757

/-! ## A124966.P1365301901379360271

`eq[A000038(n), A329678(A000164(n)²)]`
-/

namespace A124966.P1365301901379360271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A000164 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124966.P1365301901379360271

/-! ## A124966.P16575725437615244454

`lt[1, A110654(A000925(n))+A025427(n)]`
-/

namespace A124966.P16575725437615244454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124966.P16575725437615244454

/-! ## A124966.P14008877815234815925

`eq[A000038(n), A329678(A000164(n)+2)]`
-/

namespace A124966.P14008877815234815925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A000164 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124966.P14008877815234815925

/-! ## A124966.P29387362287880358

`lt[1, A216282(A022144(n))+A025436(n)]`
-/

namespace A124966.P29387362287880358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124966.P29387362287880358

/-! ## A124966.P18425557838319674552

`eq[1, A014963(A048477(A000164(n))+1)]`
-/

namespace A124966.P18425557838319674552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048477 (A000164 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124966.P18425557838319674552

/-!
# A124967: Numbers which can be expressed as the ordered sum of 3 squares in 3 or more different ways.

The programs for A124967, there is no canonical definition to state claims against.
-/

/-! ## A124967.P7311619471841053631

`lt[2, A000164(n)]`
-/

namespace A124967.P7311619471841053631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124967.P7311619471841053631

/-! ## A124967.P17820217880274970457

`lt[2, A025427(n)+A000161(n)]`
-/

namespace A124967.P17820217880274970457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124967.P17820217880274970457

/-! ## A124967.P17347399809260739149

`lt[A025428(n)+2, A002635(n)]`
-/

namespace A124967.P17347399809260739149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124967.P17347399809260739149

/-! ## A124967.P3192678412170616525

`eq[2, 2%A284565(A000164(n)²)]`
-/

namespace A124967.P3192678412170616525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A284565 (A000164 n ^ 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124967.P3192678412170616525

/-! ## A124967.P18262862685736223120

`eq[1, A331844(a(A000164(n)))]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A124967.P18262862685736223120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 2] fun n f2 =>
  A331844 (f2 (A000164 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124967.P18262862685736223120

/-! ## A124967.P10883334674620669865

`eq[A000038(n), A130779(A000164(n))]`
-/

namespace A124967.P10883334674620669865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124967.P10883334674620669865

/-! ## A124967.P5650550576645044634

`eq[A000038(n), A329678(A000164(n)+1)]`
-/

namespace A124967.P5650550576645044634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A000164 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124967.P5650550576645044634

/-! ## A124967.P6598437227382864214

`eq[A057427(n), A261143(A000164(n))]`
-/

namespace A124967.P6598437227382864214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124967.P6598437227382864214

/-! ## A124967.P5158879963494435334

`eq[1, A014963(A048477(A000164(n))+2)]`
-/

namespace A124967.P5158879963494435334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A048477 (A000164 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124967.P5158879963494435334

/-!
# A124968: Numbers which can be expressed as the ordered sum of 3 squares in 4 or more different ways.

The programs for A124968, there is no canonical definition to state claims against.
-/

/-! ## A124968.P14563078274675211837

`lt[3, A000164(n)]`
-/

namespace A124968.P14563078274675211837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124968.P14563078274675211837

/-! ## A124968.P11629593905474799430

`lt[3, A025427(n)+A000161(n)]`
-/

namespace A124968.P11629593905474799430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124968.P11629593905474799430

/-! ## A124968.P3142242299325685419

`lt[3, A002635(n)-A025428(n)]`
-/

namespace A124968.P3142242299325685419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124968.P3142242299325685419

/-! ## A124968.P10961029837184823604

`eq[3, 3%A172104(A000164(n)+1)]`
-/

namespace A124968.P10961029837184823604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A172104 (A000164 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124968.P10961029837184823604

/-! ## A124968.P6468044190734399776

`eq[A000038(n), A329678(A000164(n))]`
-/

namespace A124968.P6468044190734399776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124968.P6468044190734399776

/-! ## A124968.P14979419681117826918

`lt[3, A110654(A000925(n))+A025427(n)]`
-/

namespace A124968.P14979419681117826918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124968.P14979419681117826918

/-! ## A124968.P11330297509539573178

`lt[3, A010052(n)+A025427(n)+A025426(n)]`
-/

namespace A124968.P11330297509539573178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124968.P11330297509539573178

/-! ## A124968.P1843888980815656081

`eq[2*A329678(A000164(n)), A329678(n)]`
-/

namespace A124968.P1843888980815656081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329678 (A000164 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124968.P1843888980815656081

/-! ## A124968.P4081358429576780725

`eq[0, A008683(A000164(n)!)]`
-/

namespace A124968.P4081358429576780725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (A000164 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124968.P4081358429576780725

/-! ## A124968.P6939697606208604127

`eq[2, A001221(A000164(n)!+2)]`
-/

namespace A124968.P6939697606208604127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A000164 n).toNat + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124968.P6939697606208604127

/-!
# A124969: Numbers which can be expressed as an ordered sum of 3 squares in 5 or more different ways.

The programs for A124969, there is no canonical definition to state claims against.
-/

/-! ## A124969.P9873952813219028907

`lt[4, A000164(n)]`
-/

namespace A124969.P9873952813219028907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124969.P9873952813219028907

/-! ## A124969.P2068919124151098929

`lt[4, A025427(n)+A000161(n)]`
-/

namespace A124969.P2068919124151098929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124969.P2068919124151098929

/-! ## A124969.P16243015717077478275

`lt[4, A002635(n)-A025428(n)]`
-/

namespace A124969.P16243015717077478275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124969.P16243015717077478275

/-! ## A124969.P18235765491147288889

`eq[1, A331844(a(A000164(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A124969.P18235765491147288889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2, 2] fun n f2 =>
  A331844 (f2 (A000164 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124969.P18235765491147288889

/-! ## A124969.P7558742651654785140

`lt[4, A110654(A000925(n))+A025427(n)]`
-/

namespace A124969.P7558742651654785140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124969.P7558742651654785140

/-! ## A124969.P10137339803911876256

`lt[4, A010052(n)+A025427(n)+A025426(n)]`
-/

namespace A124969.P10137339803911876256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124969.P10137339803911876256

/-! ## A124969.P10097050968419310379

`eq[2, A110592(A000164(4*n))]`
-/

namespace A124969.P10097050968419310379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A000164 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124969.P10097050968419310379

/-!
# A124970: Smallest positive integer which can be expressed as the ordered sum of 3 squares in exactly n different ways.

The programs for A124970, there is no canonical definition to state claims against.
-/

/-! ## A124970.P5025824321272242888

`A122699(n)+char[1]`
-/

namespace A124970.P5025824321272242888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122699 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A124970.P5025824321272242888

/-! ## A124970.P3251872880975234618

`A178333(n)+A122699(n)`
-/

namespace A124970.P3251872880975234618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A122699 n

end

end A124970.P3251872880975234618

/-! ## A124970.P8691318958367451271

`or(A063524(n), A122699(n))`
-/

namespace A124970.P8691318958367451271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A122699 n)

end

end A124970.P8691318958367451271

/-! ## A124970.P6441758250099896412

`or(A122699(n), A329678(n))`
-/

namespace A124970.P6441758250099896412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122699 n) (A329678 n)

end

end A124970.P6441758250099896412

/-! ## A124970.P18426403494004753339

`A000027(or(char[1], A122699(n)))`
-/

namespace A124970.P18426403494004753339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A122699 n)).toNat

end

end A124970.P18426403494004753339

/-! ## A124970.P13268504592014590239

`A000027(xor(char[1], A122699(n)))`
-/

namespace A124970.P13268504592014590239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A122699 n)).toNat

end

end A124970.P13268504592014590239

/-! ## A124970.P11106457348054056059

`or(char[A000152(n)], A122699(n))`
-/

namespace A124970.P11106457348054056059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P11106457348054056059

/-! ## A124970.P1617999597464794791

`or(char[A001835(n)], A122699(n))`
-/

namespace A124970.P1617999597464794791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P1617999597464794791

/-! ## A124970.P10204753197933165944

`or(char[A001846(n)], A122699(n))`
-/

namespace A124970.P10204753197933165944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P10204753197933165944

/-! ## A124970.P2093086098959165744

`or(char[A004534(n)], A122699(n))`
-/

namespace A124970.P2093086098959165744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P2093086098959165744

/-! ## A124970.P10293024054724334896

`or(char[A023929(n)], A122699(n))`
-/

namespace A124970.P10293024054724334896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023929 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P10293024054724334896

/-! ## A124970.P7202576913593709451

`or(char[A032443(n)], A122699(n))`
-/

namespace A124970.P7202576913593709451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P7202576913593709451

/-! ## A124970.P10598929665616312319

`or(char[A122704(n)], A122699(n))`
-/

namespace A124970.P10598929665616312319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P10598929665616312319

/-! ## A124970.P2638749683573730987

`or(char[A122707(n)], A122699(n))`
-/

namespace A124970.P2638749683573730987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122707 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P2638749683573730987

/-! ## A124970.P10376670703237920689

`or(char[A122747(n)], A122699(n))`
-/

namespace A124970.P10376670703237920689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A122699 n)

end

end A124970.P10376670703237920689

/-! ## A124970.P13650151947815378761

`gcd(val(A000040(n+1), 3), A122699(n))`
-/

namespace A124970.P13650151947815378761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 3 : ℤ) (A122699 n)

end

end A124970.P13650151947815378761

/-! ## A124970.P15503525724942547201

`A122699(n)^A008683(3*p?[round(8*n/7)])`
-/

namespace A124970.P15503525724942547201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122699 n : ℚ) ^ (A008683 (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A124970.P15503525724942547201

/-! ## A124970.P507206956500958664

`or(A000035(A000010(n+1)), A122699(n))`
-/

namespace A124970.P507206956500958664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A000010 (n + 1)).toNat) (A122699 n)

end

end A124970.P507206956500958664

/-! ## A124970.P17371466214862549381

`A122699(n)^(A006530(A005893(n))%2)`
-/

namespace A124970.P17371466214862549381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122699 n : ℚ) ^ (Int.tmod (A006530 (A005893 n).toNat) 2 : ℤ)

end

end A124970.P17371466214862549381

/-! ## A124970.P13149492489649376938

`or(val(A000040(n²+1), 3), A122699(n))`
-/

namespace A124970.P13149492489649376938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A000040 (n ^ 2 + 1)).toNat 3 : ℤ) (A122699 n)

end

end A124970.P13149492489649376938

/-!
# A124971: Numbers k which can be expressed as the ordered sum of 3 squares in 2 or more different ways and such that k+1 has the same property.

The programs for A124971, there is no canonical definition to state claims against.
-/

/-! ## A124971.P13833534519795099718

`∩[A124966(n+1)-1, A124966(n+1)]`
-/

namespace A124971.P13833534519795099718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124971.P13833534519795099718

/-! ## A124971.P6421036730742047106

`∩[lt[1, A000164(n+1)], A124966(n+1)]`
-/

namespace A124971.P6421036730742047106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A124971.P6421036730742047106

/-! ## A124971.P2158194375020502549

`A124966(eq[1, A124966(n+2)-A124966(n+1)]+1)`
-/

namespace A124971.P2158194375020502549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 2) - A124966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124971.P2158194375020502549

/-! ## A124971.P6584063590205281564

`A124966(eq[1, A124966(n+2)%A124966(n+1)]+1)`
-/

namespace A124971.P6584063590205281564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124966 (n + 2)) (A124966 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124971.P6584063590205281564

/-! ## A124971.P13616615237489305533

`∩[A124966(n+1), A233583(A124966(n+1))]`
-/

namespace A124971.P13616615237489305533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A124966 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124971.P13616615237489305533

/-!
# A124973: a(n) = Sum_{k=0..(n-2)/2} a(k)a*(n-1-k), with a(0) = a(1) = 1.

The programs for A124973, there is no canonical definition to state claims against.
-/

/-! ## A124973.P17874528089076401380

`ceil(A319765(n)/Δ[n²])`
-/

namespace A124973.P17874528089076401380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319765 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌉

end

end A124973.P17874528089076401380

/-! ## A124973.P15248346502984626742

`A067086(floor(sqrt(A327014(n))))`
-/

namespace A124973.P15248346502984626742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (Int.sqrt (A327014 n)).toNat

end

end A124973.P15248346502984626742

/-! ## A124973.P1898368980801146449

`ceil(A282986(A062399(n))/14)`
-/

namespace A124973.P1898368980801146449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282986 (A062399 n).toNat : ℚ) / 14⌉

end

end A124973.P1898368980801146449

/-! ## A124973.P664382811531973132

`ceil(A282986(A120126(n))/14)`
-/

namespace A124973.P664382811531973132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282986 (A120126 n).toNat : ℚ) / 14⌉

end

end A124973.P664382811531973132

/-! ## A124973.P15062641725285934561

`ceil(A154439(A282986(n))/14)`
-/

namespace A124973.P15062641725285934561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154439 (A282986 n).toNat : ℚ) / 14⌉

end

end A124973.P15062641725285934561

/-!
# A124975: Table (read by antidiagonals): t(1,n) = t(m,1) = 1 for all m and n. t(m,n) = (product{k=1 to m-1} t(k,n)) + (product{k=1 to n-1} t(m,k)).

The programs for A124975, there is no canonical definition to state claims against.
-/

/-! ## A124975.P13568004848536738818

`A004736(A007091(A300380(n+1)²))`
-/

namespace A124975.P13568004848536738818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A007091 (A300380 (n + 1) ^ 2).toNat).toNat

end

end A124975.P13568004848536738818

/-!
# A124977: Least positive number k such that 2^k mod k = 2n+1, or 0 if no such k exists.

The programs for A124977, there is no canonical definition to state claims against.
-/

/-! ## A124977.P7187418255795837808

`A036236(2*n+1)`
-/

namespace A124977.P7187418255795837808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 (2 * n + 1)

end

end A124977.P7187418255795837808

/-! ## A124977.P10760470578206430046

`lcm(4, A036236(n+1+n))/4`
-/

namespace A124977.P10760470578206430046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A036236 (n + 1 + n)) : ℚ) / 4

end

end A124977.P10760470578206430046

/-! ## A124977.P3605524593871822929

`and(-1, A036236((n+1)²-n²))`
-/

namespace A124977.P3605524593871822929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A036236 ((n + 1) ^ 2 - n ^ 2))

end

end A124977.P3605524593871822929

/-! ## A124977.P5518075158105972873

`or(A010060(n), A036236((n+1)²-n²))`
-/

namespace A124977.P5518075158105972873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 n) (A036236 ((n + 1) ^ 2 - n ^ 2))

end

end A124977.P5518075158105972873

/-! ## A124977.P13751439184236977788

`or(A036236((n+1)²-n²), A118605(n))`
-/

namespace A124977.P13751439184236977788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036236 ((n + 1) ^ 2 - n ^ 2)) (A118605 n)

end

end A124977.P13751439184236977788

/-!
# A124979: Numbers in A118882 for which 5 is not a divisor.

The programs for A124979, there is no canonical definition to state claims against.
-/

/-! ## A124979.P11815971127330602372

`filter[A118882(n+1), A011558(#)]`
-/

namespace A124979.P11815971127330602372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A124979.P11815971127330602372

/-! ## A124979.P12774056885039952739

`lt[2, -A133574(n)]`
-/

namespace A124979.P12774056885039952739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124979.P12774056885039952739

/-!
# A124980: Smallest strictly positive number decomposable in n different ways as a sum of two squares.

The programs for A124980, there is no canonical definition to state claims against.
-/

/-! ## A124980.P11327913841702529299

`or(1, A000446(n+1))`
-/

namespace A124980.P11327913841702529299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000446 (n + 1))

end

end A124980.P11327913841702529299

/-! ## A124980.P1729844196628790793

`A000446(n+1)+A000007(n)`
-/

namespace A124980.P1729844196628790793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000446 (n + 1) + A000007 n

end

end A124980.P1729844196628790793

/-! ## A124980.P769517873056045726

`A036987(2*n)+A000446(n+1)`
-/

namespace A124980.P769517873056045726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + A000446 (n + 1)

end

end A124980.P769517873056045726

/-! ## A124980.P7276293514642815915

`A000446(n+1)+C(2, A019402(n+1))`
-/

namespace A124980.P7276293514642815915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000446 (n + 1) + (Nat.choose 2 (A019402 (n + 1)).toNat : ℤ)

end

end A124980.P7276293514642815915

/-! ## A124980.P16485576560382207104

`A000446(n+1)^(A071383(n+1)%2)`
-/

namespace A124980.P16485576560382207104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000446 (n + 1) : ℚ) ^ (Int.tmod (A071383 (n + 1)) 2 : ℤ)

end

end A124980.P16485576560382207104

/-! ## A124980.P8775964448616027678

`A000446(n+1)-A008683(2*(n+1)²)`
-/

namespace A124980.P8775964448616027678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000446 (n + 1) - A008683 (2 * (n + 1) ^ 2)

end

end A124980.P8775964448616027678

/-! ## A124980.P3901830279588626851

`A056594(A004273(n))+A000446(n+1)`
-/

namespace A124980.P3901830279588626851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A004273 n).toNat + A000446 (n + 1)

end

end A124980.P3901830279588626851

/-! ## A124980.P14293619509293639213

`A056594(A093411(n))+A000446(n+1)`
-/

namespace A124980.P14293619509293639213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A093411 n).toNat + A000446 (n + 1)

end

end A124980.P14293619509293639213

/-! ## A124980.P5415926484895341826

`A319797(A253145(n))+A000446(n+1)`
-/

namespace A124980.P5415926484895341826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A253145 n).toNat + A000446 (n + 1)

end

end A124980.P5415926484895341826

/-! ## A124980.P8879828064880333338

`A000446(n+1)+A000086(A060968(n+1))`
-/

namespace A124980.P8879828064880333338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000446 (n + 1) + A000086 (A060968 (n + 1)).toNat

end

end A124980.P8879828064880333338

/-!
# A124981: Odd numbers that are not the sum of 2 squares.

The programs for A124981, the canonical program `A124981.P2987283090334451958` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124981 has offset 1).

The definition of A124981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124981.P12566573467125739908

`A062316(n+1)/2`
-/

namespace A124981.P12566573467125739908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062316 (n + 1) : ℚ) / 2

end

end A124981.P12566573467125739908

namespace A124981

/-- `A062316(n+1)/2` -/
def P12566573467125739908.Spec : Prop :=
  ∀ n, P12566573467125739908.a n = (A124981 (n + 1) : ℚ)

end A124981

/-! ## A124981.P4799731901040136574

`comp[n*(2-A229062(n))]`
-/

namespace A124981.P4799731901040136574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A229062 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124981.P4799731901040136574

namespace A124981

/-- `comp[n*(2-A229062(n))]` -/
def P4799731901040136574.Spec : Prop :=
  ∀ n, (P4799731901040136574.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P13828629504656837171

`A000265(A062316(n+1))`
-/

namespace A124981.P13828629504656837171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062316 (n + 1)).toNat

end

end A124981.P13828629504656837171

namespace A124981

/-- `A000265(A062316(n+1))` -/
def P13828629504656837171.Spec : Prop :=
  ∀ n, P13828629504656837171.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P2987283090334451958

`∪[A084109(n+1), A004767(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124981

/-- `∪[A084109(n+1), A004767(n)]` -/
def P2987283090334451958.Spec : Prop :=
  ∀ n, (P2987283090334451958.a n : ℤ) = A124981 (n + 1)

theorem P2987283090334451958.correct : P2987283090334451958.Spec := by
  intro n
  simp only [A124981, Nat.add_sub_cancel]

end A124981

/-! ## A124981.P2042716273808090768

`lt[A229062(n), val(A000027(n+1), 2)]`
-/

namespace A124981.P2042716273808090768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000027 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124981.P2042716273808090768

namespace A124981

/-- `lt[A229062(n), val(A000027(n+1), 2)]` -/
def P2042716273808090768.Spec : Prop :=
  ∀ n, (P2042716273808090768.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P10869541164774921257

`lt[2, A002828(A093178(n))]`
-/

namespace A124981.P10869541164774921257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124981.P10869541164774921257

namespace A124981

/-- `lt[2, A002828(A093178(n))]` -/
def P10869541164774921257.Spec : Prop :=
  ∀ n, (P10869541164774921257.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P4111777172270884213

`eq[1, A229062(n)+A010123(n)]`
-/

namespace A124981.P4111777172270884213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + A010123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124981.P4111777172270884213

namespace A124981

/-- `eq[1, A229062(n)+A010123(n)]` -/
def P4111777172270884213.Spec : Prop :=
  ∀ n, (P4111777172270884213.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P12252915113552912465

`eq[1, A229062(n)+A010127(n)]`
-/

namespace A124981.P12252915113552912465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + A010127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124981.P12252915113552912465

namespace A124981

/-- `eq[1, A229062(n)+A010127(n)]` -/
def P12252915113552912465.Spec : Prop :=
  ∀ n, (P12252915113552912465.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P8044695316124007063

`eq[1, A229062(n)+A010131(n)]`
-/

namespace A124981.P8044695316124007063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + A010131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124981.P8044695316124007063

namespace A124981

/-- `eq[1, A229062(n)+A010131(n)]` -/
def P8044695316124007063.Spec : Prop :=
  ∀ n, (P8044695316124007063.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P3045653534399577409

`eq[1, A229062(n)+A010166(n)]`
-/

namespace A124981.P3045653534399577409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n + A010166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124981.P3045653534399577409

namespace A124981

/-- `eq[1, A229062(n)+A010166(n)]` -/
def P3045653534399577409.Spec : Prop :=
  ∀ n, (P3045653534399577409.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P16672834496433110078

`record[lcm(2, A022544(n+1))/2]`
-/

namespace A124981.P16672834496433110078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A022544 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124981.P16672834496433110078

namespace A124981

/-- `record[lcm(2, A022544(n+1))/2]` -/
def P16672834496433110078.Spec : Prop :=
  ∀ n, P16672834496433110078.a n = (A124981 (n + 1) : ℚ)

end A124981

/-! ## A124981.P6268123670002182904

`filter[A022544(n+1), A053867(#)]`
-/

namespace A124981.P6268123670002182904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A124981.P6268123670002182904

namespace A124981

/-- `filter[A022544(n+1), A053867(#)]` -/
def P6268123670002182904.Spec : Prop :=
  ∀ n, P6268123670002182904.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P14257440086543260079

`filter[A022544(n+1), A323158(#)]`
-/

namespace A124981.P14257440086543260079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A124981.P14257440086543260079

namespace A124981

/-- `filter[A022544(n+1), A323158(#)]` -/
def P14257440086543260079.Spec : Prop :=
  ∀ n, P14257440086543260079.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P16445547203788477615

`filter[A022544(n+1), A324908(#)]`
-/

namespace A124981.P16445547203788477615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A124981.P16445547203788477615

namespace A124981

/-- `filter[A022544(n+1), A324908(#)]` -/
def P16445547203788477615.Spec : Prop :=
  ∀ n, P16445547203788477615.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P1474305802190730956

`filter[A022544(n+1), A347871(#)]`
-/

namespace A124981.P1474305802190730956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347871 (f1 j).toNat = 1) n)

end

end A124981.P1474305802190730956

namespace A124981

/-- `filter[A022544(n+1), A347871(#)]` -/
def P1474305802190730956.Spec : Prop :=
  ∀ n, P1474305802190730956.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P11352473592898407765

`filter[A022544(n+1), A374474(#)]`
-/

namespace A124981.P11352473592898407765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A124981.P11352473592898407765

namespace A124981

/-- `filter[A022544(n+1), A374474(#)]` -/
def P11352473592898407765.Spec : Prop :=
  ∀ n, P11352473592898407765.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P17318820217943485081

`filter[A022544(n+1), A379952(#)]`
-/

namespace A124981.P17318820217943485081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A124981.P17318820217943485081

namespace A124981

/-- `filter[A022544(n+1), A379952(#)]` -/
def P17318820217943485081.Spec : Prop :=
  ∀ n, P17318820217943485081.a n = A124981 (n + 1)

end A124981

/-! ## A124981.P13939022041097435546

`∩[A022544(n+1), A004273(n)]`
-/

namespace A124981.P13939022041097435546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124981.P13939022041097435546

namespace A124981

/-- `∩[A022544(n+1), A004273(n)]` -/
def P13939022041097435546.Spec : Prop :=
  ∀ n, (P13939022041097435546.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P12726438514255920369

`∩[A022544(n+1), A004274(n)]`
-/

namespace A124981.P12726438514255920369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124981.P12726438514255920369

namespace A124981

/-- `∩[A022544(n+1), A004274(n)]` -/
def P12726438514255920369.Spec : Prop :=
  ∀ n, (P12726438514255920369.a n : ℤ) = A124981 (n + 1)

end A124981

/-! ## A124981.P16257656129334715112

`∩[A022544(n+1), A004276(n)]`
-/

namespace A124981.P16257656129334715112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124981.P16257656129334715112

namespace A124981

/-- `∩[A022544(n+1), A004276(n)]` -/
def P16257656129334715112.Spec : Prop :=
  ∀ n, (P16257656129334715112.a n : ℤ) = A124981 (n + 1)

end A124981

/-!
# A124982: Nonprime numbers with a unique partition as a sum of 2 squares x^2 + y^2.

The programs for A124982, the canonical program `A124982.P3848826947746230270` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124982 has offset 1).

The definition of A124982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1262 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124982.P3848826947746230270

`∩[A125022(n+1), A141468(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A124982

/-- `∩[A125022(n+1), A141468(n+1)]` -/
def P3848826947746230270.Spec : Prop :=
  ∀ n, (P3848826947746230270.a n : ℤ) = A124982 (n + 1)

theorem P3848826947746230270.correct : P3848826947746230270.Spec := by
  intro n
  simp only [A124982, Nat.add_sub_cancel]

end A124982

/-! ## A124982.P13139179420963899229

`eq[1, A055671(n)+A000161(n)]`
-/

namespace A124982.P13139179420963899229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124982.P13139179420963899229

namespace A124982

/-- `eq[1, A055671(n)+A000161(n)]` -/
def P13139179420963899229.Spec : Prop :=
  ∀ n, (P13139179420963899229.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P6672638843742301993

`eq[1, A055672(n)+A000161(n)]`
-/

namespace A124982.P6672638843742301993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124982.P6672638843742301993

namespace A124982

/-- `eq[1, A055672(n)+A000161(n)]` -/
def P6672638843742301993.Spec : Prop :=
  ∀ n, (P6672638843742301993.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P11504153497230487220

`eq[A000161(n), A005408(A055672(n))]`
-/

namespace A124982.P11504153497230487220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A055672 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124982.P11504153497230487220

namespace A124982

/-- `eq[A000161(n), A005408(A055672(n))]` -/
def P11504153497230487220.Spec : Prop :=
  ∀ n, (P11504153497230487220.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P6414550762018875746

`eq[A052916(A000925(n)), A055671(n)]`
-/

namespace A124982.P6414550762018875746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052916 (A000925 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124982.P6414550762018875746

namespace A124982

/-- `eq[A052916(A000925(n)), A055671(n)]` -/
def P6414550762018875746.Spec : Prop :=
  ∀ n, (P6414550762018875746.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P1908780380123637988

`eq[A055671(n), A198261(A004018(n))]`
-/

namespace A124982.P1908780380123637988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198261 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124982.P1908780380123637988

namespace A124982

/-- `eq[A055671(n), A198261(A004018(n))]` -/
def P1908780380123637988.Spec : Prop :=
  ∀ n, (P1908780380123637988.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P9749384326930264059

`eq[A000161(n), A278222(A055671(n)/2)]`
-/

namespace A124982.P9749384326930264059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.roundAway ((A055671 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124982.P9749384326930264059

namespace A124982

/-- `eq[A000161(n), A278222(A055671(n)/2)]` -/
def P9749384326930264059.Spec : Prop :=
  ∀ n, (P9749384326930264059.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P10452655411422295397

`eq[A000161(n), A001316(A055671(n)/2)]`
-/

namespace A124982.P10452655411422295397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.roundAway ((A055671 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124982.P10452655411422295397

namespace A124982

/-- `eq[A000161(n), A001316(A055671(n)/2)]` -/
def P10452655411422295397.Spec : Prop :=
  ∀ n, (P10452655411422295397.a n : ℤ) = A124982 (n + 1)

end A124982

/-! ## A124982.P17715523277254163593

`eq[A000161(n), A278222(A055671(n))]`
-/

namespace A124982.P17715523277254163593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A055671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124982.P17715523277254163593

namespace A124982

/-- `eq[A000161(n), A278222(A055671(n))]` -/
def P17715523277254163593.Spec : Prop :=
  ∀ n, (P17715523277254163593.a n : ℤ) = A124982 (n + 1)

end A124982

/-!
# A124983: Nonprime numbers == 1 (mod 4) with a unique partition as a sum of 2 squares x^2 + y^2.

The programs for A124983, there is no canonical definition to state claims against.
-/

/-! ## A124983.P1962925419607383366

`4*A125020(n+1)+1`
-/

namespace A124983.P1962925419607383366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125020 (n + 1) + 1

end

end A124983.P1962925419607383366

/-! ## A124983.P7525341610126939801

`∩[A125018(n+1), A381950(n+1)]`
-/

namespace A124983.P7525341610126939801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P7525341610126939801

/-! ## A124983.P2485415376443958430

`∩[A124982(n+1), A125018(n+1)]`
-/

namespace A124983.P2485415376443958430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P2485415376443958430

/-! ## A124983.P14177981399041428098

`∩[A124982(n+1), A381950(n+1)]`
-/

namespace A124983.P14177981399041428098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P14177981399041428098

/-! ## A124983.P9241224275171598543

`filter[A125018(n+1), A373978(#)]`
-/

namespace A124983.P9241224275171598543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A124983.P9241224275171598543

/-! ## A124983.P9074554203794944860

`filter[A124982(n+2), A373978(#)]`
-/

namespace A124983.P9074554203794944860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A124983.P9074554203794944860

/-! ## A124983.P14197362240907446261

`∩[A057653(n+1), A124982(n+1)]`
-/

namespace A124983.P14197362240907446261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P14197362240907446261

/-! ## A124983.P11751244692426427792

`filter[A143575(n+2), A373978(#)]`
-/

namespace A124983.P11751244692426427792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A124983.P11751244692426427792

/-! ## A124983.P11026470273909209921

`∩[A143575(n+1), A381950(n+1)]`
-/

namespace A124983.P11026470273909209921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P11026470273909209921

/-! ## A124983.P9937230249914576825

`filter[A125022(n+2), A373978(#)]`
-/

namespace A124983.P9937230249914576825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A124983.P9937230249914576825

/-! ## A124983.P3590530349353026863

`∩[A125022(n+1), A381950(n+1)]`
-/

namespace A124983.P3590530349353026863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P3590530349353026863

/-! ## A124983.P11483218936806575555

`filter[A125018(n+1), A005171(#)]`
-/

namespace A124983.P11483218936806575555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A124983.P11483218936806575555

/-! ## A124983.P4340550262436274344

`filter[A125018(n+1), A087049(#)]`
-/

namespace A124983.P4340550262436274344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A124983.P4340550262436274344

/-! ## A124983.P10352766806634946583

`filter[A125018(n+1), A292438(#)]`
-/

namespace A124983.P10352766806634946583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A124983.P10352766806634946583

/-! ## A124983.P4135592360039457583

`∩[A091113(n+1), A124982(n+1)]`
-/

namespace A124983.P4135592360039457583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P4135592360039457583

/-! ## A124983.P14356113054307757154

`∩[A091113(n+1), A125018(n+1)]`
-/

namespace A124983.P14356113054307757154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P14356113054307757154

/-! ## A124983.P16554225447747137761

`∩[A091113(n+1), A125022(n+1)]`
-/

namespace A124983.P16554225447747137761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P16554225447747137761

/-! ## A124983.P3290837136008707229

`∩[A091113(n+1), A143575(n+1)]`
-/

namespace A124983.P3290837136008707229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P3290837136008707229

/-! ## A124983.P12784382685976741408

`∩[A125018(n+1), A388985(n+1)]`
-/

namespace A124983.P12784382685976741408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124983.P12784382685976741408

/-! ## A124983.P12591605230151911613

`A016813(A125020(n+1))`
-/

namespace A124983.P12591605230151911613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A125020 (n + 1)).toNat

end

end A124983.P12591605230151911613

/-!
# A124984: 

The programs for A124984, there is no canonical definition to state claims against.
-/

/-! ## A124984.P13910819234032227549

`ratio[(a(n-1)²+2)*a(n-1)]` with `a(0)=1`
-/

namespace A124984.P13910819234032227549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) ^ 2 + 2) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A124984.P13910819234032227549

/-!
# A124994: Number of base 31 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124994, there is no canonical definition to state claims against.
-/

/-! ## A124994.P10589221374249762740

`A124958(n)+A014682(A124958(n)-A124956(n))`
-/

namespace A124994.P10589221374249762740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124958 n + A014682 (A124958 n - A124956 n).toNat

end

end A124994.P10589221374249762740

/-! ## A124994.P6765636243186433638

`A124957(n)+A014682(A124957(n)-A124953(n))`
-/

namespace A124994.P6765636243186433638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124957 n + A014682 (A124957 n - A124953 n).toNat

end

end A124994.P6765636243186433638

/-! ## A124994.P12635742337601853528

`A000265(A124958(n)+A005191(n))`
-/

namespace A124994.P12635742337601853528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124958 n + A005191 n).toNat

end

end A124994.P12635742337601853528

/-!
# A124995: a(n) is the constant term in expansion of Product_{ k = 1..n } (x^k + 1/x^k)^3.

The programs for A124995, there is no canonical definition to state claims against.
-/

/-! ## A124995.P6514563155764739211

`A133872(n+1)*A369709(n)`
-/

namespace A124995.P6514563155764739211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (n + 1) * A369709 n

end

end A124995.P6514563155764739211

/-! ## A124995.P7538713692119158643

`A059841(A000217(n))*A369709(n)`
-/

namespace A124995.P7538713692119158643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000217 n).toNat * A369709 n

end

end A124995.P7538713692119158643

/-! ## A124995.P9242233056386960280

`A000035(A168209(n+1))*A369709(n)`
-/

namespace A124995.P9242233056386960280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A168209 (n + 1)).toNat * A369709 n

end

end A124995.P9242233056386960280

/-!
# A124998: Number of base 32 circular n-digit numbers with adjacent digits differing by 2 or less.

The programs for A124998, there is no canonical definition to state claims against.
-/

/-! ## A124998.P8679768108972468499

`A124957(n)+A014682(A124957(n)-A124951(n))`
-/

namespace A124998.P8679768108972468499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124957 n + A014682 (A124957 n - A124951 n).toNat

end

end A124998.P8679768108972468499

/-! ## A124998.P6263075669056990662

`A124958(n)+A014682(A124958(n)-A124954(n))`
-/

namespace A124998.P6263075669056990662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124958 n + A014682 (A124958 n - A124954 n).toNat

end

end A124998.P6263075669056990662

/-! ## A124998.P17549581334379649450

`A124952(n)+A014682(A124952(n)-A124843(n))`
-/

namespace A124998.P17549581334379649450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124952 n + A014682 (A124952 n - A124843 n).toNat

end

end A124998.P17549581334379649450

/-!
# A124999: Number of base 5 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A124999, the canonical program `A124999.P9159828767988104326` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124999 has offset 0).

The definition of A124999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124999.P9159828767988104326

`5*a(n-1)-a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=101`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A124999

/-- `5*a(n-1)-a(n-2)-3*a(n-3)` -/
def P9159828767988104326.Spec : Prop :=
  ∀ n, P9159828767988104326.a n = A124999 n

theorem P9159828767988104326.correct : P9159828767988104326.Spec := by
  intro n
  simp only [A124999]

end A124999

/-! ## A124999.P12280417638383681342

`ceil(sin(n)²)*A080042(n)+1`
-/

namespace A124999.P12280417638383681342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A080042 n + 1

end

end A124999.P12280417638383681342

namespace A124999

/-- `ceil(sin(n)²)*A080042(n)+1` -/
def P12280417638383681342.Spec : Prop :=
  ∀ n, P12280417638383681342.a n = A124999 n

end A124999

/-! ## A124999.P9749811159391767665

`A158388(n)+A080042(n)`
-/

namespace A124999.P9749811159391767665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A080042 n

end

end A124999.P9749811159391767665

namespace A124999

/-- `A158388(n)+A080042(n)` -/
def P9749811159391767665.Spec : Prop :=
  ∀ n, P9749811159391767665.a n = A124999 n

end A124999

/-! ## A124999.P7827254845536372550

`A057427(n)*A080042(n)+1`
-/

namespace A124999.P7827254845536372550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A080042 n + 1

end

end A124999.P7827254845536372550

namespace A124999

/-- `A057427(n)*A080042(n)+1` -/
def P7827254845536372550.Spec : Prop :=
  ∀ n, P7827254845536372550.a n = A124999 n

end A124999

/-! ## A124999.P8966129108511749860

`∏{e}[A307746(n+1), A080042(n)+#]`
-/

namespace A124999.P8966129108511749860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A080042 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A124999.P8966129108511749860

namespace A124999

/-- `∏{e}[A307746(n+1), A080042(n)+#]` -/
def P8966129108511749860.Spec : Prop :=
  ∀ n, P8966129108511749860.a n = A124999 n

end A124999

/-! ## A124999.P7370721811073231136

`A080042(n)+A033999(A008458(n))`
-/

namespace A124999.P7370721811073231136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n + A033999 (A008458 n).toNat

end

end A124999.P7370721811073231136

namespace A124999

/-- `A080042(n)+A033999(A008458(n))` -/
def P7370721811073231136.Spec : Prop :=
  ∀ n, P7370721811073231136.a n = A124999 n

end A124999

/-! ## A124999.P3288779446324725200

`A080042(n)+A033999(A008574(n))`
-/

namespace A124999.P3288779446324725200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n + A033999 (A008574 n).toNat

end

end A124999.P3288779446324725200

namespace A124999

/-- `A080042(n)+A033999(A008574(n))` -/
def P3288779446324725200.Spec : Prop :=
  ∀ n, P3288779446324725200.a n = A124999 n

end A124999

/-! ## A124999.P8729323658635261308

`A080042(n)+A033999(A315635(n))`
-/

namespace A124999.P8729323658635261308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n + A033999 (A315635 n).toNat

end

end A124999.P8729323658635261308

namespace A124999

/-- `A080042(n)+A033999(A315635(n))` -/
def P8729323658635261308.Spec : Prop :=
  ∀ n, P8729323658635261308.a n = A124999 n

end A124999

/-! ## A124999.P7237306311096036858

`A080042(n)-A033999(A045965(n+1))`
-/

namespace A124999.P7237306311096036858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n - A033999 (A045965 (n + 1)).toNat

end

end A124999.P7237306311096036858

namespace A124999

/-- `A080042(n)-A033999(A045965(n+1))` -/
def P7237306311096036858.Spec : Prop :=
  ∀ n, P7237306311096036858.a n = A124999 n

end A124999

/-! ## A124999.P205294898925827421

`A080042(n)-A260685(A076397(n+1))`
-/

namespace A124999.P205294898925827421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n - A260685 (A076397 (n + 1)).toNat

end

end A124999.P205294898925827421

namespace A124999

/-- `A080042(n)-A260685(A076397(n+1))` -/
def P205294898925827421.Spec : Prop :=
  ∀ n, P205294898925827421.a n = A124999 n

end A124999

/-! ## A124999.P6380483931675641413

`xor(A080042(n), A093178(A039915(n+1)))`
-/

namespace A124999.P6380483931675641413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080042 n) (A093178 (A039915 (n + 1)).toNat)

end

end A124999.P6380483931675641413

namespace A124999

/-- `xor(A080042(n), A093178(A039915(n+1)))` -/
def P6380483931675641413.Spec : Prop :=
  ∀ n, P6380483931675641413.a n = A124999 n

end A124999

/-! ## A124999.P14482046104041072527

`A080042(n)+A033999(A045965(n+1)+1)`
-/

namespace A124999.P14482046104041072527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 n + A033999 (A045965 (n + 1) + 1).toNat

end

end A124999.P14482046104041072527

namespace A124999

/-- `A080042(n)+A033999(A045965(n+1)+1)` -/
def P14482046104041072527.Spec : Prop :=
  ∀ n, P14482046104041072527.a n = A124999 n

end A124999

/-! ## A124999.P7284597323937495454

`A080042(n)%A091928(n)+1`
-/

namespace A124999.P7284597323937495454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080042 n) (A091928 n) + 1

end

end A124999.P7284597323937495454

namespace A124999

/-- `A080042(n)%A091928(n)+1` -/
def P7284597323937495454.Spec : Prop :=
  ∀ n, P7284597323937495454.a n = A124999 n

end A124999

