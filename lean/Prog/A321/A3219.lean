import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-!
# A321901: Irregular table read by rows: T(n,k) = (2*k+1)^(-(2*k+1)) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A321901, there is no canonical definition to state claims against.
-/

/-! ## A321901.P12196214984595316128

`A321904(n+1)+A321906(n+1)-A321903(n+1)`
-/

namespace A321901.P12196214984595316128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1) + (A321906 (n + 1) - A321903 (n + 1))

end

end A321901.P12196214984595316128

/-! ## A321901.P2662903845901352149

`A321904(n+1)+A320562(n+2)-A320561(n+2)`
-/

namespace A321901.P2662903845901352149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1) + (A320562 (n + 2) - A320561 (n + 2))

end

end A321901.P2662903845901352149

/-! ## A321901.P8495908295217368743

`A321906(n+1)+(A321904(n+1)-A321906(n+1))*A000035(n)`
-/

namespace A321901.P8495908295217368743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321906 (n + 1) + (A321904 (n + 1) - A321906 (n + 1)) * A000035 n

end

end A321901.P8495908295217368743

/-! ## A321901.P1594831469049943309

`A321906(n+1)+(A321904(n+1)-A321906(n+1))*A007814(n+1)`
-/

namespace A321901.P1594831469049943309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321906 (n + 1) + (A321904 (n + 1) - A321906 (n + 1)) * A007814 (n + 1)

end

end A321901.P1594831469049943309

/-! ## A321901.P5587266505488488679

`A321904(n+1)+A321902(n+2)-A321905(n+2)`
-/

namespace A321901.P5587266505488488679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1) + (A321902 (n + 2) - A321905 (n + 2))

end

end A321901.P5587266505488488679

/-!
# A321902: Irregular table read by rows: T(n,k) = (2*k+1)^(1/(2*k+1)) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A321902, there is no canonical definition to state claims against.
-/

/-! ## A321902.P4930006859480788180

`A320562(n+1)+A321905(n+1)-A320561(n+1)`
-/

namespace A321902.P4930006859480788180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320562 (n + 1) + (A321905 (n + 1) - A320561 (n + 1))

end

end A321902.P4930006859480788180

/-! ## A321902.P13092480469593016896

`A320562(n+1)+A321903(n+2)-A321904(n+2)`
-/

namespace A321902.P13092480469593016896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320562 (n + 1) + (A321903 (n + 2) - A321904 (n + 2))

end

end A321902.P13092480469593016896

/-! ## A321902.P5843887092043323087

`A320562(n+1)+A321906(n+2)-A321901(n+2)`
-/

namespace A321902.P5843887092043323087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320562 (n + 1) + (A321906 (n + 2) - A321901 (n + 2))

end

end A321902.P5843887092043323087

/-! ## A321902.P12290560743935045183

`A321905(∑[A000607(A034566(n+1))])`
-/

namespace A321902.P12290560743935045183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A034566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321905 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321902.P12290560743935045183

/-! ## A321902.P15462499169406221934

`A321905(n+1)%A171425(n+1)`
-/

namespace A321902.P15462499169406221934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321905 (n + 1)) (A171425 (n + 1))

end

end A321902.P15462499169406221934

/-!
# A321903: Irregular table read by rows: T(n,k) = (2*k+1)^(-1/(2*k+1)) mod 2^n, 0 <= k <= 2^(n-1) - 1.

The programs for A321903, there is no canonical definition to state claims against.
-/

/-! ## A321903.P7767532396505490688

`A321904(n+1)+A321906(n+1)-A321901(n+1)`
-/

namespace A321903.P7767532396505490688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1) + (A321906 (n + 1) - A321901 (n + 1))

end

end A321903.P7767532396505490688

/-! ## A321903.P16921539472902153389

`A321906(n+1)+A320561(n+2)-A320562(n+2)`
-/

namespace A321903.P16921539472902153389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321906 (n + 1) + (A320561 (n + 2) - A320562 (n + 2))

end

end A321903.P16921539472902153389

/-! ## A321903.P11905278978148787357

`A321904(n+1)+(A321906(n+1)-A321904(n+1))*A000035(n)`
-/

namespace A321903.P11905278978148787357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1) + (A321906 (n + 1) - A321904 (n + 1)) * A000035 n

end

end A321903.P11905278978148787357

/-! ## A321903.P12479547855588462763

`A321904(n+1)+(A321906(n+1)-A321904(n+1))*A007814(n+1)`
-/

namespace A321903.P12479547855588462763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (n + 1) + (A321906 (n + 1) - A321904 (n + 1)) * A007814 (n + 1)

end

end A321903.P12479547855588462763

/-! ## A321903.P14472107994223345992

`A321906(n+1)+A321905(n+2)-A321902(n+2)`
-/

namespace A321903.P14472107994223345992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321906 (n + 1) + (A321905 (n + 2) - A321902 (n + 2))

end

end A321903.P14472107994223345992

/-!
# A321904: Irregular table read by rows: T(n,k) is the smallest m such that m^(-m) == 2*k + 1 (mod 2^n), 0 <= k <= 2^(n-1) - 1.

The programs for A321904, there is no canonical definition to state claims against.
-/

/-! ## A321904.P5912756761249860897

`A321901(n+1)+A321903(n+1)-A321906(n+1)`
-/

namespace A321904.P5912756761249860897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (n + 1) + (A321903 (n + 1) - A321906 (n + 1))

end

end A321904.P5912756761249860897

/-! ## A321904.P1754171027406217693

`A321901(n+1)+A320561(n+2)-A320562(n+2)`
-/

namespace A321904.P1754171027406217693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (n + 1) + (A320561 (n + 2) - A320562 (n + 2))

end

end A321904.P1754171027406217693

/-! ## A321904.P15638108310706320584

`A321901(n+1)+A321905(n+2)-A321902(n+2)`
-/

namespace A321904.P15638108310706320584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (n + 1) + (A321905 (n + 2) - A321902 (n + 2))

end

end A321904.P15638108310706320584

/-!
# A321905: Irregular table read by rows: T(n,k) is the smallest m such that m^(1/m) == 2*k + 1 (mod 2^n), 0 <= k <= 2^(n-1) - 1.

The programs for A321905, there is no canonical definition to state claims against.
-/

/-! ## A321905.P17497133549809572141

`A320561(n+1)+A321902(n+1)-A320562(n+1)`
-/

namespace A321905.P17497133549809572141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (n + 1) + (A321902 (n + 1) - A320562 (n + 1))

end

end A321905.P17497133549809572141

/-! ## A321905.P17683734869913322912

`A321902(n+1)+(A320561(n+1)-A321902(n+1))*A000035(n)`
-/

namespace A321905.P17683734869913322912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (n + 1) + (A320561 (n + 1) - A321902 (n + 1)) * A000035 n

end

end A321905.P17683734869913322912

/-! ## A321905.P3865561080528659895

`A321902(n+1)+(A320561(n+1)-A321902(n+1))*A007814(n+1)`
-/

namespace A321905.P3865561080528659895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321902 (n + 1) + (A320561 (n + 1) - A321902 (n + 1)) * A007814 (n + 1)

end

end A321905.P3865561080528659895

/-! ## A321905.P11173670604590300665

`A320561(n+1)+A321903(n+2)-A321904(n+2)`
-/

namespace A321905.P11173670604590300665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (n + 1) + (A321903 (n + 2) - A321904 (n + 2))

end

end A321905.P11173670604590300665

/-! ## A321905.P15205155845183958988

`A320561(n+1)+A321906(n+2)-A321901(n+2)`
-/

namespace A321905.P15205155845183958988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (n + 1) + (A321906 (n + 2) - A321901 (n + 2))

end

end A321905.P15205155845183958988

/-!
# A321906: Irregular table read by rows: T(n,k) is the smallest m such that m^(-1/m) == 2*k + 1 (mod 2^n), 0 <= k <= 2^(n-1) - 1.

The programs for A321906, there is no canonical definition to state claims against.
-/

/-! ## A321906.P14875621559291735275

`A321901(n+1)+A321903(n+1)-A321904(n+1)`
-/

namespace A321906.P14875621559291735275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (n + 1) + (A321903 (n + 1) - A321904 (n + 1))

end

end A321906.P14875621559291735275

/-! ## A321906.P9084307476789231045

`A321903(n+1)+A320562(n+2)-A320561(n+2)`
-/

namespace A321906.P9084307476789231045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321903 (n + 1) + (A320562 (n + 2) - A320561 (n + 2))

end

end A321906.P9084307476789231045

/-! ## A321906.P13301653327897152446

`A321903(n+1)+A321902(n+2)-A321905(n+2)`
-/

namespace A321906.P13301653327897152446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321903 (n + 1) + (A321902 (n + 2) - A321905 (n + 2))

end

end A321906.P13301653327897152446

/-! ## A321906.P11591898331237256952

`A321901(∑[A003114(A034581(n+1))])`
-/

namespace A321906.P11591898331237256952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (A034581 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A321906.P11591898331237256952

/-!
# A321907: If n > 1 is the k-th prime number, then a(n) = k!, otherwise a(n) = 0.

The programs for A321907, there is no canonical definition to state claims against.
-/

/-! ## A321907.P3919844292074443597

`∑{e}[n+1, #]!%2*∑[C(C(2, ∑{e}[n+1, #]), 2)]!`
-/

namespace A321907.P3919844292074443597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 * Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A321907.P3919844292074443597

/-! ## A321907.P9676124855387887248

`C(A049084(n+1)!, ∑{e}[n+1, #])`
-/

namespace A321907.P9676124855387887248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A049084 (n + 1)).toNat) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A321907.P9676124855387887248

/-! ## A321907.P11905511007399895133

`∑{e}[n+1, #]!%2*A000720(n+1)!`
-/

namespace A321907.P11905511007399895133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2 * Nat.factorial (A000720 (n + 1)).toNat

end

end A321907.P11905511007399895133

/-! ## A321907.P10437132166998037739

`C(A303753(n+1)!, ∑{d}[n+1, #]-(n+1))`
-/

namespace A321907.P10437132166998037739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A303753 (n + 1)).toNat) (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)).toNat

end

end A321907.P10437132166998037739

/-! ## A321907.P14447346325838296458

`C(A289508(n+1)!, ∑{p}[n+1, ceil(n/#)²])`
-/

namespace A321907.P14447346325838296458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A289508 (n + 1)).toNat) (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ ^ 2).toNat

end

end A321907.P14447346325838296458

/-! ## A321907.P14279628642004117911

`∑[∑{p}[n+1, val(#, n+1)]]!*A080339(n+1)`
-/

namespace A321907.P14279628642004117911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A080339 (n + 1)

end

end A321907.P14279628642004117911

/-! ## A321907.P8244694149195880988

`C(A055396(n+1)!, n*∏{p}[n+1, C(#%n, #)]+1)`
-/

namespace A321907.P8244694149195880988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A055396 (n + 1)).toNat) (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1)

end

end A321907.P8244694149195880988

/-! ## A321907.P578824898058799953

`A136572(A286164(n+1))`
-/

namespace A321907.P578824898058799953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A286164 (n + 1)).toNat

end

end A321907.P578824898058799953

/-! ## A321907.P6566390511316447840

`A136572(A286356(n+1))`
-/

namespace A321907.P6566390511316447840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A286356 (n + 1)).toNat

end

end A321907.P6566390511316447840

/-! ## A321907.P1783434132539469160

`A080339(n+1)*A132369(n+1)`
-/

namespace A321907.P1783434132539469160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) * A132369 (n + 1)

end

end A321907.P1783434132539469160

/-!
# A321908: If y is the integer partition with Heinz number n, then a(n) = |y|! / syt(y), where syt(y) is the number of standard Young tableaux of shape y.

The programs for A321908, there is no canonical definition to state claims against.
-/

/-! ## A321908.P17611728728427474317

`A056239(n+1)!/A153452(n+1)`
-/

namespace A321908.P17611728728427474317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A056239 (n + 1)).toNat : ℚ) / (A153452 (n + 1) : ℚ)

end

end A321908.P17611728728427474317

/-! ## A321908.P7924435665521715605

`(A329622(n+1)+A324888(n+1))!/A153452(n+1)`
-/

namespace A321908.P7924435665521715605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A329622 (n + 1) + A324888 (n + 1)).toNat : ℚ) / (A153452 (n + 1) : ℚ)

end

end A321908.P7924435665521715605

/-! ## A321908.P9072549991334129942

`(A346698(2*(n+1))+A346698(n+1))!/A153452(n+1)`
-/

namespace A321908.P9072549991334129942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A346698 (2 * (n + 1)) + A346698 (n + 1)).toNat : ℚ) / (A153452 (n + 1) : ℚ)

end

end A321908.P9072549991334129942

/-! ## A321908.P4656308745001072110

`A112624(A248692(n+1))/A153452(n+1)`
-/

namespace A321908.P4656308745001072110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112624 (A248692 (n + 1)).toNat : ℚ) / (A153452 (n + 1) : ℚ)

end

end A321908.P4656308745001072110

/-!
# A321909: a(n) is the least base b > 1 in which the additive persistence of n is <= 1.

The programs for A321909, there is no canonical definition to state claims against.
-/

/-! ## A321909.P9932717452720914885

`A335454(n)+A164349(A119983(n+5))`
-/

namespace A321909.P9932717452720914885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 n + A164349 (A119983 (n + 5)).toNat

end

end A321909.P9932717452720914885

/-! ## A321909.P6047554015168653300

`A319478(n^A319430(3*n+1))`
-/

namespace A321909.P6047554015168653300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319478 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A319430 (3 * n + 1) : ℤ))).toNat

end

end A321909.P6047554015168653300

/-! ## A321909.P15372722130018532465

`A335454(n)+A003849(A267052(n))`
-/

namespace A321909.P15372722130018532465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 n + A003849 (A267052 n).toNat

end

end A321909.P15372722130018532465

/-! ## A321909.P13999760323068270307

`A335454(n)+A010054(A121859(n+1))`
-/

namespace A321909.P13999760323068270307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 n + A010054 (A121859 (n + 1)).toNat

end

end A321909.P13999760323068270307

/-! ## A321909.P4769847828209410002

`A333939(n)+A124778(A026424(n+5))`
-/

namespace A321909.P4769847828209410002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 n + A124778 (A026424 (n + 5)).toNat

end

end A321909.P4769847828209410002

/-!
# A321910: Base-7 deletable primes (written in base 10).

The programs for A321910, there is no canonical definition to state claims against.
-/

/-! ## A321910.P12800396717046442470

`p?[comp[A322172(n+1)]]`
-/

namespace A321910.P12800396717046442470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A321910.P12800396717046442470

/-! ## A321910.P13017675019099342625

`p?[A249102(A102451(n+1)+1)]`
-/

namespace A321910.P13017675019099342625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (A102451 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321910.P13017675019099342625

/-! ## A321910.P2118367216135846938

`p?[A054897(n)!*p?[A249102(n+1)]]`
-/

namespace A321910.P2118367216135846938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A054897 n).toNat : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A321910.P2118367216135846938

/-! ## A321910.P6201850469740039117

`p?[A249102(n+1)]%A249105(n+1)`
-/

namespace A321910.P6201850469740039117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A249105 (n + 1))

end

end A321910.P6201850469740039117

/-!
# A321911: Number of distinct chromatic symmetric functions of simple connected graphs with n vertices.

The programs for A321911, there is no canonical definition to state claims against.
-/

/-! ## A321911.P13378948816192594692

`A245882(n+1)-A326245(n)`
-/

namespace A321911.P13378948816192594692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245882 (n + 1) - A326245 n

end

end A321911.P13378948816192594692

/-! ## A321911.P10279961734734745144

`ceil(A152401(n)/A244930(n+1))`
-/

namespace A321911.P10279961734734745144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152401 n : ℚ) / (A244930 (n + 1) : ℚ)⌉

end

end A321911.P10279961734734745144

/-! ## A321911.P10699326260903637670

`A054915(n+1)+Δ[A057513(n)]`
-/

namespace A321911.P10699326260903637670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054915 (n + 1) + (f1 (n + 1) - f1 n)

end

end A321911.P10699326260903637670

/-!
# A321912: Tetrangle where T(n,H(u),H(v)) is the coefficient of m(v) in e(u), where u and v are integer partitions of n, H is Heinz number, m is monomial symmetric functions, and e is elementary symmetric functions.

The programs for A321912, there is no canonical definition to state claims against.
-/

/-! ## A321912.P14892781737690486043

`A321742(lt[A120919(n), A220501(n)])`
-/

namespace A321912.P14892781737690486043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321912.P14892781737690486043

/-! ## A321912.P11078837333771780567

`A321742(lt[A342384(n+3), A038209(n+1)])`
-/

namespace A321912.P11078837333771780567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342384 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038209 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321742 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A321912.P11078837333771780567

/-! ## A321912.P5624888108353687098

`abs(A346562(7*n+5)-∑{e}[n+1, #])`
-/

namespace A321912.P5624888108353687098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346562 (7 * n + 5) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)|

end

end A321912.P5624888108353687098

/-! ## A321912.P16434471834764721525

`A221171(A316599(n+1))`
-/

namespace A321912.P16434471834764721525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A316599 (n + 1)).toNat

end

end A321912.P16434471834764721525

/-! ## A321912.P12638549248992949581

`A120385(A190512(n))%A118136(n)`
-/

namespace A321912.P12638549248992949581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120385 (A190512 n).toNat) (A118136 n)

end

end A321912.P12638549248992949581

/-!
# A321914: Tetrangle where T(n,H(u),H(v)) is the coefficient of e(v) in m(u), where u and v are integer partitions of n, H is Heinz number, m is monomial symmetric functions, and e is elementary symmetric functions.

The programs for A321914, there is no canonical definition to state claims against.
-/

/-! ## A321914.P6743932438754951138

`A321746(n+2)/A321748(A321789(n+1))`
-/

namespace A321914.P6743932438754951138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321746 (n + 2) : ℚ) / (A321748 (A321789 (n + 1)).toNat : ℚ)

end

end A321914.P6743932438754951138

/-! ## A321914.P7747093391409863558

`A321746(n+2)^A321746(A321741(n+1))`
-/

namespace A321914.P7747093391409863558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321746 (n + 2) : ℚ) ^ (A321746 (A321741 (n + 1)).toNat : ℤ)

end

end A321914.P7747093391409863558

/-!
# A321915: Tetrangle where T(n,H(u),H(v)) is the coefficient of h(v) in m(u), where u and v are integer partitions of n, H is Heinz number, m is monomial symmetric functions, and h is homogeneous symmetric functions.

The programs for A321915, there is no canonical definition to state claims against.
-/

/-! ## A321915.P18313573405649733901

`A321748(n+2)/gcd(A321730(n), A321748(n+2))`
-/

namespace A321915.P18313573405649733901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321748 (n + 2) : ℚ) / (Int.gcd (A321730 n) (A321748 (n + 2)) : ℚ)

end

end A321915.P18313573405649733901

/-! ## A321915.P6253380165440146355

`A321748(n+2)^A321746(A321741(n+1))`
-/

namespace A321915.P6253380165440146355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321748 (n + 2) : ℚ) ^ (A321746 (A321741 (n + 1)).toNat : ℤ)

end

end A321915.P6253380165440146355

/-! ## A321915.P4347609977663597157

`A321748(n+2)^A321740(A321789(n+1))`
-/

namespace A321915.P4347609977663597157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321748 (n + 2) : ℚ) ^ (A321740 (A321789 (n + 1)).toNat : ℤ)

end

end A321915.P4347609977663597157

/-!
# A321916: Tetrangle where T(n,H(u),H(v)) is the coefficient of e(v) in h(u), where u and v are integer partitions of n, H is Heinz number, e is elementary symmetric functions, and h is homogeneous symmetric functions.

The programs for A321916, there is no canonical definition to state claims against.
-/

/-! ## A321916.P5426082648019292788

`A010815(2*n)-A057078(A000598(n+1))`
-/

namespace A321916.P5426082648019292788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 * n) - A057078 (A000598 (n + 1)).toNat

end

end A321916.P5426082648019292788

/-! ## A321916.P16767589434639209432

`Δ[A089309(A129045(n+5))]`
-/

namespace A321916.P16767589434639209432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A129045 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321916.P16767589434639209432

/-! ## A321916.P793565233443388551

`A321749(A062279(n+1)+1)`
-/

namespace A321916.P793565233443388551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321749 (A062279 (n + 1) + 1).toNat

end

end A321916.P793565233443388551

/-! ## A321916.P814390949873603835

`A321749(A088599(n+1)+1)`
-/

namespace A321916.P814390949873603835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321749 (A088599 (n + 1) + 1).toNat

end

end A321916.P814390949873603835

/-! ## A321916.P10803742801127918996

`A321749(A278946(n+1)+1)`
-/

namespace A321916.P10803742801127918996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321749 (A278946 (n + 1) + 1).toNat

end

end A321916.P10803742801127918996

/-!
# A321917: Tetrangle where T(n,H(u),H(v)) is the coefficient of m(v) in p(u), where u and v are integer partitions of n, H is Heinz number, m is monomial symmetric functions, and p is power sum symmetric functions.

The programs for A321917, there is no canonical definition to state claims against.
-/

/-! ## A321917.P5309251750841935929

`abs(A321928(n+1))`
-/

namespace A321917.P5309251750841935929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321928 (n + 1)|

end

end A321917.P5309251750841935929

/-! ## A321917.P4176051947376479604

`A000194(A321928(n+1)²)`
-/

namespace A321917.P4176051947376479604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A321928 (n + 1) ^ 2).toNat

end

end A321917.P4176051947376479604

/-! ## A321917.P14488919371898892492

`A000196(A321928(n+1)²)`
-/

namespace A321917.P14488919371898892492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A321928 (n + 1) ^ 2).toNat

end

end A321917.P14488919371898892492

/-! ## A321917.P4537551285333224273

`A000196(A321928(n+1)^2)`
-/

namespace A321917.P4537551285333224273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A321928 (n + 1) ^ 2).toNat

end

end A321917.P4537551285333224273

/-! ## A321917.P11575879928278708923

`gcd(A000038(n), A321928(n+1))`
-/

namespace A321917.P11575879928278708923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321928 (n + 1))

end

end A321917.P11575879928278708923

/-! ## A321917.P7003976062357502022

`lcm(A015772(n), A321928(n+1))`
-/

namespace A321917.P7003976062357502022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015772 n) (A321928 (n + 1))

end

end A321917.P7003976062357502022

/-! ## A321917.P233653329197971807

`∑{d}[A321928(n+1), A000010(#)]`
-/

namespace A321917.P233653329197971807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A321917.P233653329197971807

/-! ## A321917.P5656204991123482036

`sqrt(A321928(n+1)²^A014963(2*or(1, n)))`
-/

namespace A321917.P5656204991123482036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A321928 (n + 1) ^ 2 : ℚ) ^ (A014963 (2 * Nat.lor 1 n) : ℤ) : ℝ)

end

end A321917.P5656204991123482036

/-!
# A321918: Tetrangle where T(n,H(u),H(v)) is the coefficient of e(v) in p(u), where u and v are integer partitions of n, H is Heinz number, e is elementary symmetric functions, and p is power sum symmetric functions.

The programs for A321918, there is no canonical definition to state claims against.
-/

/-! ## A321918.P16474983763742994959

`A321752(n+2)%A000005(A072103(2*(n+2))²+1)`
-/

namespace A321918.P16474983763742994959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321752 (n + 2)) (A000005 (A072103 (2 * (n + 2)) ^ 2 + 1).toNat)

end

end A321918.P16474983763742994959

/-! ## A321918.P17414530587267540471

`A321752(A062279(n+1)+1)`
-/

namespace A321918.P17414530587267540471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321752 (A062279 (n + 1) + 1).toNat

end

end A321918.P17414530587267540471

/-! ## A321918.P9951208519985356788

`A321752(A088599(n+1)+1)`
-/

namespace A321918.P9951208519985356788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321752 (A088599 (n + 1) + 1).toNat

end

end A321918.P9951208519985356788

/-! ## A321918.P13659505712958471404

`A321752(A278946(n+1)+1)`
-/

namespace A321918.P13659505712958471404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321752 (A278946 (n + 1) + 1).toNat

end

end A321918.P13659505712958471404

/-! ## A321918.P17686830737566050953

`A321752(n+2)*A321758(A321789(n+1))`
-/

namespace A321918.P17686830737566050953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321752 (n + 2) * A321758 (A321789 (n + 1)).toNat

end

end A321918.P17686830737566050953

/-!
# A321919: Tetrangle where T(n,H(u),H(v)) is the coefficient of h(v) in p(u), where u and v are integer partitions of n, H is Heinz number, h is homogeneous symmetric functions, and p is power sum symmetric functions.

The programs for A321919, there is no canonical definition to state claims against.
-/

/-! ## A321919.P5639037840922145972

`A321754(A062279(n+1)+1)`
-/

namespace A321919.P5639037840922145972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321754 (A062279 (n + 1) + 1).toNat

end

end A321919.P5639037840922145972

/-! ## A321919.P9161049250976978373

`A321754(A088599(n+1)+1)`
-/

namespace A321919.P9161049250976978373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321754 (A088599 (n + 1) + 1).toNat

end

end A321919.P9161049250976978373

/-! ## A321919.P5880650077843993499

`A321754(n+2)*A321758(A321789(n+1))`
-/

namespace A321919.P5880650077843993499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321754 (n + 2) * A321758 (A321789 (n + 1)).toNat

end

end A321919.P5880650077843993499

/-!
# A321920: Tetrangle where T(n,H(u),H(v)) is the coefficient of e(v) in s(u), where u and v are integer partitions of n, H is Heinz number, e is elementary symmetric functions, and s is Schur functions.

The programs for A321920, there is no canonical definition to state claims against.
-/

/-! ## A321920.P2937106455611773464

`A007273(Δ[lt[A291137(2*(n+2)), 0]])`
-/

namespace A321920.P2937106455611773464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291137 (2 * (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007273 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321920.P2937106455611773464

/-! ## A321920.P12765760187495186442

`A114592(and(A008532(n), A344206(n+1)))`
-/

namespace A321920.P12765760187495186442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (Int.land (A008532 n) (A344206 (n + 1))).toNat

end

end A321920.P12765760187495186442

/-! ## A321920.P2486298644621395604

`A321755(A151766(n+2))`
-/

namespace A321920.P2486298644621395604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321755 (A151766 (n + 2)).toNat

end

end A321920.P2486298644621395604

/-! ## A321920.P12700794624060787541

`A121450(A084221(n)+A049084(n+1))`
-/

namespace A321920.P12700794624060787541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (A084221 n + A049084 (n + 1)).toNat

end

end A321920.P12700794624060787541

/-! ## A321920.P13033817494434102575

`A321930(A339454(n+1))`
-/

namespace A321920.P13033817494434102575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321930 (A339454 (n + 1)).toNat

end

end A321920.P13033817494434102575

/-!
# A321921: Tetrangle where T(n,H(u),H(v)) is the coefficient of s(v) in e(u), where u and v are integer partitions of n, H is Heinz number, s is Schur functions, and e is elementary symmetric functions.

The programs for A321921, there is no canonical definition to state claims against.
-/

/-! ## A321921.P743835190661033061

`A334028(A321912(n+1)^A334028(n))`
-/

namespace A321921.P743835190661033061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (SequenceMachineLib.roundAway ((A321912 (n + 1) : ℚ) ^ (A334028 n : ℤ))).toNat

end

end A321921.P743835190661033061

/-! ## A321921.P12062131563273089504

`A193929(A124778(n)*A321912(n+1))`
-/

namespace A321921.P12062131563273089504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A124778 n * A321912 (n + 1)).toNat

end

end A321921.P12062131563273089504

/-! ## A321921.P6343373303697399105

`A193929(lcm(A124778(n), A321912(n+1)))`
-/

namespace A321921.P6343373303697399105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (Int.lcm (A124778 n) (A321912 (n + 1)))

end

end A321921.P6343373303697399105

/-! ## A321921.P15760071277267248915

`A000045(ceil(A321912(n+1)/A096852(n)))`
-/

namespace A321921.P15760071277267248915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A321912 (n + 1) : ℚ) / (A096852 n : ℚ)⌉.toNat

end

end A321921.P15760071277267248915

/-! ## A321921.P9870234389566665558

`A122290(ceil(A321912(n+1)/A096852(n)))`
-/

namespace A321921.P9870234389566665558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122290 ⌈(A321912 (n + 1) : ℚ) / (A096852 n : ℚ)⌉.toNat

end

end A321921.P9870234389566665558

/-!
# A321922: Tetrangle where T(n,H(u),H(v)) is the coefficient of h(v) in s(u), where u and v are integer partitions of n, H is Heinz number, h is homogeneous symmetric functions, and s is Schur functions.

The programs for A321922, there is no canonical definition to state claims against.
-/

/-! ## A321922.P10986956185281104812

`Δ[A064547(∑[A064954(n+1)])]`
-/

namespace A321922.P10986956185281104812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A321922.P10986956185281104812

/-! ## A321922.P11842920204762978259

`A048165((n-1)*A286059(2^n+1))`
-/

namespace A321922.P11842920204762978259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 (((n : ℤ) - 1) * A286059 (2 ^ n + 1)).toNat

end

end A321922.P11842920204762978259

/-!
# A321923: Tetrangle where T(n,H(u),H(v)) is the coefficient of s(v) in h(u), where u and v are integer partitions of n, H is Heinz number, s is Schur functions, and h is homogeneous symmetric functions.

The programs for A321923, there is no canonical definition to state claims against.
-/

/-! ## A321923.P17649252060427480379

`gcd(A118917(A038243(n)), A321922(n+1))`
-/

namespace A321923.P17649252060427480379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118917 (A038243 n).toNat) (A321922 (n + 1))

end

end A321923.P17649252060427480379

/-! ## A321923.P14226338725530583513

`A102683(A045966(A000265(n+3))²)`
-/

namespace A321923.P14226338725530583513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A045966 (A000265 (n + 3)).toNat ^ 2).toNat

end

end A321923.P14226338725530583513

/-! ## A321923.P7888264590803538802

`and(A063062(n), A256193(A049101(n+1)))`
-/

namespace A321923.P7888264590803538802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063062 n) (A256193 (A049101 (n + 1)).toNat)

end

end A321923.P7888264590803538802

/-! ## A321923.P18297507439181565004

`A187080(lcm(A007302(n), A114329(n)))`
-/

namespace A321923.P18297507439181565004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (Int.lcm (A007302 n) (A114329 n))

end

end A321923.P18297507439181565004

/-! ## A321923.P17296375026930566273

`A000045(gcd(A023934(n), A321931(n+1)))`
-/

namespace A321923.P17296375026930566273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A023934 n) (A321931 (n + 1)))

end

end A321923.P17296375026930566273

/-!
# A321924: Tetrangle where T(n,H(u),H(v)) is the coefficient of m(v) in s(u), where u and v are integer partitions of n, H is Heinz number, m is monomial symmetric functions, and s is Schur functions.

The programs for A321924, there is no canonical definition to state claims against.
-/

/-! ## A321924.P2815581876504253191

`A066745(gcd(A013623(n), A159797(n)))`
-/

namespace A321924.P2815581876504253191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066745 (Int.gcd (A013623 n) (A159797 n))

end

end A321924.P2815581876504253191

/-! ## A321924.P1836903524989157039

`gcd(A321925(n+1), A321929(A085738(n)))`
-/

namespace A321924.P1836903524989157039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321925 (n + 1)) (A321929 (A085738 n).toNat)

end

end A321924.P1836903524989157039

/-! ## A321924.P9327388940881223504

`A321917(A171275(n+1))^A321897(n+1)`
-/

namespace A321924.P9327388940881223504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321917 (A171275 (n + 1)).toNat : ℚ) ^ (A321897 (n + 1) : ℤ)

end

end A321924.P9327388940881223504

/-! ## A321924.P9402826142242855530

`A322454(gcd(A043107(n+1), A322439(n)))`
-/

namespace A321924.P9402826142242855530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322454 (Int.gcd (A043107 (n + 1)) (A322439 n))

end

end A321924.P9402826142242855530

/-! ## A321924.P16993364179070084026

`A287179(A287146(n+3)*A287148(n+1)+1)`
-/

namespace A321924.P16993364179070084026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287179 (A287146 (n + 3) * A287148 (n + 1) + 1).toNat

end

end A321924.P16993364179070084026

/-!
# A321925: Tetrangle where T(n,H(u),H(v)) is the coefficient of s(v) in m(u), where u and v are integer partitions of n, H is Heinz number, s is Schur functions, and m is monomial symmetric functions.

The programs for A321925, there is no canonical definition to state claims against.
-/

/-! ## A321925.P17845722947256859513

`xor(A056594(n), A059841(A294668(n)))`
-/

namespace A321925.P17845722947256859513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 n) (A059841 (A294668 n).toNat)

end

end A321925.P17845722947256859513

/-! ## A321925.P15028142489761030382

`A057077(A211629(n))*A321924(n+1)`
-/

namespace A321925.P15028142489761030382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A211629 n).toNat * A321924 (n + 1)

end

end A321925.P15028142489761030382

/-! ## A321925.P16001593410068782176

`xor(A056594(n), A339933(A079024(n+1)))`
-/

namespace A321925.P16001593410068782176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056594 n) (A339933 (A079024 (n + 1)).toNat)

end

end A321925.P16001593410068782176

/-! ## A321925.P2611659237543980655

`A316824(A304085(2*n+3))-A359358(n+4)`
-/

namespace A321925.P2611659237543980655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A304085 (2 * n + 3)).toNat - A359358 (n + 4)

end

end A321925.P2611659237543980655

/-! ## A321925.P553271019553984696

`A105523(∑{e}[A279557(n), #])`
-/

namespace A321925.P553271019553984696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A321925.P553271019553984696

/-!
# A321926: Tetrangle where T(n,H(u),H(v)) is the coefficient of s(v) in p(u), where u and v are integer partitions of n, H is Heinz number, s is Schur functions, and p is power sum symmetric functions.

The programs for A321926, there is no canonical definition to state claims against.
-/

/-! ## A321926.P17229064913698233659

`A156133(A227873(2*(n+2)))%3`
-/

namespace A321926.P17229064913698233659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156133 (A227873 (2 * (n + 2))).toNat) 3

end

end A321926.P17229064913698233659

/-! ## A321926.P14042256041748417184

`A093829(gcd(A127384(n), A127407(n+2)))`
-/

namespace A321926.P14042256041748417184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (Int.gcd (A127384 n) (A127407 (n + 2)))

end

end A321926.P14042256041748417184

/-! ## A321926.P18343123765832450637

`A112555(gcd(A004525(3*n), A179221(n+1)))`
-/

namespace A321926.P18343123765832450637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 (Int.gcd (A004525 (3 * n)) (A179221 (n + 1)))

end

end A321926.P18343123765832450637

/-! ## A321926.P2300368013025868798

`A231599(A284103(3*n+2)^A023645(n+1))`
-/

namespace A321926.P2300368013025868798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231599 (SequenceMachineLib.roundAway ((A284103 (3 * n + 2) : ℚ) ^ (A023645 (n + 1) : ℤ))).toNat

end

end A321926.P2300368013025868798

/-!
# A321929: Tetrangle where T(n,H(u),H(v)) is the coefficient of f(v) in s(u), where u and v are integer partitions of n, H is Heinz number, f is forgotten symmetric functions, and s is Schur functions.

The programs for A321929, there is no canonical definition to state claims against.
-/

/-! ## A321929.P8133589322987250143

`A069010(A321912(n+1)^A010766(n+1))`
-/

namespace A321929.P8133589322987250143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.roundAway ((A321912 (n + 1) : ℚ) ^ (A010766 (n + 1) : ℤ))).toNat

end

end A321929.P8133589322987250143

/-! ## A321929.P3219541862689695927

`A089309(A321912(n+1)^A339894(n+1))`
-/

namespace A321929.P3219541862689695927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (SequenceMachineLib.roundAway ((A321912 (n + 1) : ℚ) ^ (A339894 (n + 1) : ℤ))).toNat

end

end A321929.P3219541862689695927

/-! ## A321929.P4752793938263003318

`A103863(gcd(A261278(n+1), A321912(n+1)))`
-/

namespace A321929.P4752793938263003318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (Int.gcd (A261278 (n + 1)) (A321912 (n + 1)))

end

end A321929.P4752793938263003318

/-! ## A321929.P9484220244345440753

`A124766(A124774(n)*A321912(n+1))`
-/

namespace A321929.P9484220244345440753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A124774 n * A321912 (n + 1)).toNat

end

end A321929.P9484220244345440753

/-! ## A321929.P14340093059656667413

`A354579(A210555(n+3)*A321912(n+1))`
-/

namespace A321929.P14340093059656667413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A210555 (n + 3) * A321912 (n + 1)).toNat

end

end A321929.P14340093059656667413

/-!
# A321930: Tetrangle where T(n,H(u),H(v)) is the coefficient of s(v) in f(u), where u and v are integer partitions of n, H is Heinz number, f is forgotten symmetric functions, and s is Schur functions.

The programs for A321930, there is no canonical definition to state claims against.
-/

/-! ## A321930.P5353976946619925291

`A321894(A344486(n+1)+1)`
-/

namespace A321930.P5353976946619925291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321894 (A344486 (n + 1) + 1).toNat

end

end A321930.P5353976946619925291

/-! ## A321930.P13922947954808906636

`A293019(A337883(n+2))%11`
-/

namespace A321930.P13922947954808906636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293019 (A337883 (n + 2)).toNat) 11

end

end A321930.P13922947954808906636

/-! ## A321930.P12067272171138716210

`A261122(and(A129987(n), A197894(n+1)))`
-/

namespace A321930.P12067272171138716210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (Int.land (A129987 n) (A197894 (n + 1))).toNat

end

end A321930.P12067272171138716210

/-! ## A321930.P4903342368493928165

`A321894(n+2)^A000983(A344971(n+1))`
-/

namespace A321930.P4903342368493928165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321894 (n + 2) : ℚ) ^ (A000983 (A344971 (n + 1)).toNat : ℤ)

end

end A321930.P4903342368493928165

/-! ## A321930.P10629042205350549412

`A321894(n+2)^A001951(A059222(n+2))`
-/

namespace A321930.P10629042205350549412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321894 (n + 2) : ℚ) ^ (A001951 (A059222 (n + 2)).toNat : ℤ)

end

end A321930.P10629042205350549412

/-!
# A321933: Tetrangle where T(n,H(u),H(v)) is the coefficient of p(v) in h(u) * Product_i u_i!, where u and v are integer partitions of n, H is Heinz number, p is power sum symmetric functions, and h is homogeneous symmetric functions.

The programs for A321933, there is no canonical definition to state claims against.
-/

/-! ## A321933.P1709813718446368286

`abs(A321932(n+1))`
-/

namespace A321933.P1709813718446368286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321932 (n + 1)|

end

end A321933.P1709813718446368286

/-! ## A321933.P5504916093649421757

`A000194(A321932(n+1)²)`
-/

namespace A321933.P5504916093649421757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A321932 (n + 1) ^ 2).toNat

end

end A321933.P5504916093649421757

/-! ## A321933.P17850980262156740631

`A000196(A321932(n+1)²)`
-/

namespace A321933.P17850980262156740631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A321932 (n + 1) ^ 2).toNat

end

end A321933.P17850980262156740631

/-! ## A321933.P3383869029692139319

`gcd(A000038(n), A321932(n+1))`
-/

namespace A321933.P3383869029692139319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321932 (n + 1))

end

end A321933.P3383869029692139319

/-! ## A321933.P944424715841068526

`lcm(A057077(n), A321932(n+1))`
-/

namespace A321933.P944424715841068526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A321932 (n + 1))

end

end A321933.P944424715841068526

/-! ## A321933.P3319837922963760342

`∑{d}[A321932(n+1), A000010(#)]`
-/

namespace A321933.P3319837922963760342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A321933.P3319837922963760342

/-! ## A321933.P5455837321216894248

`lcm(-A321932(n+1), A007318(and(1, -n)))`
-/

namespace A321933.P5455837321216894248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A321932 (n + 1)) (A007318 (Int.land 1 (-(n : ℤ))).toNat)

end

end A321933.P5455837321216894248

/-!
# A321936: Number of integer partitions of n containing no 1's, prime powers, or squarefree numbers.

The programs for A321936, there is no canonical definition to state claims against.
-/

/-! ## A321936.P12574313485806583058

`and(A000688(n+1), A343379(A104725(n)))`
-/

namespace A321936.P12574313485806583058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000688 (n + 1)) (A343379 (A104725 n).toNat)

end

end A321936.P12574313485806583058

/-! ## A321936.P14626477194204507906

`and(A006241(n+1), A343379(A104725(n)))`
-/

namespace A321936.P14626477194204507906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006241 (n + 1)) (A343379 (A104725 n).toNat)

end

end A321936.P14626477194204507906

/-! ## A321936.P16144201570721989528

`and(A319786(n+1), A343379(A104725(n)))`
-/

namespace A321936.P16144201570721989528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A319786 (n + 1)) (A343379 (A104725 n).toNat)

end

end A321936.P16144201570721989528

/-! ## A321936.P18150787427640335987

`and(A343379(A104725(n)), A349059(n+1))`
-/

namespace A321936.P18150787427640335987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A343379 (A104725 n).toNat) (A349059 (n + 1))

end

end A321936.P18150787427640335987

/-! ## A321936.P5204413495407697637

`A000120(and(A050932(n), A061048(n+7)))`
-/

namespace A321936.P5204413495407697637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A050932 n) (A061048 (n + 7))).toNat

end

end A321936.P5204413495407697637

/-!
# A321938: Denominators of the Maclaurin coefficients of exp(1/x - 1/(exp(x)-1) - 1/2).

The programs for A321938, there is no canonical definition to state claims against.
-/

/-! ## A321938.P1065497972780268725

`A001164(n)/A324544(A324595(n))`
-/

namespace A321938.P1065497972780268725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001164 n : ℚ) / (A324544 (A324595 n).toNat : ℚ)

end

end A321938.P1065497972780268725

/-!
# A321942: A sequence related to the Euler-Gompertz constant.

The programs for A321942, the canonical program `A321942.P14070557332389463604` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321942 has offset 1).

The definition of A321942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A321942.P14070557332389463604

`(2*(n+1)-1)*a(n-1)-n*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321942

/-- `(2*(n+1)-1)*a(n-1)-n*(n-1)*a(n-2)` -/
def P14070557332389463604.Spec : Prop :=
  ∀ n, P14070557332389463604.a n = A321942 (n + 1)

theorem P14070557332389463604.correct : P14070557332389463604.Spec := by
  intro n
  simp only [A321942, Nat.add_sub_cancel]

end A321942

/-! ## A321942.P9003243711602751765

`A056952(Δ[n²])`
-/

namespace A321942.P9003243711602751765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A321942.P9003243711602751765

namespace A321942

/-- `A056952(Δ[n²])` -/
def P9003243711602751765.Spec : Prop :=
  ∀ n, P9003243711602751765.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P8688010017986616761

`A002793(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A321942.P8688010017986616761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002793 n + (n : ℤ) * a (n - 1)

end

end A321942.P8688010017986616761

namespace A321942

/-- `A002793(n)+n*a(n-1)` -/
def P8688010017986616761.Spec : Prop :=
  ∀ n, P8688010017986616761.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P4879011306893303821

`record[A056952(A029579(n))]`
-/

namespace A321942.P4879011306893303821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321942.P4879011306893303821

namespace A321942

/-- `record[A056952(A029579(n))]` -/
def P4879011306893303821.Spec : Prop :=
  ∀ n, P4879011306893303821.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P3604480959147490146

`record[A056952(abs(A099471(n)))]`
-/

namespace A321942.P3604480959147490146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 |A099471 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321942.P3604480959147490146

namespace A321942

/-- `record[A056952(abs(A099471(n)))]` -/
def P3604480959147490146.Spec : Prop :=
  ∀ n, P3604480959147490146.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P15197224641945946172

`record[A056952(Δ[A087278(n)])]`
-/

namespace A321942.P15197224641945946172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321942.P15197224641945946172

namespace A321942

/-- `record[A056952(Δ[A087278(n)])]` -/
def P15197224641945946172.Spec : Prop :=
  ∀ n, P15197224641945946172.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P11066381064791885441

`record[A056952(A056944(n)+1)]`
-/

namespace A321942.P11066381064791885441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (A056944 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321942.P11066381064791885441

namespace A321942

/-- `record[A056952(A056944(n)+1)]` -/
def P11066381064791885441.Spec : Prop :=
  ∀ n, P11066381064791885441.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P2905506311890232530

`record[Δ[A056952(n*A000035(n))]]`
-/

namespace A321942.P2905506311890232530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 ((n : ℤ) * A000035 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321942.P2905506311890232530

namespace A321942

/-- `record[Δ[A056952(n*A000035(n))]]` -/
def P2905506311890232530.Spec : Prop :=
  ∀ n, P2905506311890232530.a n = A321942 (n + 1)

end A321942

/-! ## A321942.P13524817764574759850

`record[A056952(n^Δ[A004526(n)])]`
-/

namespace A321942.P13524817764574759850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056952 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321942.P13524817764574759850

namespace A321942

/-- `record[A056952(n^Δ[A004526(n)])]` -/
def P13524817764574759850.Spec : Prop :=
  ∀ n, P13524817764574759850.a n = A321942 (n + 1)

end A321942

/-!
# A321944: Starting from n, repeatedly compute the sum of the prime divisors until a fixed point or 0 is reached; a(n) is the number of terms, including n.

The programs for A321944, there is no canonical definition to state claims against.
-/

/-! ## A321944.P3807560346779339240

`A196930(A240545(n)^A055893(n+5))`
-/

namespace A321944.P3807560346779339240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196930 (SequenceMachineLib.roundAway ((A240545 n : ℚ) ^ (A055893 (n + 5) : ℤ))).toNat

end

end A321944.P3807560346779339240

/-! ## A321944.P4730413505611029937

`A036452(A354352(n+1)+A066829(n+1))`
-/

namespace A321944.P4730413505611029937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (A354352 (n + 1) + A066829 (n + 1)).toNat

end

end A321944.P4730413505611029937

/-! ## A321944.P6367954918179903853

`A109829(A263752(n+1))-A010051(n+1)`
-/

namespace A321944.P6367954918179903853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109829 (A263752 (n + 1)).toNat - A010051 (n + 1)

end

end A321944.P6367954918179903853

/-! ## A321944.P6554072299390496271

`A036430(or(A000040(n+1), A008683(n+1))²+1)`
-/

namespace A321944.P6554072299390496271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036430 (Int.lor (A000040 (n + 1)) (A008683 (n + 1)) ^ 2 + 1).toNat

end

end A321944.P6554072299390496271

/-! ## A321944.P10563655404029152737

`A140225(A111620(3*(n+1))+A061142(2*(n+1)))`
-/

namespace A321944.P10563655404029152737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140225 (A111620 (3 * (n + 1)) + A061142 (2 * (n + 1))).toNat

end

end A321944.P10563655404029152737

/-!
# A321945: Number of binary self-dual codes of length 2n having an automorphism group size that is a prime power.

The programs for A321945, there is no canonical definition to state claims against.
-/

/-! ## A321945.P17412562387607651758

`A000196(C(A347457(n+1), A261310(n+1)))`
-/

namespace A321945.P17412562387607651758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (A347457 (n + 1)).toNat (A261310 (n + 1)).toNat)

end

end A321945.P17412562387607651758

/-!
# A321946: Number of divisors for the automorphism group size having the largest number of divisors for a binary self-dual code of length 2n.

The programs for A321946, there is no canonical definition to state claims against.
-/

/-! ## A321946.P17059902764670244313

`∏{e}[A322309(n+1), #+1]`
-/

namespace A321946.P17059902764670244313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A321946.P17059902764670244313

/-! ## A321946.P8774106845830533480

`∑{d}[A322309(n+1), #^A110193(n+1)]`
-/

namespace A321946.P8774106845830533480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322309 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) ^ (A110193 (n + 1) : ℤ)

end

end A321946.P8774106845830533480

/-!
# A321947: Column k=2 of triangle A257673.

The programs for A321947, there is no canonical definition to state claims against.
-/

/-! ## A321947.P16121794081175619211

`A161870(n+2)-2*A000219(n+2)`
-/

namespace A321947.P16121794081175619211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161870 (n + 2) - 2 * A000219 (n + 2)

end

end A321947.P16121794081175619211

/-! ## A321947.P7752249850902487124

`A257673(∑[n+2]+3)`
-/

namespace A321947.P7752249850902487124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A321947.P7752249850902487124

/-! ## A321947.P12706018368460519873

`record[A257673(A000124(n)+1)]`
-/

namespace A321947.P12706018368460519873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321947.P12706018368460519873

/-! ## A321947.P2054131944641543966

`record[A257673(A000217(n)+2)]`
-/

namespace A321947.P2054131944641543966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A321947.P2054131944641543966

/-! ## A321947.P13241053500708756079

`A257673(A000217(n+2)+2)%A033876(n)`
-/

namespace A321947.P13241053500708756079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257673 (A000217 (n + 2) + 2).toNat) (A033876 n)

end

end A321947.P13241053500708756079

/-! ## A321947.P1377018862311688446

`A257673(A000217(n+2)+2)+char[A017141(n)]`
-/

namespace A321947.P1377018862311688446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017141 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 (n + 2) + 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A321947.P1377018862311688446

/-! ## A321947.P1327198511126996214

`and(A057428(n+1), A257673(A000217(n+2)+2))`
-/

namespace A321947.P1327198511126996214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A257673 (A000217 (n + 2) + 2).toNat)

end

end A321947.P1327198511126996214

/-! ## A321947.P18213447563717226678

`A008836((n+1)²)*A257673(A000217(n+2)+2)`
-/

namespace A321947.P18213447563717226678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 ((n + 1) ^ 2) * A257673 (A000217 (n + 2) + 2).toNat

end

end A321947.P18213447563717226678

/-!
# A321948: Column k=3 of triangle A257673.

The programs for A321948, there is no canonical definition to state claims against.
-/

/-! ## A321948.P794580669658823385

`A257673(∑[n+2]+n+7)`
-/

namespace A321948.P794580669658823385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A321948.P794580669658823385

/-! ## A321948.P13833913106474081104

`abs(A257673(A167614(n+2))-n)+n`
-/

namespace A321948.P13833913106474081104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257673 (A167614 (n + 2)).toNat - (n : ℤ)| + (n : ℤ)

end

end A321948.P13833913106474081104

/-! ## A321948.P17876696437970193356

`A257673(A167614(n+2))+A007814(2*n+1)`
-/

namespace A321948.P17876696437970193356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 2)).toNat + A007814 (2 * n + 1)

end

end A321948.P17876696437970193356

/-! ## A321948.P18354771075747694267

`A257673(A167614(n+2))+A000038(3*n+2)`
-/

namespace A321948.P18354771075747694267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 2)).toNat + A000038 (3 * n + 2)

end

end A321948.P18354771075747694267

/-! ## A321948.P3280948659353224575

`A257673(A167614(n+2))+A005369(3*n+4)`
-/

namespace A321948.P3280948659353224575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 2)).toNat + A005369 (3 * n + 4)

end

end A321948.P3280948659353224575

/-! ## A321948.P15993258704398621864

`A257673(A167614(n+2))+3*A182581(3*n+2)`
-/

namespace A321948.P15993258704398621864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 2)).toNat + 3 * A182581 (3 * n + 2)

end

end A321948.P15993258704398621864

/-! ## A321948.P4542636099063184396

`A257673(A167614(n+2))+A026801(A066099(n+1))`
-/

namespace A321948.P4542636099063184396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 2)).toNat + A026801 (A066099 (n + 1)).toNat

end

end A321948.P4542636099063184396

/-!
# A321949: Column k=4 of triangle A257673.

The programs for A321949, there is no canonical definition to state claims against.
-/

/-! ## A321949.P1388353158082412812

`A257673(A056000(n)+14)`
-/

namespace A321949.P1388353158082412812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A056000 n + 14).toNat

end

end A321949.P1388353158082412812

/-! ## A321949.P2569406417572580411

`A257673(eq[3, A141169(n)])`
-/

namespace A321949.P2569406417572580411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321949.P2569406417572580411

/-! ## A321949.P7669748461166625729

`A257673(eq[4, A002262(n)])`
-/

namespace A321949.P7669748461166625729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321949.P7669748461166625729

/-! ## A321949.P14755521179076261009

`A257673(A133263(n+4)+2)`
-/

namespace A321949.P14755521179076261009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 (n + 4) + 2).toNat

end

end A321949.P14755521179076261009

/-! ## A321949.P14702694789982417325

`A257673(A238531(n+5)+2)`
-/

namespace A321949.P14702694789982417325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A238531 (n + 5) + 2).toNat

end

end A321949.P14702694789982417325

/-! ## A321949.P4477663036854058517

`A257673(A000217(n+4)+4)`
-/

namespace A321949.P4477663036854058517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 (n + 4) + 4).toNat

end

end A321949.P4477663036854058517

/-! ## A321949.P16277824973494205933

`A257673(A055998(n+2)+7)`
-/

namespace A321949.P16277824973494205933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A055998 (n + 2) + 7).toNat

end

end A321949.P16277824973494205933

/-! ## A321949.P6745626952851856234

`A257673(A046691(n+2)+8)`
-/

namespace A321949.P6745626952851856234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A046691 (n + 2) + 8).toNat

end

end A321949.P6745626952851856234

/-! ## A321949.P8271393580405802870

`A257673(A005843(n+5)+A000124(n+2))`
-/

namespace A321949.P8271393580405802870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A005843 (n + 5) + A000124 (n + 2)).toNat

end

end A321949.P8271393580405802870

/-!
# A321950: Column k=5 of triangle A257673.

The programs for A321950, there is no canonical definition to state claims against.
-/

/-! ## A321950.P10902822968758711793

`A257673(A167499(n+4))`
-/

namespace A321950.P10902822968758711793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167499 (n + 4)).toNat

end

end A321950.P10902822968758711793

/-! ## A321950.P653298384875569112

`A257673(A167614(n+4)+2)`
-/

namespace A321950.P653298384875569112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 4) + 2).toNat

end

end A321950.P653298384875569112

/-! ## A321950.P1149975419560861351

`A257673(A133263(n+5)+3)`
-/

namespace A321950.P1149975419560861351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 (n + 5) + 3).toNat

end

end A321950.P1149975419560861351

/-! ## A321950.P18404347340790527414

`A257673(A055998(n+3)+8)`
-/

namespace A321950.P18404347340790527414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A055998 (n + 3) + 8).toNat

end

end A321950.P18404347340790527414

/-! ## A321950.P10341702963936462034

`A257673(eq[6, A002260(n+1)])`
-/

namespace A321950.P10341702963936462034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321950.P10341702963936462034

/-!
# A321951: Column k=6 of triangle A257673.

The programs for A321951, there is no canonical definition to state claims against.
-/

/-! ## A321951.P7784883077285838201

`A257673(eq[6, A002262(n)])`
-/

namespace A321951.P7784883077285838201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321951.P7784883077285838201

/-! ## A321951.P9141353880400543913

`A257673(A133263(n+6)+4)`
-/

namespace A321951.P9141353880400543913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 (n + 6) + 4).toNat

end

end A321951.P9141353880400543913

/-! ## A321951.P12421576736510126346

`A257673(A055998(n+4)+9)`
-/

namespace A321951.P12421576736510126346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A055998 (n + 4) + 9).toNat

end

end A321951.P12421576736510126346

/-! ## A321951.P4216070838264241504

`A257673(Δ[A101853(n+1)]+15)`
-/

namespace A321951.P4216070838264241504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (f1 (n + 1) - f1 n + 15).toNat

end

end A321951.P4216070838264241504

/-! ## A321951.P11343013871320131376

`A257673(A005843(n+8)+A000124(n+4))`
-/

namespace A321951.P11343013871320131376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A005843 (n + 8) + A000124 (n + 4)).toNat

end

end A321951.P11343013871320131376

/-!
# A321952: Column k=7 of triangle A257673.

The programs for A321952, there is no canonical definition to state claims against.
-/

/-! ## A321952.P13580183623913394680

`A257673(A167487(n+6))`
-/

namespace A321952.P13580183623913394680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167487 (n + 6)).toNat

end

end A321952.P13580183623913394680

/-! ## A321952.P10190648072378309707

`A257673(eq[7, A002262(n)])`
-/

namespace A321952.P10190648072378309707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321952.P10190648072378309707

/-! ## A321952.P7062152956891447182

`A257673(eq[13, A141169(n)])`
-/

namespace A321952.P7062152956891447182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321952.P7062152956891447182

/-! ## A321952.P7012351344386951590

`A257673(A055998(n+5)+10)`
-/

namespace A321952.P7012351344386951590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A055998 (n + 5) + 10).toNat

end

end A321952.P7012351344386951590

/-! ## A321952.P16680722418404253655

`A257673(eq[8, A002260(n+1)])`
-/

namespace A321952.P16680722418404253655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321952.P16680722418404253655

/-!
# A321953: Column k=8 of triangle A257673.

The programs for A321953, there is no canonical definition to state claims against.
-/

/-! ## A321953.P755424976840002023

`A257673(A056126(n)+44)`
-/

namespace A321953.P755424976840002023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A056126 n + 44).toNat

end

end A321953.P755424976840002023

/-! ## A321953.P2894945076091681463

`A257673(A000096(n+7)+9)`
-/

namespace A321953.P2894945076091681463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000096 (n + 7) + 9).toNat

end

end A321953.P2894945076091681463

/-! ## A321953.P1401582201816373681

`A257673(A000217(n+8)+8)`
-/

namespace A321953.P1401582201816373681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 (n + 8) + 8).toNat

end

end A321953.P1401582201816373681

/-! ## A321953.P2349413372718079369

`A257673(A133263(n+5)+A008486(n+9))`
-/

namespace A321953.P2349413372718079369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 (n + 5) + A008486 (n + 9)).toNat

end

end A321953.P2349413372718079369

/-! ## A321953.P6304248334116289662

`A257673(A000124(n+8)+8-A033999(n)²)`
-/

namespace A321953.P6304248334116289662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000124 (n + 8) + 8 - A033999 n ^ 2).toNat

end

end A321953.P6304248334116289662

/-!
# A321954: Column k=9 of triangle A257673.

The programs for A321954, there is no canonical definition to state claims against.
-/

/-! ## A321954.P1781101580449773138

`A257673(A167614(n+8)+6)`
-/

namespace A321954.P1781101580449773138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A167614 (n + 8) + 6).toNat

end

end A321954.P1781101580449773138

/-! ## A321954.P16255968787151379640

`A257673(A161680(n+10)+9)`
-/

namespace A321954.P16255968787151379640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A161680 (n + 10) + 9).toNat

end

end A321954.P16255968787151379640

/-! ## A321954.P5109880655022126874

`A257673(A000217(n+10)-(n+1))`
-/

namespace A321954.P5109880655022126874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A321954.P5109880655022126874

/-! ## A321954.P9743993145923883824

`A257673(A000124(n+10)-(n+2))`
-/

namespace A321954.P9743993145923883824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A321954.P9743993145923883824

/-! ## A321954.P12599691110095971772

`A257673(A179865(n+4)+A008458(n+8))`
-/

namespace A321954.P12599691110095971772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A179865 (n + 4) + A008458 (n + 8)).toNat

end

end A321954.P12599691110095971772

/-! ## A321954.P2694059174770037695

`A257673(A020723(n)+A000217(n+8)+9)`
-/

namespace A321954.P2694059174770037695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A020723 n + (A000217 (n + 8) + 9)).toNat

end

end A321954.P2694059174770037695

/-!
# A321955: Column k=10 of triangle A257673.

The programs for A321955, there is no canonical definition to state claims against.
-/

/-! ## A321955.P8088041424570055541

`A257673(eq[10, A002262(n)])`
-/

namespace A321955.P8088041424570055541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321955.P8088041424570055541

/-! ## A321955.P7756717156268480989

`A257673(A055998(n+8)+13)`
-/

namespace A321955.P7756717156268480989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A055998 (n + 8) + 13).toNat

end

end A321955.P7756717156268480989

/-! ## A321955.P724137553385191145

`A257673(eq[11, A002260(n+1)])`
-/

namespace A321955.P724137553385191145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321955.P724137553385191145

/-! ## A321955.P9933857933089550494

`A257673(eq[11, A134868(n+1)])`
-/

namespace A321955.P9933857933089550494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321955.P9933857933089550494

/-! ## A321955.P556223176749974377

`A257673(A000124(n+11)-(n+2))`
-/

namespace A321955.P556223176749974377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A321955.P556223176749974377

/-!
# A321957: a(n) = binomial(3*n, n + 1)*hypergeom([1, 1 - 2*n], [2 + n], -1).

The programs for A321957, the canonical program `A321957.P11069985352720129063` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321957 has offset 0).

The definition of A321957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321957.P11069985352720129063

`8^n-A066380(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A321957

/-- `8^n-A066380(n)` -/
def P11069985352720129063.Spec : Prop :=
  ∀ n, P11069985352720129063.a n = A321957 n

theorem P11069985352720129063.correct : P11069985352720129063.Spec := by
  intro n
  simp only [A321957]

end A321957

/-! ## A321957.P9731520598074967474

`A054143(A022267(n))-A005809(n)`
-/

namespace A321957.P9731520598074967474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 (A022267 n).toNat - A005809 n

end

end A321957.P9731520598074967474

namespace A321957

/-- `A054143(A022267(n))-A005809(n)` -/
def P9731520598074967474.Spec : Prop :=
  ∀ n, P9731520598074967474.a n = A321957 n

end A321957

/-! ## A321957.P1200984014139744049

`A008949(A062728(n))-A005809(n)`
-/

namespace A321957.P1200984014139744049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A062728 n).toNat - A005809 n

end

end A321957.P1200984014139744049

namespace A321957

/-- `A008949(A062728(n))-A005809(n)` -/
def P1200984014139744049.Spec : Prop :=
  ∀ n, P1200984014139744049.a n = A321957 n

end A321957

/-! ## A321957.P12584968336401369923

`A055248(A062725(n))-A005809(n)`
-/

namespace A321957.P12584968336401369923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A062725 n).toNat - A005809 n

end

end A321957.P12584968336401369923

namespace A321957

/-- `A055248(A062725(n))-A005809(n)` -/
def P12584968336401369923.Spec : Prop :=
  ∀ n, P12584968336401369923.a n = A321957 n

end A321957

/-! ## A321957.P13871872983069066114

`A055248(A064225(n))*A057427(n)`
-/

namespace A321957.P13871872983069066114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (A064225 n).toNat * A057427 n

end

end A321957.P13871872983069066114

namespace A321957

/-- `A055248(A064225(n))*A057427(n)` -/
def P13871872983069066114.Spec : Prop :=
  ∀ n, P13871872983069066114.a n = A321957 n

end A321957

/-!
# A321958: Sums of antidiagonals of A321960.

The programs for A321958, there is no canonical definition to state claims against.
-/

/-! ## A321958.P15219238992043273840

`A138554(A181014(n+1))+A120567(n+1)`
-/

namespace A321958.P15219238992043273840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A181014 (n + 1)).toNat + A120567 (n + 1)

end

end A321958.P15219238992043273840

/-! ## A321958.P17934732018186845455

`A039708(A317652(n))`
-/

namespace A321958.P17934732018186845455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A317652 n).toNat

end

end A321958.P17934732018186845455

/-! ## A321958.P13195016818992180483

`A371587(A149052(n))`
-/

namespace A321958.P13195016818992180483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A149052 n).toNat

end

end A321958.P13195016818992180483

/-!
# A321959: a(n) = [x^n] ((1 - x)*x)/((1 - 2*x)^2*(2*x^2 - 2*x + 1)).

The programs for A321959, the canonical program `A321959.P7933905322397432424` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321959 has offset 0).

The definition of A321959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321959.P7933905322397432424

`A339252(n)-A135035(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321959

/-- `A339252(n)-A135035(n)` -/
def P7933905322397432424.Spec : Prop :=
  ∀ n, P7933905322397432424.a n = A321959 n

theorem P7933905322397432424.correct : P7933905322397432424.Spec := by
  intro n
  simp only [A321959]

end A321959

/-! ## A321959.P2576668669916764452

`A001787(n)+∑[A038505(n)]`
-/

namespace A321959.P2576668669916764452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321959.P2576668669916764452

namespace A321959

/-- `A001787(n)+∑[A038505(n)]` -/
def P2576668669916764452.Spec : Prop :=
  ∀ n, P2576668669916764452.a n = A321959 n

end A321959

/-! ## A321959.P11308614768864705226

`A001792(n)-∑[A038503(n)]`
-/

namespace A321959.P11308614768864705226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321959.P11308614768864705226

namespace A321959

/-- `A001792(n)-∑[A038503(n)]` -/
def P11308614768864705226.Spec : Prop :=
  ∀ n, P11308614768864705226.a n = A321959 n

end A321959

/-! ## A321959.P2115582595147137315

`A001787(n)+A000749(n+1)`
-/

namespace A321959.P2115582595147137315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + A000749 (n + 1)

end

end A321959.P2115582595147137315

namespace A321959

/-- `A001787(n)+A000749(n+1)` -/
def P2115582595147137315.Spec : Prop :=
  ∀ n, P2115582595147137315.a n = A321959 n

end A321959

/-! ## A321959.P6592194520992197612

`A001792(n)-A038504(n+1)`
-/

namespace A321959.P6592194520992197612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A038504 (n + 1)

end

end A321959.P6592194520992197612

namespace A321959

/-- `A001792(n)-A038504(n+1)` -/
def P6592194520992197612.Spec : Prop :=
  ∀ n, P6592194520992197612.a n = A321959 n

end A321959

/-! ## A321959.P3142215860526321682

`A323225(n+1)-A099087(n)`
-/

namespace A321959.P3142215860526321682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 1) - A099087 n

end

end A321959.P3142215860526321682

namespace A321959

/-- `A323225(n+1)-A099087(n)` -/
def P3142215860526321682.Spec : Prop :=
  ∀ n, P3142215860526321682.a n = A321959 n

end A321959

/-! ## A321959.P12815637537762999760

`A323225(n+1)-A009545(n+1)`
-/

namespace A321959.P12815637537762999760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323225 (n + 1) - A009545 (n + 1)

end

end A321959.P12815637537762999760

namespace A321959

/-- `A323225(n+1)-A009545(n+1)` -/
def P12815637537762999760.Spec : Prop :=
  ∀ n, P12815637537762999760.a n = A321959 n

end A321959

/-! ## A321959.P8204722121854809639

`A132402(n+1)-A038505(n+3)`
-/

namespace A321959.P8204722121854809639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132402 (n + 1) - A038505 (n + 3)

end

end A321959.P8204722121854809639

namespace A321959

/-- `A132402(n+1)-A038505(n+3)` -/
def P8204722121854809639.Spec : Prop :=
  ∀ n, P8204722121854809639.a n = A321959 n

end A321959

/-! ## A321959.P10456434901086183451

`A000749(n+1)+n*A158780(2*n)`
-/

namespace A321959.P10456434901086183451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) + (n : ℤ) * A158780 (2 * n)

end

end A321959.P10456434901086183451

namespace A321959

/-- `A000749(n+1)+n*A158780(2*n)` -/
def P10456434901086183451.Spec : Prop :=
  ∀ n, P10456434901086183451.a n = A321959 n

end A321959

/-! ## A321959.P13835029992435733466

`A038504(n+1)+A001787(n)-A009545(n+1)`
-/

namespace A321959.P13835029992435733466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) + (A001787 n - A009545 (n + 1))

end

end A321959.P13835029992435733466

namespace A321959

/-- `A038504(n+1)+A001787(n)-A009545(n+1)` -/
def P13835029992435733466.Spec : Prop :=
  ∀ n, P13835029992435733466.a n = A321959 n

end A321959

/-! ## A321959.P6038848395578262552

`A132402(n+1)-(A009545(n+1)+A000079(n+1))`
-/

namespace A321959.P6038848395578262552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132402 (n + 1) - (A009545 (n + 1) + A000079 (n + 1))

end

end A321959.P6038848395578262552

namespace A321959

/-- `A132402(n+1)-(A009545(n+1)+A000079(n+1))` -/
def P6038848395578262552.Spec : Prop :=
  ∀ n, P6038848395578262552.a n = A321959 n

end A321959

/-! ## A321959.P221467320671898445

`A001787(n+1)-A323225(n+1)`
-/

namespace A321959.P221467320671898445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A323225 (n + 1)

end

end A321959.P221467320671898445

namespace A321959

/-- `A001787(n+1)-A323225(n+1)` -/
def P221467320671898445.Spec : Prop :=
  ∀ n, P221467320671898445.a n = A321959 n

end A321959

/-! ## A321959.P1881450621549534022

`(A001787(n+1)-A009545(n+1))/2`
-/

namespace A321959.P1881450621549534022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) - A009545 (n + 1) : ℚ) / 2

end

end A321959.P1881450621549534022

namespace A321959

/-- `(A001787(n+1)-A009545(n+1))/2` -/
def P1881450621549534022.Spec : Prop :=
  ∀ n, P1881450621549534022.a n = (A321959 n : ℚ)

end A321959

/-! ## A321959.P3412512645879419740

`A001787(n+1)-(A038504(n+1)+A001787(n))`
-/

namespace A321959.P3412512645879419740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - (A038504 (n + 1) + A001787 n)

end

end A321959.P3412512645879419740

namespace A321959

/-- `A001787(n+1)-(A038504(n+1)+A001787(n))` -/
def P3412512645879419740.Spec : Prop :=
  ∀ n, P3412512645879419740.a n = A321959 n

end A321959

/-! ## A321959.P14702103249947061249

`(A099855(n+1)-A001787(n+1))/2`
-/

namespace A321959.P14702103249947061249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099855 (n + 1) - A001787 (n + 1) : ℚ) / 2

end

end A321959.P14702103249947061249

namespace A321959

/-- `(A099855(n+1)-A001787(n+1))/2` -/
def P14702103249947061249.Spec : Prop :=
  ∀ n, P14702103249947061249.a n = (A321959 n : ℚ)

end A321959

/-! ## A321959.P15714232717528377108

`2*(2*(n+1)*a(n-3)-(3*n+2)*a(n-2)+(2*n+1)*a(n-1))/n` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A321959.P15714232717528377108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  2 * (((2 * (n + 1) : ℚ) * a (n - 3) - (3 * n + 2 : ℚ) * a (n - 2) + (2 * n + 1 : ℚ) * a (n - 1)) / (n : ℚ))

end

end A321959.P15714232717528377108

namespace A321959

/-- `2*(2*(n+1)*a(n-3)-(3*n+2)*a(n-2)+(2*n+1)*a(n-1))/n` -/
def P15714232717528377108.Spec : Prop :=
  ∀ n, P15714232717528377108.a n = (A321959 n : ℚ)

end A321959

/-!
# A321960: Array of sequences read by descending antidiagonals, A(n) the Jacobi square of the sequence n, n+1, n+2, ....

The programs for A321960, there is no canonical definition to state claims against.
-/

/-! ## A321960.P13418282477001994378

`A189233(n)-A008611(A027023(A101856(n+1)))`
-/

namespace A321960.P13418282477001994378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n - A008611 (A027023 (A101856 (n + 1)).toNat).toNat

end

end A321960.P13418282477001994378

/-! ## A321960.P2661641891610122696

`A189233(n)+A178798(A120059(n))`
-/

namespace A321960.P2661641891610122696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n + A178798 (A120059 n).toNat

end

end A321960.P2661641891610122696

/-! ## A321960.P1295137113570670101

`A189233(n)-A124761(A091867(n))`
-/

namespace A321960.P1295137113570670101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n - A124761 (A091867 n).toNat

end

end A321960.P1295137113570670101

/-! ## A321960.P11577019799323741908

`A189233(n)-A352727(A145592(n+3))`
-/

namespace A321960.P11577019799323741908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 n - A352727 (A145592 (n + 3)).toNat

end

end A321960.P11577019799323741908

/-!
# A321961: Sums of antidiagonals of A321964.

The programs for A321961, there is no canonical definition to state claims against.
-/

/-! ## A321961.P14609537606925211807

`A056155((n+1)^(n-1))`
-/

namespace A321961.P14609537606925211807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A321961.P14609537606925211807

/-! ## A321961.P14207444775535575773

`ceil((A350680(n)+∑[n])/3)`
-/

namespace A321961.P14207444775535575773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350680 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 3⌉

end

end A321961.P14207444775535575773

/-!
# A321963: Stieltjes generated from the sequence m, m+1, m+2, m+3, .... where m = 4.

The programs for A321963, there is no canonical definition to state claims against.
-/

/-! ## A321963.P3589644851722946632

`A127059(n)/3`
-/

namespace A321963.P3589644851722946632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127059 n : ℚ) / 3

end

end A321963.P3589644851722946632

/-! ## A321963.P10019335014416171627

`A127058(A055998(n)+5)/3`
-/

namespace A321963.P10019335014416171627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127058 (A055998 n + 5).toNat : ℚ) / 3

end

end A321963.P10019335014416171627

/-! ## A321963.P2719353106166469273

`A127058(A046691(n)+6)/3`
-/

namespace A321963.P2719353106166469273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127058 (A046691 n + 6).toNat : ℚ) / 3

end

end A321963.P2719353106166469273

/-! ## A321963.P13173216468899713072

`A127058(eq[2, A002262(n)])/3`
-/

namespace A321963.P13173216468899713072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 3

end

end A321963.P13173216468899713072

/-! ## A321963.P17683337485032122103

`A127058(eq[2, A233543(n)])/3`
-/

namespace A321963.P17683337485032122103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 3

end

end A321963.P17683337485032122103

/-!
# A321964: Array of sequences read by descending antidiagonals, row A(n) is Stieltjes generated from the sequence n, n+1, n+2, n+3, ....

The programs for A321964, there is no canonical definition to state claims against.
-/

/-! ## A321964.P18013033229102777392

`A341618(A282275(n+1))+A111106(n)`
-/

namespace A321964.P18013033229102777392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (A282275 (n + 1)).toNat + A111106 n

end

end A321964.P18013033229102777392

/-! ## A321964.P5062286023680949040

`A185037(A133713(n+2))+A111106(n)`
-/

namespace A321964.P5062286023680949040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (A133713 (n + 2)).toNat + A111106 n

end

end A321964.P5062286023680949040

/-! ## A321964.P6261198215891226685

`A349971(A038722(n+1))%A099006(n+1)`
-/

namespace A321964.P6261198215891226685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349971 (A038722 (n + 1)).toNat) (A099006 (n + 1))

end

end A321964.P6261198215891226685

/-! ## A321964.P17494917919494165450

`A089843(A113081(n))`
-/

namespace A321964.P17494917919494165450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A113081 n).toNat

end

end A321964.P17494917919494165450

/-! ## A321964.P16935593507031505499

`A157873(A122538(n))`
-/

namespace A321964.P16935593507031505499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157873 (A122538 n).toNat

end

end A321964.P16935593507031505499

/-!
# A321965: a(n) = n! [x^n] exp((1/(x - 1)^2 - 1)/2)/(1 - x).

The programs for A321965, there is no canonical definition to state claims against.
-/

/-! ## A321965.P4955678477079970537

`A049376(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A321965.P4955678477079970537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049376 n + (n : ℤ) * a (n - 1)

end

end A321965.P4955678477079970537

/-! ## A321965.P18379582519804031001

`A291709(∑[n+4]+2)+n*a(n-1)` with `a(0)=1`
-/

namespace A321965.P18379582519804031001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291709 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + (n : ℤ) * a (n - 1)

end

end A321965.P18379582519804031001

/-!
# A321966: Triangle read by rows, coefficients of a family of orthogonal polynomials, T(n, k) for 0 <= k <= n.

The programs for A321966, there is no canonical definition to state claims against.
-/

/-! ## A321966.P6711119952636916320

`A094587(n)*A114164(n)/A130321(n)`
-/

namespace A321966.P6711119952636916320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 n * A114164 n : ℚ) / (A130321 n : ℚ)

end

end A321966.P6711119952636916320

/-!
# A321968: a(n) = 2^n*n!*[x^n] -sqrt(exp(LambertW(-x)))*(LambertW(-x) + 1).

The programs for A321968, there is no canonical definition to state claims against.
-/

/-! ## A321968.P5098554941465226962

`(4*n-1)*(2*n-1)^(n-2)`
-/

namespace A321968.P5098554941465226962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - 1 : ℚ) * ((2 * n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A321968.P5098554941465226962

/-!
# A321970: Numbers k such that 7^k ends with k.

The programs for A321970, there is no canonical definition to state claims against.
-/

/-! ## A321970.P14110542382023099968

`∑[A133617(n)*10^n]`
-/

namespace A321970.P14110542382023099968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133617 n * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321970.P14110542382023099968

/-! ## A321970.P13710011614461712832

`∑[A011557(n)*A133617(n)]`
-/

namespace A321970.P13710011614461712832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A133617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321970.P13710011614461712832

/-!
# A321972: Numbers k for which A048198(k)=3.

The programs for A321972, the canonical program `A321972.P12146900222167262804` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321972 has offset 1).

The definition of A321972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321972.P12146900222167262804

`lt[2, A048198(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321972

/-- `lt[2, A048198(n)]` -/
def P12146900222167262804.Spec : Prop :=
  ∀ n, (P12146900222167262804.a n : ℤ) = A321972 (n + 1)

theorem P12146900222167262804.correct : P12146900222167262804.Spec := by
  intro n
  simp only [A321972, Nat.add_sub_cancel]

end A321972

/-! ## A321972.P8532858444725863106

`eq[3, A048198(char[1]+n)]`
-/

namespace A321972.P8532858444725863106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 ((if ∃ j, f3 j = n then 1 else 0) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321972.P8532858444725863106

namespace A321972

/-- `eq[3, A048198(char[1]+n)]` -/
def P8532858444725863106.Spec : Prop :=
  ∀ n, (P8532858444725863106.a n : ℤ) = A321972 (n + 1)

end A321972

/-! ## A321972.P16433537320106160621

`A000027(eq[3, A048198(n)])`
-/

namespace A321972.P16433537320106160621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321972.P16433537320106160621

namespace A321972

/-- `A000027(eq[3, A048198(n)])` -/
def P16433537320106160621.Spec : Prop :=
  ∀ n, P16433537320106160621.a n = A321972 (n + 1)

end A321972

/-! ## A321972.P7920674560729151990

`A028310(eq[3, A048198(n)])`
-/

namespace A321972.P7920674560729151990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321972.P7920674560729151990

namespace A321972

/-- `A028310(eq[3, A048198(n)])` -/
def P7920674560729151990.Spec : Prop :=
  ∀ n, P7920674560729151990.a n = A321972 (n + 1)

end A321972

/-! ## A321972.P12594412176400817279

`eq[A048198(n), A122553(n)]`
-/

namespace A321972.P12594412176400817279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048198 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A321972.P12594412176400817279

namespace A321972

/-- `eq[A048198(n), A122553(n)]` -/
def P12594412176400817279.Spec : Prop :=
  ∀ n, (P12594412176400817279.a n : ℤ) = A321972 (n + 1)

end A321972

/-!
# A321973: Partial sums of the Dedekind psi_2(k) function, for 1 <= k <= n.

The programs for A321973, the canonical program `A321973.P5994535555167239999` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321973 has offset 0).

The definition of A321973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321973.P5994535555167239999

`∑[∑{d}[∏{p}[n, #], (n/#)²]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321973

/-- `∑[∑{d}[∏{p}[n, #], (n/#)²]]` -/
def P5994535555167239999.Spec : Prop :=
  ∀ n, P5994535555167239999.a n = (A321973 n : ℚ)

end A321973

/-! ## A321973.P8641119900019834134

`∑[A065958(A028310(n))]-1`
-/

namespace A321973.P8641119900019834134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A321973.P8641119900019834134

namespace A321973

/-- `∑[A065958(A028310(n))]-1` -/
def P8641119900019834134.Spec : Prop :=
  ∀ n, P8641119900019834134.a n = A321973 n

end A321973

/-! ## A321973.P5663766686151598319

`∑[A065958(n+1)]-A065958(n+1)`
-/

namespace A321973.P5663766686151598319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A065958 (n + 1)

end

end A321973.P5663766686151598319

namespace A321973

/-- `∑[A065958(n+1)]-A065958(n+1)` -/
def P5663766686151598319.Spec : Prop :=
  ∀ n, P5663766686151598319.a n = A321973 n

end A321973

/-! ## A321973.P13447173805425380187

`∑[A057427(n)*A065958(A028310(n))]`
-/

namespace A321973.P13447173805425380187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A065958 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321973.P13447173805425380187

namespace A321973

/-- `∑[A057427(n)*A065958(A028310(n))]` -/
def P13447173805425380187.Spec : Prop :=
  ∀ n, P13447173805425380187.a n = A321973 n

end A321973

/-! ## A321973.P5621992382494583178

`∑[A065958(A028310(n))%A000716(n)]`
-/

namespace A321973.P5621992382494583178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065958 (A028310 n).toNat) (A000716 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321973.P5621992382494583178

namespace A321973

/-- `∑[A065958(A028310(n))%A000716(n)]` -/
def P5621992382494583178.Spec : Prop :=
  ∀ n, P5621992382494583178.a n = A321973 n

end A321973

/-!
# A321974: Expansion of e.g.f. exp(exp(x)/(1 - x) - 1).

The programs for A321974, there is no canonical definition to state claims against.
-/

/-! ## A321974.P7035150466510280524

`A069345(A305990(n))-A022559(n)`
-/

namespace A321974.P7035150466510280524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A305990 n).toNat - A022559 n

end

end A321974.P7035150466510280524

/-! ## A321974.P662063581768692794

`A028310(A305990(n)-A191985(n+1))`
-/

namespace A321974.P662063581768692794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A305990 n - A191985 (n + 1)).toNat

end

end A321974.P662063581768692794

/-!
# A321975: 6-dimensional Catalan numbers.

The programs for A321975, there is no canonical definition to state claims against.
-/

/-! ## A321975.P8896244830383586922

`A060854(A000124(n+4)+5)`
-/

namespace A321975.P8896244830383586922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (A000124 (n + 4) + 5).toNat

end

end A321975.P8896244830383586922

/-! ## A321975.P12004850573997004156

`A060854(A027379(n+2)+9)`
-/

namespace A321975.P12004850573997004156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (A027379 (n + 2) + 9).toNat

end

end A321975.P12004850573997004156

/-! ## A321975.P8637434107644534312

`A060854(∑[n+5]+5)`
-/

namespace A321975.P8637434107644534312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A321975.P8637434107644534312

/-! ## A321975.P16427784754622888352

`A290252(A175165(n))`
-/

namespace A321975.P16427784754622888352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A175165 n).toNat

end

end A321975.P16427784754622888352

/-! ## A321975.P14016046763144377546

`A290252(2*A175164(n))`
-/

namespace A321975.P14016046763144377546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (2 * A175164 n).toNat

end

end A321975.P14016046763144377546

/-!
# A321976: 7-dimensional Catalan numbers.

The programs for A321976, there is no canonical definition to state claims against.
-/

/-! ## A321976.P7446128350990784555

`A060854(A000124(n+5)+6)`
-/

namespace A321976.P7446128350990784555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (A000124 (n + 5) + 6).toNat

end

end A321976.P7446128350990784555

/-! ## A321976.P7916085405692358223

`A290252(A175166(n))`
-/

namespace A321976.P7916085405692358223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A175166 n).toNat

end

end A321976.P7916085405692358223

/-! ## A321976.P8625559532472457391

`A290252(2*A175165(n))`
-/

namespace A321976.P8625559532472457391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (2 * A175165 n).toNat

end

end A321976.P8625559532472457391

/-!
# A321977: 8-dimensional Catalan numbers.

The programs for A321977, there is no canonical definition to state claims against.
-/

/-! ## A321977.P9011810025458113586

`A060854(A000096(n+5)+9)`
-/

namespace A321977.P9011810025458113586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (A000096 (n + 5) + 9).toNat

end

end A321977.P9011810025458113586

/-! ## A321977.P4691000123671068709

`A060854(eq[6, A025581(n)])`
-/

namespace A321977.P4691000123671068709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321977.P4691000123671068709

/-! ## A321977.P2538116385900366894

`A290252(2*2*A175165(n))`
-/

namespace A321977.P2538116385900366894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (2 * (2 * A175165 n)).toNat

end

end A321977.P2538116385900366894

/-!
# A321978: 9-dimensional Catalan numbers.

The programs for A321978, there is no canonical definition to state claims against.
-/

/-! ## A321978.P425835522000535378

`A060854(A155212(n+4))`
-/

namespace A321978.P425835522000535378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (A155212 (n + 4)).toNat

end

end A321978.P425835522000535378

/-!
# A321979: Number of e-positive simple labeled graphs on n vertices.

The programs for A321979, there is no canonical definition to state claims against.
-/

/-! ## A321979.P8201890350918084851

`floor(A153532(n)/2^n)`
-/

namespace A321979.P8201890350918084851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153532 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A321979.P8201890350918084851

/-!
# A321980: Row n gives the chromatic symmetric function of the n-path, expanded in terms of elementary symmetric functions and ordered by Heinz number.

The programs for A321980, there is no canonical definition to state claims against.
-/

/-! ## A321980.P10963067646391807018

`A330368(n+1)+A000188(A080107(n))`
-/

namespace A321980.P10963067646391807018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330368 (n + 1) + A000188 (A080107 n).toNat

end

end A321980.P10963067646391807018

/-! ## A321980.P16021847044165278

`A336811(n+2)-A228812(A267383(3*n+2))`
-/

namespace A321980.P16021847044165278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (n + 2) - A228812 (A267383 (3 * n + 2)).toNat

end

end A321980.P16021847044165278

/-! ## A321980.P9562697851377395418

`A185914(A160755(n+1)%A019276(2*(n+1)))`
-/

namespace A321980.P9562697851377395418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (Int.tmod (A160755 (n + 1)) (A019276 (2 * (n + 1)))).toNat

end

end A321980.P9562697851377395418

/-! ## A321980.P16169172607149273033

`A126307(A000048(n))+A105805(n+1)`
-/

namespace A321980.P16169172607149273033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126307 (A000048 n).toNat + A105805 (n + 1)

end

end A321980.P16169172607149273033

/-! ## A321980.P15252311536943910436

`A135818(n+3)%A083947(A002478(n))`
-/

namespace A321980.P15252311536943910436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135818 (n + 3)) (A083947 (A002478 n).toNat)

end

end A321980.P15252311536943910436

/-!
# A321985: Numbers m such that m^2+1 is semiprime with (m-1)^2+1 and (m+1)^2+1 primes.

The programs for A321985, there is no canonical definition to state claims against.
-/

/-! ## A321985.P7807549077614436611

`∩[A082612(n+1), A108814(n+1)]`
-/

namespace A321985.P7807549077614436611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P7807549077614436611

/-! ## A321985.P8737784766298363913

`∩[A082612(n+1), A102751(n+1)]`
-/

namespace A321985.P8737784766298363913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P8737784766298363913

/-! ## A321985.P12681009553098763250

`∩[A102751(n+1), A108814(n+1)]`
-/

namespace A321985.P12681009553098763250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P12681009553098763250

/-! ## A321985.P1259418162136479767

`∩[A082612(n+1), A089593(n+1)]`
-/

namespace A321985.P1259418162136479767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P1259418162136479767

/-! ## A321985.P8078291324433104812

`∩[A082612(n+1), A090693(n+1)]`
-/

namespace A321985.P8078291324433104812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P8078291324433104812

/-! ## A321985.P3038966399945787096

`∩[A089593(n+1), A102751(n+1)]`
-/

namespace A321985.P3038966399945787096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P3038966399945787096

/-! ## A321985.P2012964651986233860

`∩[A002731(n+1), A082612(n+1)]`
-/

namespace A321985.P2012964651986233860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P2012964651986233860

/-! ## A321985.P12053885969681905271

`∩[A002731(n+1), A108814(n+1)]`
-/

namespace A321985.P12053885969681905271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P12053885969681905271

/-! ## A321985.P17314662658852695229

`∩[A108814(n+1), A385821(n+1)]`
-/

namespace A321985.P17314662658852695229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P17314662658852695229

/-! ## A321985.P9904834361030482413

`∩[A082612(n+1), A281505(n+1)]`
-/

namespace A321985.P9904834361030482413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321985.P9904834361030482413

/-!
# A321986: Number of integer pairs (x,y) with x+y < 3*n/4, x-y < 3*n/4 and -x/2 < y < 2*x.

The programs for A321986, the canonical program `A321986.P8089444165395826572` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321986 has offset 0).

The definition of A321986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A321986.P8089444165395826572

`∪[∑[9*n-3]+4, ∑[n]]-n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A321986

/-- `∪[∑[9*n-3]+4, ∑[n]]-n` -/
def P8089444165395826572.Spec : Prop :=
  ∀ n, P8089444165395826572.a n = A321986 n

theorem P8089444165395826572.correct : P8089444165395826572.Spec := by
  intro n
  simp only [A321986]

end A321986

/-! ## A321986.P17246500026865446670

`abs(∪[∑[n], A038764(n)]-n)`
-/

namespace A321986.P17246500026865446670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - (n : ℤ)|

end

end A321986.P17246500026865446670

namespace A321986

/-- `abs(∪[∑[n], A038764(n)]-n)` -/
def P17246500026865446670.Spec : Prop :=
  ∀ n, P17246500026865446670.a n = A321986 n

end A321986

/-! ## A321986.P16795559140095982353

`∪[∑[n], A038764(n)]+1-A000027(n+1)`
-/

namespace A321986.P16795559140095982353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n + 1 : ℤ) - A000027 (n + 1)

end

end A321986.P16795559140095982353

namespace A321986

/-- `∪[∑[n], A038764(n)]+1-A000027(n+1)` -/
def P16795559140095982353.Spec : Prop :=
  ∀ n, P16795559140095982353.a n = A321986 n

end A321986

/-! ## A321986.P1524619253514773537

`(∪[A000217(n), A038764(n)]-n)%A277082(n+1)`
-/

namespace A321986.P1524619253514773537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)) (A277082 (n + 1))

end

end A321986.P1524619253514773537

namespace A321986

/-- `(∪[A000217(n), A038764(n)]-n)%A277082(n+1)` -/
def P1524619253514773537.Spec : Prop :=
  ∀ n, P1524619253514773537.a n = A321986 n

end A321986

/-! ## A321986.P5196736267448971807

`(∪[∑[n], A038764(n)]-n)%A273208(n)`
-/

namespace A321986.P5196736267448971807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n : ℤ) - (n : ℤ)) (A273208 n)

end

end A321986.P5196736267448971807

namespace A321986

/-- `(∪[∑[n], A038764(n)]-n)%A273208(n)` -/
def P5196736267448971807.Spec : Prop :=
  ∀ n, P5196736267448971807.a n = A321986 n

end A321986

/-! ## A321986.P7035187400219042072

`A005843(∪[∑[n], A038764(n)]-n)/2`
-/

namespace A321986.P7035187400219042072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n - n) : ℚ) / 2

end

end A321986.P7035187400219042072

namespace A321986

/-- `A005843(∪[∑[n], A038764(n)]-n)/2` -/
def P7035187400219042072.Spec : Prop :=
  ∀ n, P7035187400219042072.a n = (A321986 n : ℚ)

end A321986

/-! ## A321986.P16432727201308150081

`eq[A000007(n), A348191(n)]-n`
-/

namespace A321986.P16432727201308150081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A321986.P16432727201308150081

namespace A321986

/-- `eq[A000007(n), A348191(n)]-n` -/
def P16432727201308150081.Spec : Prop :=
  ∀ n, P16432727201308150081.a n = A321986 n

end A321986

/-! ## A321986.P5849270591672994572

`A001489(n)+eq[A000007(n), A348191(n)]`
-/

namespace A321986.P5849270591672994572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A321986.P5849270591672994572

namespace A321986

/-- `A001489(n)+eq[A000007(n), A348191(n)]` -/
def P5849270591672994572.Spec : Prop :=
  ∀ n, P5849270591672994572.a n = A321986 n

end A321986

/-! ## A321986.P17196288262040536729

`A024000(n+1)+eq[A000007(n), A348191(n)]`
-/

namespace A321986.P17196288262040536729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A321986.P17196288262040536729

namespace A321986

/-- `A024000(n+1)+eq[A000007(n), A348191(n)]` -/
def P17196288262040536729.Spec : Prop :=
  ∀ n, P17196288262040536729.a n = A321986 n

end A321986

/-! ## A321986.P10068733552499232300

`A001057(2*n)+eq[A000007(n), A348191(n)]`
-/

namespace A321986.P10068733552499232300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A321986.P10068733552499232300

namespace A321986

/-- `A001057(2*n)+eq[A000007(n), A348191(n)]` -/
def P10068733552499232300.Spec : Prop :=
  ∀ n, P10068733552499232300.a n = A321986 n

end A321986

/-!
# A321988: Number of integer triples (x,y,z) with x,y,z>0 and 4*x+6*y+3*n*z < 12*n.

The programs for A321988, there is no canonical definition to state claims against.
-/

/-! ## A321988.P10470394462198282613

`A003056(A004611(n+1)*A238742(n+1))`
-/

namespace A321988.P10470394462198282613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004611 (n + 1) * A238742 (n + 1)).toNat

end

end A321988.P10470394462198282613

/-!
# A321989: Expansion of e.g.f. exp(exp(-x)/(1 - x) - 1).

The programs for A321989, there is no canonical definition to state claims against.
-/

/-! ## A321989.P9522480702000670725

`A005843(A226226(n))-A345697(n)`
-/

namespace A321989.P9522480702000670725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A226226 n).toNat - A345697 n

end

end A321989.P9522480702000670725

/-! ## A321989.P10890054056346552229

`A005843(A347571(n))-A327006(n+1)`
-/

namespace A321989.P10890054056346552229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A347571 n).toNat - A327006 (n + 1)

end

end A321989.P10890054056346552229

/-! ## A321989.P7184603694141631107

`A226226(n)-A090030(A007111(n))`
-/

namespace A321989.P7184603694141631107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226226 n - A090030 (A007111 n).toNat

end

end A321989.P7184603694141631107

/-!
# A321990: Positive numbers for which the product of digits is equal to the power tower of digits (right-associative).

The programs for A321990, there is no canonical definition to state claims against.
-/

/-! ## A321990.P12841385351429448591

`∩[A062996(n+1), A096106(n+1)]`
-/

namespace A321990.P12841385351429448591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321990.P12841385351429448591

/-! ## A321990.P14135245579684058903

`∩[A096106(n+1), A254621(n+1)]`
-/

namespace A321990.P14135245579684058903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321990.P14135245579684058903

/-!
# A321993: Numbers having less than 3 unique partitions into exactly 3 parts with the same product: complement of A119028.

The programs for A321993, there is no canonical definition to state claims against.
-/

/-! ## A321993.P6517453015689270298

`comp[A119028(n+1)-1]+1`
-/

namespace A321993.P6517453015689270298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119028 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A321993.P6517453015689270298

/-! ## A321993.P178451347441970056

`∑[A008618(Δ[A089238(n+1)])]`
-/

namespace A321993.P178451347441970056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089238 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321993.P178451347441970056

/-! ## A321993.P2777259798046199461

`lt[A318997(n+1), A073813(A318981(n+1))]`
-/

namespace A321993.P2777259798046199461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073813 (A318981 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321993.P2777259798046199461

/-! ## A321993.P794664634467381619

`lt[A336517(A107834(n+1)), A036236(3*n+1)]`
-/

namespace A321993.P794664634467381619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336517 (A107834 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A321993.P794664634467381619

/-! ## A321993.P11954695106948357387

`lt[A154305(n+2), 86*n]`
-/

namespace A321993.P11954695106948357387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154305 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  86 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A321993.P11954695106948357387

/-! ## A321993.P12863655843104434378

`lt[A154305(n+2)/A147991(n+1), n]`
-/

namespace A321993.P12863655843104434378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154305 (n + 2) : ℚ) / (A147991 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A321993.P12863655843104434378

/-!
# A321994: Number of different chromatic symmetric functions of hypertrees on n vertices.

The programs for A321994, there is no canonical definition to state claims against.
-/

/-! ## A321994.P7246874665798144584

`ceil(sqrt((1/Δ[sqrt(n)])^(n-1)))`
-/

namespace A321994.P7246874665798144584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((1 / (f1 (n + 1) - f1 n)) ^ ((n : ℤ) - 1 : ℤ))⌉

end

end A321994.P7246874665798144584

/-! ## A321994.P18404498017064081942

`round((1/2+n)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A321994.P18404498017064081942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 2 + (n : ℚ)) * (a (n - 2) : ℚ))

end

end A321994.P18404498017064081942

/-! ## A321994.P18094018825235977418

`round(a(n-2)*Δ[n²]/2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A321994.P18094018825235977418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2)

end

end A321994.P18094018825235977418

/-! ## A321994.P9120020375822619460

`A035053(n+1)`
-/

namespace A321994.P9120020375822619460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 (n + 1)

end

end A321994.P9120020375822619460

/-!
# A321995: Indices of highly composite numbers A002182 which are between a twin prime pair.

The programs for A321995, there is no canonical definition to state claims against.
-/

/-! ## A321995.P8823335934696914766

`∩[A306587(n+1), A306588(n+1)]`
-/

namespace A321995.P8823335934696914766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A321995.P8823335934696914766

/-! ## A321995.P5905281265486234296

`eq[2, A339385(n+2)]+2`
-/

namespace A321995.P5905281265486234296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339385 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A321995.P5905281265486234296

/-! ## A321995.P3568535699997586005

`A009056(eq[2, A339385(n+2)])`
-/

namespace A321995.P3568535699997586005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A321995.P3568535699997586005

/-! ## A321995.P11468388322704869077

`∩[eq[1, A141345(n+1)]+1, A306588(n+1)]`
-/

namespace A321995.P11468388322704869077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141345 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A321995.P11468388322704869077

/-! ## A321995.P14020491737533325444

`eq[2, A339385(A233583(n+1))]`
-/

namespace A321995.P14020491737533325444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339385 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A321995.P14020491737533325444

/-!
# A321996: Numbers that cannot be written using six 6's and operations +, -, * and/or /. Complement of A171829.

The programs for A321996, there is no canonical definition to state claims against.
-/

/-! ## A321996.P7045627134240669946

`comp[A171829(n+1)]`
-/

namespace A321996.P7045627134240669946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A321996.P7045627134240669946

/-!
# A321997: Numbers that cannot be written using seven 7's and operations +, -, * and/or /. Complement of A258068.

The programs for A321997, there is no canonical definition to state claims against.
-/

/-! ## A321997.P4736409906645472475

`comp[A258068(n+1)]`
-/

namespace A321997.P4736409906645472475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A321997.P4736409906645472475

/-! ## A321997.P4791101353107049630

`comp[A258068(A065033(n))-A035363(n)]`
-/

namespace A321997.P4791101353107049630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (A065033 n).toNat - A035363 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A321997.P4791101353107049630

/-! ## A321997.P16323186093254791104

`comp[A258068(A065033(n))%A000009(n)]`
-/

namespace A321997.P16323186093254791104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258068 (A065033 n).toNat) (A000009 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A321997.P16323186093254791104

/-!
# A321998: Numbers that cannot be written using eight 8's and operations +, -, * and/or /. Complement of A258069.

The programs for A321998, there is no canonical definition to state claims against.
-/

/-! ## A321998.P14885391322760669666

`comp[A258069(n+1)]`
-/

namespace A321998.P14885391322760669666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A321998.P14885391322760669666

/-!
# A321999: Sum of digits of n minus the number of digits of n.

The programs for A321999, the canonical program `A321999.P11799069889241874774` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A321999 has offset 0).

The definition of A321999 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004218, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A321999.P11799069889241874774

`A007953(n)-A004218(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A321999

/-- `A007953(n)-A004218(n+1)` -/
def P11799069889241874774.Spec : Prop :=
  ∀ n, P11799069889241874774.a n = A321999 n

theorem P11799069889241874774.correct : P11799069889241874774.Spec := by
  intro n
  simp only [A321999]

end A321999

/-! ## A321999.P12412252946215044077

`round(∑{digits}[n, #-atan(atan(n))])`
-/

namespace A321999.P12412252946215044077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℝ) - Real.arctan (Real.arctan (n : ℝ))).sum

end

end A321999.P12412252946215044077

namespace A321999

/-- `round(∑{digits}[n, #-atan(atan(n))])` -/
def P12412252946215044077.Spec : Prop :=
  ∀ n, P12412252946215044077.a n = A321999 n

end A321999

/-! ## A321999.P3848315019436899728

`1-∑{digits}[10*n, 1-#]`
-/

namespace A321999.P3848315019436899728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A321999.P3848315019436899728

namespace A321999

/-- `1-∑{digits}[10*n, 1-#]` -/
def P3848315019436899728.Spec : Prop :=
  ∀ n, P3848315019436899728.a n = A321999 n

end A321999

/-! ## A321999.P12840708985614255749

`∑{digits}[n, (#-1)%(n+1)]`
-/

namespace A321999.P12840708985614255749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod ((x : ℤ) - 1) (n + 1 : ℤ)).sum

end

end A321999.P12840708985614255749

namespace A321999

/-- `∑{digits}[n, (#-1)%(n+1)]` -/
def P12840708985614255749.Spec : Prop :=
  ∀ n, P12840708985614255749.a n = A321999 n

end A321999

/-! ## A321999.P12804531665219483422

`∑{digits}[n, #-1]+floor(acot(n))`
-/

namespace A321999.P12804531665219483422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) - 1).sum + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A321999.P12804531665219483422

namespace A321999

/-- `∑{digits}[n, #-1]+floor(acot(n))` -/
def P12804531665219483422.Spec : Prop :=
  ∀ n, P12804531665219483422.a n = A321999 n

end A321999

/-! ## A321999.P14976148518714728495

`-∑{digits}[n, ceil(sin(n)²)-#]`
-/

namespace A321999.P14976148518714728495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌈Real.sin (n : ℝ) ^ 2⌉ - (x : ℤ)).sum

end

end A321999.P14976148518714728495

namespace A321999

/-- `-∑{digits}[n, ceil(sin(n)²)-#]` -/
def P14976148518714728495.Spec : Prop :=
  ∀ n, P14976148518714728495.a n = A321999 n

end A321999

/-! ## A321999.P9274551545427354187

`∑{digits}[n, floor(#-n/(n+1))]`
-/

namespace A321999.P9274551545427354187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋).sum

end

end A321999.P9274551545427354187

namespace A321999

/-- `∑{digits}[n, floor(#-n/(n+1))]` -/
def P9274551545427354187.Spec : Prop :=
  ∀ n, P9274551545427354187.a n = A321999 n

end A321999

/-! ## A321999.P5670346213657209057

`∑{digits}[n, #-1]+C(2, n+2)`
-/

namespace A321999.P5670346213657209057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℤ) - 1).sum + (Nat.choose 2 (n + 2) : ℤ)

end

end A321999.P5670346213657209057

namespace A321999

/-- `∑{digits}[n, #-1]+C(2, n+2)` -/
def P5670346213657209057.Spec : Prop :=
  ∀ n, P5670346213657209057.a n = A321999 n

end A321999

/-! ## A321999.P10373942801275252807

`-∑{digits}[A028310(n), 1-#]`
-/

namespace A321999.P10373942801275252807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A321999.P10373942801275252807

namespace A321999

/-- `-∑{digits}[A028310(n), 1-#]` -/
def P10373942801275252807.Spec : Prop :=
  ∀ n, P10373942801275252807.a n = A321999 n

end A321999

